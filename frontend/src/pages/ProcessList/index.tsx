import React, {useRef, useState} from "react";
import {FormattedMessage, useIntl} from "@@/plugin-locale/localeExports";
import {ActionType, BetaSchemaForm, PageContainer, ProColumns, ProTable} from "@ant-design/pro-components";
import confirm from "antd/es/modal/confirm";
import {ExclamationCircleFilled} from "@ant-design/icons";
import {startUsingPOST} from "@/services/swagger/Flow";
import {FlowDeploymentListUsingPOST} from "@/services/swagger/Flow";
import {listUsingGET} from "@/services/swagger/Form";

let valueEnum = {
};

function generateSchemaByTask(taskDefinitionKeys: string[]) {
  // return [
  //   {
  //     title: "任务1",
  //     valueType: "group",
  //     columns: [
  //       {
  //         title: "查询表单",
  //         dataIndex: ["task1", "queryFormId"],
  //         valueType: "select",
  //         width: "md",
  //         valueEnum: valueEnum,
  //       },
  //       {
  //         title: "查询语句",
  //         dataIndex: ["task1", "queryGraphql"],
  //         valueType: "text",
  //         width: "md",
  //       },
  //       {
  //         title: "执行表单",
  //         dataIndex: ["task1", "mutationFormId"],
  //         valueType: "select",
  //         width: "md",
  //         valueEnum: valueEnum,
  //       },
  //       {
  //         title: "执行语句",
  //         dataIndex: ["task1", "mutationGraphql"],
  //         valueType: "text",
  //         width: "md",
  //       }
  //     ]
  //   }
  // ]
  // 根据taskDefinitionKeys生产schema
  const schema: { title: string; valueType: string; columns: ({ title: string; dataIndex: string[]; valueType: string; width: string; valueEnum: {}; } | { title: string; dataIndex: string[]; valueType: string; width: string; valueEnum?: undefined; })[]; }[] = [];
  taskDefinitionKeys.forEach((taskDefinitionKey) => {
    schema.push({
      title: taskDefinitionKey,
      valueType: "group",
      columns: [
        {
          title: "查询表单",
          dataIndex: [taskDefinitionKey, "queryFormId"],
          valueType: "select",
          width: "md",
          valueEnum: valueEnum,
        },
        {
          title: "查询语句",
          dataIndex: [taskDefinitionKey, "queryGraphql"],
          valueType: "text",
          width: "md",
        },
        {
          title: "执行表单",
          dataIndex: [taskDefinitionKey, "mutationFormId"],
          valueType: "select",
          width: "md",
          valueEnum: valueEnum,
        },
        {
          title: "执行语句",
          dataIndex: [taskDefinitionKey, "mutationGraphql"],
          valueType: "text",
          width: "md",
        }
      ]
    })
  })

  return schema;

}


const FormList: React.FC = () => {

  const actionRef = useRef<ActionType>();
  const [currentRow, setCurrentRow] = useState<API.FlowDeploymentResponse>();
  const [configVisible, setConfigVisible] = useState<boolean>(false);
  const [configModalVisible, setConfigModalVisible] = useState<boolean>(false);

  /**
   * @en-US International configuration
   * @zh-CN 国际化配置
   * */
  const intl = useIntl();

  const columns: ProColumns<API.FlowDeploymentResponse>[] = [
    {
      title: (
        <FormattedMessage
          id="pages.processList.table.column.id"
          defaultMessage="Process id"
        />
      ),
      dataIndex: 'id',
      tip: 'The process id is the unique key',
      render: (dom, entity) => {
        return (
          <a
            onClick={() => {
              setCurrentRow(entity);
            }}
          >
            {dom}
          </a>
        );
      },
    },
    {
      title: <FormattedMessage id="pages.processList.table.column.name" defaultMessage="Name" />,
      dataIndex: 'name',
      valueType: 'textarea',
    },
    {
      title: <FormattedMessage id="pages.processList.table.column.description" defaultMessage="Description" />,
      dataIndex: 'description',
      valueType: 'textarea',
    },
    {
      title: <FormattedMessage id="pages.processList.table.column.key" defaultMessage="Key" />,
      dataIndex: 'key',
      valueType: 'textarea',
    },
    {
      title: <FormattedMessage id="pages.processList.table.column.options" defaultMessage="Operating" />,
      dataIndex: 'option',
      valueType: 'option',
      render: (_, record) => [
        <a
          key="start"
          onClick={() => {
            setCurrentRow(record);
            return confirm({
              title: '确认',
              icon: <ExclamationCircleFilled/>,
              content: '是否启动新的流程实例',
              okText: '确定',
              cancelText: '取消',
              onOk: async () => {
                await startUsingPOST({deploymentKey: record.key});
              }
            })
          }}
        >
          <FormattedMessage id="pages.processList.table.column.options.start" defaultMessage="Start" />
        </a>,
        <a
          key="config"
          onClick={() => {
            setCurrentRow(record);
            setConfigVisible(true);
            setConfigModalVisible(true);
          }
          }
        >
          <FormattedMessage id="pages.processList.table.column.options.config" defaultMessage="Config" />
        </a>,
      ],
    },
  ];

  return (
    <PageContainer>
      <ProTable<API.FlowDeploymentResponse, API.PageParams>
        headerTitle={intl.formatMessage({
          id: 'pages.processList.table.title',
          defaultMessage: 'Process list',
        })}
        actionRef={actionRef}
        rowKey="id"
        search={{
          labelWidth: 120,
        }}
        toolBarRender={() => []}
        request={async () => {
          const formList = await listUsingGET();
          // formList变为一个字典，key为id，value为也为一个字典，text字段为name
          valueEnum = formList.data?.reduce((acc, cur) => {
            if (cur.id) {
              acc[cur.id] = cur.name;
            }
            return acc;
          }, {}) || {};
          const result = await FlowDeploymentListUsingPOST();
          console.log(result);
          return result;
        }}
        columns={columns}
      />
      {configModalVisible && (<BetaSchemaForm
        layoutType="ModalForm"
        title={intl.formatMessage({
            id: 'pages.processList.table.option.configForm',
            defaultMessage: 'Config Form',
          }
        )}
        visible={configModalVisible}
        width={800}
        onVisibleChange={setConfigModalVisible}
        columns={generateSchemaByTask(currentRow?.taskDefinitionKeys || [])}
        onFinish={async (values) => {
          console.log(values as {});
          setConfigModalVisible(false);
        }}
        >
      </BetaSchemaForm>)}
    </PageContainer>
  );
};

export default FormList;
