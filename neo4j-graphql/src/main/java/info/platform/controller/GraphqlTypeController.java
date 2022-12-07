package info.platform.controller;

import graphql.GraphQL;
import graphql.schema.GraphQLNamedType;
import info.platform.common.result.ResponseData;
import info.platform.origin.GraphqlService;
import io.swagger.annotations.Api;
import io.swagger.annotations.ApiOperation;
import org.springframework.beans.factory.annotation.Value;
import org.springframework.core.io.Resource;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RestController;

import java.io.IOException;
import java.util.List;

@RestController
@RequestMapping("/api/graphql")
@Api(tags = "Graphql")
public class GraphqlTypeController {

    @Value("classpath:data.graphql")
    public Resource graphQl;

    @javax.annotation.Resource
    GraphqlService graphqlService;

    @ApiOperation("Graphql Type")
    @RequestMapping(value = "/type", method = RequestMethod.POST)
    public ResponseData<Void> queryGraphqlType() throws IOException {
        GraphQL graphQL = graphqlService.graphQLMap.get("data.graphql");
        List<GraphQLNamedType> typesAsList = graphQL.getGraphQLSchema().getAllTypesAsList();
        return ResponseData.success();
    }

}
