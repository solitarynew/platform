import React, {useRef, useState} from "react";
import {FormattedMessage, useIntl} from "@@/plugin-locale/localeExports";
import {ActionType, PageContainer, ProColumns, ProTable} from "@ant-design/pro-components";
import confirm from "antd/es/modal/confirm";
import {ExclamationCircleFilled} from "@ant-design/icons";
import {startUsingPOST} from "@/services/swagger/Flow";
import {FlowDeploymentListUsingPOST} from "@/services/swagger/Flow";

const FormList: React.FC = () => {

  const actionRef = useRef<ActionType>();
  const [currentRow, setCurrentRow] = useState<API.FlowDeploymentResponse>();
  const [configVisible, setConfigVisible] = useState<boolean>(false);

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
        request={FlowDeploymentListUsingPOST}
        columns={columns}
      />
    </PageContainer>
  );
};

export default FormList;
