package info.platform.origin;

import graphql.GraphQL;
import graphql.schema.GraphQLCodeRegistry;
import graphql.schema.GraphQLSchema;
import graphql.schema.idl.RuntimeWiring;
import graphql.schema.idl.SchemaGenerator;
import graphql.schema.idl.SchemaParser;
import graphql.schema.idl.TypeDefinitionRegistry;
import org.apache.logging.log4j.Logger;
import org.neo4j.graphql.*;
import org.springframework.core.io.ClassPathResource;
import org.springframework.core.io.Resource;
import org.springframework.stereotype.Service;

import java.io.IOException;
import java.nio.charset.StandardCharsets;
import java.util.HashMap;
import java.util.List;

@Service
public class GraphqlService {

    Logger logger = org.apache.logging.log4j.LogManager.getLogger(GraphqlService.class);

    @javax.annotation.Resource
    private DataFetchingInterceptor dataFetchingInterceptor;

    HashMap<String, GraphQL> graphQLMap = new HashMap<>();
    HashMap<String, Translator> translatorMap = new HashMap<>();

    public GraphQL makeGraphQL(Resource resource) throws IOException {

        if (graphQLMap.containsKey(resource.getFilename())) {
            return graphQLMap.get(resource.getFilename());
        }

        String schema = new String(resource.getInputStream().readAllBytes(), StandardCharsets.UTF_8);

        SchemaParser schemaParser = new SchemaParser();
        TypeDefinitionRegistry neo4jTypeDefinitionRegistry = schemaParser.parse(schema);

        SchemaBuilder schemaBuilder = new SchemaBuilder(neo4jTypeDefinitionRegistry, new SchemaConfig(
                new SchemaConfig.CRUDConfig(),
                new SchemaConfig.CRUDConfig(true, List.of()),
                false, true, SchemaConfig.InputStyle.INPUT_TYPE, true, true));
        schemaBuilder.augmentTypes();

        RuntimeWiring.Builder runtimeWiringBuilder = RuntimeWiring.newRuntimeWiring();
        schemaBuilder.registerTypeNameResolver(runtimeWiringBuilder);
        schemaBuilder.registerScalars(runtimeWiringBuilder);
        GraphQLCodeRegistry.Builder codeRegistryBuilder = GraphQLCodeRegistry.newCodeRegistry();
        schemaBuilder.registerDataFetcher(codeRegistryBuilder, dataFetchingInterceptor);
        runtimeWiringBuilder.codeRegistry(codeRegistryBuilder);

        SchemaGenerator schemaGenerator = new SchemaGenerator();
        GraphQLSchema graphQLSchema = schemaGenerator.makeExecutableSchema(neo4jTypeDefinitionRegistry, runtimeWiringBuilder.build());
        translatorMap.put(resource.getFilename(), new Translator(graphQLSchema));

        GraphQL graphQL = GraphQL.newGraphQL(graphQLSchema).build();

        graphQLMap.put(resource.getFilename(), graphQL);

        return graphQL;
    }

    public GraphQL modifyGraphQL(Resource resource) throws IOException {
        graphQLMap.remove(resource.getFilename());
        graphQLMap.remove(resource.getFilename());
        return makeGraphQL(resource);
    }

    public String queryGraphQL(String fileName, String query) throws IOException, OptimizedQueryException {
        GraphQL graphQL = makeGraphQL(new ClassPathResource(fileName));
        Translator translator = translatorMap.get(fileName);
        logger.log(org.apache.logging.log4j.Level.INFO,
                "Cypher query: " + translator.translate(query));
        return graphQL.execute(query).getData().toString();
    }

}
