import React, {useRef, useState} from "react";
import {FormattedMessage, useIntl} from "@@/plugin-locale/localeExports";
import {
  ActionType,
  PageContainer, ProColumns,
  ProDescriptions, ProDescriptionsItemProps,
  ProTable,
} from '@ant-design/pro-components';
import {Drawer} from "antd";
import {task} from "@/services/ant-design-pro/api";

const TaskList: React.FC = () => {
  /**
   * @en-US International configuration
   * @zh-CN 国际化配置
   * */
  const intl = useIntl();

  const [showDetail, setShowDetail] = useState<boolean>(false);

  const actionRef = useRef<ActionType>();
  const [currentRow, setCurrentRow] = useState<API.RuleListItem>();

  const columns: ProColumns<API.RuleListItem>[] = [
    {
      title: (
        <FormattedMessage
          id="pages.taskList.taskId"
          defaultMessage="Task Id"
        />
      ),
      dataIndex: 'id',
      tip: 'The task id is the unique key',
      render: (dom, entity) => {
        return (
          <a
            onClick={() => {
              setCurrentRow(entity);
              setShowDetail(true);
            }}
          >
            {dom}
          </a>
        );
      },
    },
    {
      title: <FormattedMessage id="pages.taskList.taskName" defaultMessage="Name" />,
      dataIndex: 'name',
      valueType: 'textarea',
    },
    {
      title: <FormattedMessage id="pages.taskList.taskDescription" defaultMessage="Description" />,
      dataIndex: 'description',
      valueType: 'textarea',
    }
  ]

  return (
    <PageContainer>
      <ProTable<API.TaskListItem, API.PageParams>
        headerTitle={intl.formatMessage({
          id: 'pages.taskList.title',
          defaultMessage: 'My Task List',
        })}
        actionRef={actionRef}
        rowKey="key"
        search={{
          labelWidth: 120,
        }}
        request={task}
        columns={columns}
      />
      <Drawer
        width={600}
        visible={showDetail}
        onClose={() => {
          setCurrentRow(undefined);
          setShowDetail(false);
        }}
        closable={false}
      >
        {currentRow?.name && (
          <ProDescriptions<API.TaskListItem>
            column={2}
            title={currentRow?.name}
            request={async () => ({
              data: currentRow || {},
            })}
            params={{
              id: currentRow?.name,
            }}
            columns={columns as ProDescriptionsItemProps<API.TaskListItem>[]}
          />
        )}
      </Drawer>
    </PageContainer>
  );
}

export default TaskList;
