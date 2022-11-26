import React, {useRef, useState} from "react";
import {FormattedMessage, useIntl} from "@@/plugin-locale/localeExports";
import type {
  ActionType,
  ProColumns,
  ProDescriptionsItemProps, ProFormColumnsType
} from '@ant-design/pro-components';
import {
  BetaSchemaForm,
  PageContainer,
  ProDescriptions,
  ProTable,
} from '@ant-design/pro-components';
import {Button, Col, Divider, Drawer, Image, message, Row} from "antd";
import {
  showPicByTaskIdUsingPOST,
  tasksUsingPOST,
  completeUsingPOST,
  formUsingPOST,
  saveUsingPOST,
  formInfoUsingPOST
} from "@/services/swagger/Flow"
import {ExclamationCircleFilled} from "@ant-design/icons";
import confirm from "antd/es/modal/confirm";

/**
 * @zh-US Get Picture of the flow instance by taskId
 * @zh-CN 根据taskId获取对应的流程实例的状态图
 *
 * @param fields
 */
const getPicByTaskId = async (fields: API.TaskPageResponse) => {
  try {
    const resp: API.ResponseDataFlowPicByTaskIdResponse = await showPicByTaskIdUsingPOST({"taskId": fields.id});
    // string to blob
    // const blob = new Blob([resp.data?.pic || ""], {type: "image/png"});
    // const url = window.URL.createObjectURL(blob);
    // return url;
    return resp.data?.pic;
  } catch (error) {
    message.error('Failed to get the picture of the flow instance');
    return "";
  }
}

/**
 * @zh-US Get the form of the flow instance by taskId
 * @zh-CN 根据taskId获取对应的流程实例的表单
 *
 * @param fields
 */
const getFormByTaskId = async (fields: API.TaskPageResponse) => {
  try {
    const resp: API.ResponseDataFlowTaskFormResponse = await formUsingPOST({"taskId": fields.id});
    console.log(resp.data?.formSchema);
    return resp.data?.formSchema;
  } catch (error) {
    message.error('Failed to get the form of the flow instance');
    return "";
  }
}

/**
 * @en-US Complete the task
 * @zh-CN 完成任务
 * @param taskId
 */
const complete = async (taskId: string) => {
  const hide = message.loading('正在完成');
  try {
    await completeUsingPOST({ taskId });
    hide();
    message.success('成功，即将刷新');
    return true;
  } catch (error) {
    hide();
    message.error('失败，请重试');
    return false;
  }
};

type DataItem = {
};

const TaskList: React.FC = () => {
  /**
   * @en-US International configuration
   * @zh-CN 国际化配置
   * */
  const intl = useIntl();

  const [showDetail, setShowDetail] = useState<boolean>(false);

  const actionRef = useRef<ActionType>();
  const [currentRow, setCurrentRow] = useState<API.TaskPageResponse>();
  const [currentPic, setCurrentPic] = useState<string>("");
  const [currentForm, setCurrentForm] = useState<string>("{}");

  const columns: ProColumns<API.TaskPageResponse>[] = [
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
            onClick={async () => {
              await setCurrentRow(entity);
              await setShowDetail(true);
              setCurrentPic(await getPicByTaskId(entity) || "");
              setCurrentForm(await getFormByTaskId(entity) || "{}");
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
      <ProTable<API.TaskPageResponse, API.TaskPageRequest>
        headerTitle={intl.formatMessage({
          id: 'pages.taskList.title',
          defaultMessage: 'My Task List',
        })}
        actionRef={actionRef}
        rowKey="key"
        search={{
          labelWidth: 120,
        }}
        params={{assignee: "1", current: 1, pageSize: 20}}
        request={tasksUsingPOST}
        columns={columns}
      />
      <Drawer
        width={600}
        visible={showDetail}
        onClose={() => {
          setCurrentRow(undefined);
          setShowDetail(false);
          setCurrentPic("");
          setCurrentForm("{}");
        }}
        closable={false}
      >
        {currentRow?.name && currentForm!= "{}" && (
          <><ProDescriptions<API.TaskListItem>
            column={2}
            title={currentRow?.name}
            request={async () => ({
              data: currentRow || {},
            })}
            params={{
              id: currentRow?.name,
            }}
            columns={columns as ProDescriptionsItemProps<API.TaskListItem>[]}/>
            <Divider/>
            <Image src={"data:image/png;base64," + currentPic}/>
            <Divider/>
            <BetaSchemaForm<DataItem>
            trigger={<a>填写表单</a>}
            layoutType={'ModalForm'}
            steps={[
              {
                title: 'ProComponent',
              },
            ]}
            rowProps={{
              gutter: [16, 16],
            }}
            colProps={{
              span: 12,
            }}
            params={{taskId: currentRow?.id}}
            request={async () => {const resp = await formInfoUsingPOST({taskId: currentRow?.id});
              console.log(resp);
              return resp.data}}
            grid={true}
            onFinish={async (values) => {
              try {
                await saveUsingPOST({taskId: currentRow?.id, variables: values})
                return true;
              } catch (error) {
                return false;
              }
            }}
            columns={JSON.parse(currentForm)}/>
            <Divider/>
            <Row>
              <Col span={12}>
                <Button type="primary" onClick={() => {
                  confirm({
                    title: 'Do you want to complete this task?',
                    icon: <ExclamationCircleFilled/>,
                    content: 'Once completed, the task will be removed from the task list',
                    okText: 'Yes',
                    cancelText: 'No',
                    onOk: async () => {
                      await complete(currentRow?.id || "");
                      actionRef.current?.reload();
                    }
                  });
                }}>同意</Button>
              </Col>
              <Col span={12}>
                <Button type="primary" danger>拒绝</Button>
              </Col>
            </Row></>
        )}
      </Drawer>
    </PageContainer>
  );
}

export default TaskList;
