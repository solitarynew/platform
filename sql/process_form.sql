create table process_form
(
    id               int auto_increment
        primary key,
    process_id       varchar(64)   null,
    task_id          varchar(64)   null,
    query_form_id    int           null,
    query_graphql    varchar(1024) null,
    mutation_form_id int           null,
    mutation_graphql varchar(1024) null,
    constraint id
        unique (id)
);

INSERT INTO workflow.process_form (id, process_id, task_id, query_form_id, query_graphql, mutation_form_id, mutation_graphql) VALUES (1, 'process_1667737476222:7:90007', 'Activity_1wfcnsg', 15, null, 12, 'mutation($comment: String, $company: String) {
                      createNormalInvoice(comment: $comment, company: $company) {
                        id: _id
                      }
                    }');
INSERT INTO workflow.process_form (id, process_id, task_id, query_form_id, query_graphql, mutation_form_id, mutation_graphql) VALUES (2, 'process_1667737476222:7:90007', 'Activity_1vxlpzp', 13, 'query($createNormalInvoice_id: ID){
                  normalInvoices(where: {_id: $createNormalInvoice_id} ) {
                    _id
                    company
                    comment
                  }
                }', 14, null);
INSERT INTO workflow.process_form (id, process_id, task_id, query_form_id, query_graphql, mutation_form_id, mutation_graphql) VALUES (3, 'process_1667737476222:7:90007', 'Activity_1t49tkr', 13, 'query($createNormalInvoice_id: ID){
                  normalInvoices(where: {_id: $createNormalInvoice_id} ) {
                    _id
                    company
                    comment
                  }
                }', 14, null);
INSERT INTO workflow.process_form (id, process_id, task_id, query_form_id, query_graphql, mutation_form_id, mutation_graphql) VALUES (4, 'createBidSecurity:1:102504', 'input', 15, null, 16, 'mutation($data: String, $saler: String, $client: String, $projectName: String, $expectWithdrawTime: _Neo4jDateTime, $payCompany: String, $receiveCompany: String, $money: Float, $comment: String, $createAt: _Neo4jDateTime, $serialNumber: String, $dlt: Boolean, $month: String) {
    createBidSecurity(data: $data, saler: $saler, client: $client, projectName: $projectName, expectWithdrawTime: $expectWithdrawTime, payCompany: $payCompany, receiveCompany: $receiveCompany, money: $money, comment: $comment, createAt: $createAt, serialNumber: $serialNumber, dlt: $dlt, month: $month) {
        _id
        date
        saler
        client
        projectName
        expectWithdrawTime
        payCompany
        receiveCompany
        money
        comment
        createAt
        serialNumber
        dlt
        month
    }
}');
INSERT INTO workflow.process_form (id, process_id, task_id, query_form_id, query_graphql, mutation_form_id, mutation_graphql) VALUES (5, 'createBidSecurity:2:105009', 'input', 15, null, 16, 'mutation($data: String, $saler: String, $client: String, $projectName: String, $expectWithdrawTime: _Neo4jDateTime, $payCompany: String, $receiveCompany: String, $money: Float, $comment: String, $createAt: _Neo4jDateTime, $serialNumber: String, $dlt: Boolean, $month: String) {
    createBidSecurity(data: $data, saler: $saler, client: $client, projectName: $projectName, expectWithdrawTime: $expectWithdrawTime, payCompany: $payCompany, receiveCompany: $receiveCompany, money: $money, comment: $comment, createAt: $createAt, serialNumber: $serialNumber, dlt: $dlt, month: $month) {
        _id
        date
        saler
        client
        projectName
        expectWithdrawTime
        payCompany
        receiveCompany
        money
        comment
        createAt
        serialNumber
        dlt
        month
    }
}');
INSERT INTO workflow.process_form (id, process_id, task_id, query_form_id, query_graphql, mutation_form_id, mutation_graphql) VALUES (6, 'createBidSecurity:4:105034', 'input', 15, null, 16, 'mutation($data: String, $saler: String, $client: String, $projectName: String, $expectWithdrawTime: _Neo4jDateTime, $payCompany: String, $receiveCompany: String, $money: Float, $comment: String, $createAt: _Neo4jDateTime, $serialNumber: String, $dlt: Boolean, $month: String) {
    createBidSecurity(data: $data, saler: $saler, client: $client, projectName: $projectName, expectWithdrawTime: $expectWithdrawTime, payCompany: $payCompany, receiveCompany: $receiveCompany, money: $money, comment: $comment, createAt: $createAt, serialNumber: $serialNumber, dlt: $dlt, month: $month) {
        _id
        date
        saler
        client
        projectName
        expectWithdrawTime
        payCompany
        receiveCompany
        money
        comment
        createAt
        serialNumber
        dlt
        month
    }
}');
INSERT INTO workflow.process_form (id, process_id, task_id, query_form_id, query_graphql, mutation_form_id, mutation_graphql) VALUES (7, 'createBidSecurity:5:105060', 'input', 15, null, 16, 'mutation($data: String, $saler: String, $client: String, $projectName: String, $expectWithdrawTime: _Neo4jDateTime, $payCompany: String, $receiveCompany: String, $money: Float, $comment: String, $createAt: _Neo4jDateTime, $serialNumber: String, $dlt: Boolean, $month: String) {
    createBidSecurity(data: $data, saler: $saler, client: $client, projectName: $projectName, expectWithdrawTime: $expectWithdrawTime, payCompany: $payCompany, receiveCompany: $receiveCompany, money: $money, comment: $comment, createAt: $createAt, serialNumber: $serialNumber, dlt: $dlt, month: $month) {
        _id
        date
        saler
        client
        projectName
        expectWithdrawTime
        payCompany
        receiveCompany
        money
        comment
        createAt
        serialNumber
        dlt
        month
    }
}');
INSERT INTO workflow.process_form (id, process_id, task_id, query_form_id, query_graphql, mutation_form_id, mutation_graphql) VALUES (8, 'createBidSecurity:10:107504', 'input', 15, null, 16, 'mutation($date: String, $saler: String, $client: String, $projectName: String, $expectWithdrawTime: String, $payCompany: String, $receiveCompany: String, $money: Float, $comment: String, $createAt: String, $serialNumber: String, $dlt: Boolean, $month: String) {
    createBidSecurity(date: $date, saler: $saler, client: $client, projectName: $projectName, expectWithdrawTime: $expectWithdrawTime, payCompany: $payCompany, receiveCompany: $receiveCompany, money: $money, comment: $comment, createAt: $createAt, serialNumber: $serialNumber, dlt: $dlt, month: $month) {
       id: _id
        date
        saler
        client
        projectName
        expectWithdrawTime
        payCompany
        receiveCompany
        money
        comment
        createAt
        serialNumber
        dlt
        month
    }
}');
INSERT INTO workflow.process_form (id, process_id, task_id, query_form_id, query_graphql, mutation_form_id, mutation_graphql) VALUES (9, 'createBidSecurity:10:107504', 'check', 17, 'query($createBidSecurity_id: ID){
  bidSecurities(where: {_id: $createBidSecurity_id} ) {
    date
    saler
    client
    projectName
    expectWithdrawTime
    payCompany
    money
    comment
    createAt
    serialNumber
    dlt
    month
  }
}', 15, null);
INSERT INTO workflow.process_form (id, process_id, task_id, query_form_id, query_graphql, mutation_form_id, mutation_graphql) VALUES (10, 'createBidSecurity:11:115004', 'input', 15, null, 16, 'mutation($date: String, $saler: String, $client: String, $projectName: String, $expectWithdrawTime: String, $payCompany: String, $receiveCompany: String, $money: Float, $comment: String, $createAt: String, $serialNumber: String, $dlt: Boolean, $month: String) {
    createBidSecurity(date: $date, saler: $saler, client: $client, projectName: $projectName, expectWithdrawTime: $expectWithdrawTime, payCompany: $payCompany, receiveCompany: $receiveCompany, money: $money, comment: $comment, createAt: $createAt, serialNumber: $serialNumber, dlt: $dlt, month: $month) {
       id: _id
        date
        saler
        client
        projectName
        expectWithdrawTime
        payCompany
        receiveCompany
        money
        comment
        createAt
        serialNumber
        dlt
        month
    }
}');
INSERT INTO workflow.process_form (id, process_id, task_id, query_form_id, query_graphql, mutation_form_id, mutation_graphql) VALUES (11, 'createBidSecurity:11:115004', 'check', 17, 'query($createBidSecurity_id: ID){
  bidSecurities(where: {_id: $createBidSecurity_id} ) {
    date
    saler
    client
    projectName
    expectWithdrawTime
    payCompany
receiveCompany
    money
    comment
    createAt
    serialNumber
    dlt
    month
  }
}', 18, null);
