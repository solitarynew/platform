package info.platform.origin;

import org.neo4j.graphql.OptimizedQueryException;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RestController;

import javax.annotation.Resource;
import java.io.IOException;

@RestController
@RequestMapping("/origin")
public class GraphqlController {

    @Resource
    GraphqlService graphqlService;

    @RequestMapping(value = "/graphql", method = RequestMethod.POST)
    public String graphql(String fileName, String query) throws IOException, OptimizedQueryException {
        return graphqlService.queryGraphQL(fileName, query);
    }
}
