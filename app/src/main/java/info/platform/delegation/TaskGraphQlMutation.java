package info.platform.delegation;

import info.platform.origin.GraphqlService;
import info.platform.tool.SpringContextHolder;
import org.flowable.engine.delegate.TaskListener;
import org.flowable.engine.impl.el.FixedValue;
import org.neo4j.graphql.OptimizedQueryException;

import java.io.IOException;

public class TaskGraphQlMutation implements TaskListener {

    private FixedValue fileName;

    private FixedValue graphql;

    @Override
    public void notify(org.flowable.task.service.delegate.DelegateTask delegateTask) {
//        String fileName = this.fileName.getExpressionText();
//        String graphql = this.graphql.getExpressionText();
        // TODO
        GraphqlService graphqlService = SpringContextHolder.getBean(GraphqlService.class);
        try {
            graphqlService.queryGraphQL("data.graphql", "mutation {   createNormalInvoice(comment: \"普通发票24\") {     _id     comment   } }");
        } catch (IOException | OptimizedQueryException e) {
            throw new RuntimeException(e);
        }
    }

    public FixedValue getFileName() {
        return fileName;
    }

    public void setFileName(FixedValue fileName) {
        this.fileName = fileName;
    }

    public FixedValue getGraphql() {
        return graphql;
    }

    public void setGraphql(FixedValue graphql) {
        this.graphql = graphql;
    }
}
