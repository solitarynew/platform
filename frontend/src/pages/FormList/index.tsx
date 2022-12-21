import React, {useRef, useState} from "react";
import {
  ActionType, BetaSchemaForm,
  FooterToolbar,
  ModalForm,
  ProColumns, ProDescriptions, ProDescriptionsItemProps,
  ProFormText,
  ProFormTextArea
} from "@ant-design/pro-components";
import {FormattedMessage, useIntl} from "@@/plugin-locale/localeExports";
import {
  PageContainer,
  ProTable
} from "@ant-design/pro-components";
import {Button, Drawer, message} from "antd";
import {createUsingPOST, deletesUsingPOST, listUsingGET, updateUsingPOST} from "@/services/swagger/Form";


/**
 * @en-US Add form
 * @zh-CN 添加表单
 * @param fields
 */
const handleAdd = async (fields: API.RuleListItem) => {
  const hide = message.loading('正在添加');
  try {
    await createUsingPOST({ ...fields });
    hide();
    message.success('Added successfully');
    return true;
  } catch (error) {
    hide();
    message.error('Adding failed, please try again!');
    return false;
  }
};

/**
 * @en-US Update form
 * @zh-CN 更新表单
 *
 * @param fields
 */
const handleUpdate = async (fields: API.FormItemResponseVO) => {
  const hide = message.loading('Updating');
  try {
    await updateUsingPOST({
      ...fields,
    });
    hide();

    message.success('Updated successfully');
    return true;
  } catch (error) {
    hide();
    message.error('Update failed, please try again!');
    return false;
  }
};

/**
 *  Delete form
 * @zh-CN 删除表单
 *
 * @param selectedRows
 */
const handleRemove = async (selectedRows: API.FormItemResponseVO[]) => {
  const hide = message.loading('正在删除');
  if (!selectedRows) return true;
  try {
    await deletesUsingPOST({
      ids: selectedRows.map((row) => row.id),
    });
    hide();
    message.success('Deleted successfully and will refresh soon');
    return true;
  } catch (error) {
    hide();
    message.error('Delete failed, please try again');
    return false;
  }
};

const FormList: React.FC = () => {
  /**
   * @en-US Pop-up window of new window
   * @zh-CN 新建窗口的弹窗
   *  */
  const [createModalVisible, handleCreateModalVisible] = useState<boolean>(false);
  /**
   * @en-US pop-up window of update window
   * @zh-CN 分布更新窗口的弹窗
   * */
  const [updateModalVisible, handleUpdateModalVisible] = useState<boolean>(false);
  /**
   * @en-US The pop-up window of the preview window
   * @zh-CN 预览窗口的弹窗
   */
  const [previewModalVisible, handlePreviewModalVisible] = useState<boolean>(false);

  const [showDetail, setShowDetail] = useState<boolean>(false);

  const actionRef = useRef<ActionType>();
  const [currentRow, setCurrentRow] = useState<API.FormItemResponseVO>();
  const [selectedRowsState, setSelectedRows] = useState<API.RuleListItem[]>([]);

  /**
   * @en-US International configuration
   * @zh-CN 国际化配置
   * */
  const intl = useIntl();

  const columns: ProColumns<API.FormItemResponseVO>[] = [
    {
      title: (
        <FormattedMessage
          id="pages.formList.table.column.id"
          defaultMessage="Form id"
        />
      ),
      dataIndex: 'id',
      tip: 'The form id is the unique key',
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
      title: <FormattedMessage id="pages.formList.table.column.name" defaultMessage="Name" />,
      dataIndex: 'name',
      valueType: 'textarea',
    },
    {
      title: <FormattedMessage id="pages.formList.table.column.description" defaultMessage="Description" />,
      dataIndex: 'description',
      valueType: 'textarea',
    },
    {
      title: <FormattedMessage id="pages.formList.table.column.options" defaultMessage="Operating" />,
      dataIndex: 'option',
      valueType: 'option',
      render: (_, record) => [
        <a
          key="edit"
          onClick={() => {
            handleUpdateModalVisible(true);
            setCurrentRow(record);
          }}
        >
          <FormattedMessage id="pages.formList.table.column.options.edit" defaultMessage="Edit" />
        </a>,
        <a
          key="preview"
          onClick={() => {
            handlePreviewModalVisible(true);
            setCurrentRow(record);
          }}
        >
          <FormattedMessage
            id="pages.formList.table.column.options.preview"
            defaultMessage="Preview"
          />
        </a>,
      ],
    },
  ];

  return (
  <PageContainer>
    <ProTable<API.FormItemResponseVO, API.PageParams>
      headerTitle={intl.formatMessage({
        id: 'pages.formList.table.title',
        defaultMessage: 'Form list',
      })}
      actionRef={actionRef}
      rowKey="id"
      search={{
        labelWidth: 120,
      }}
      toolBarRender={() => [
        <Button
          type="primary"
          key="primary"
          onClick={() => {
            handleCreateModalVisible(true);
          }}
        >
          <FormattedMessage id="pages.formList.table.toolbar.new" defaultMessage="New" />
        </Button>,
      ]}
      request= {listUsingGET}
      columns={columns}
      rowSelection={{
        onChange: (_, selectedRows) => setSelectedRows(selectedRows),
      }}
    />
    {selectedRowsState?.length > 0 && (
      <FooterToolbar
        extra={
          <div>
            <FormattedMessage id="pages.formList.table.selectBar.chosen" defaultMessage="Chosen" />{' '}
            <a style={{ fontWeight: 600 }}>{selectedRowsState.length}</a>{' '}
            <FormattedMessage id="pages.formList.table.selectBar.item" defaultMessage="项" />
            &nbsp;&nbsp;
          </div>
        }
      >
        <Button
          onClick={async () => {
            await handleRemove(selectedRowsState);
            setSelectedRows([]);
            actionRef.current?.reloadAndRest?.();
          }}
        >
          <FormattedMessage
            id="pages.formList.table.selectBar.batchDeletion"
            defaultMessage="Batch deletion"
          />
        </Button>
      </FooterToolbar>
    )}
    <ModalForm
      title={intl.formatMessage({
        id: 'pages.formList.table.toolbar.newForm',
        defaultMessage: 'New Form',
      })}
      width="400px"
      visible={createModalVisible}
      onVisibleChange={handleCreateModalVisible}
      onFinish={async (value) => {
        const success = await handleAdd(value as API.RuleListItem);
        if (success) {
          handleCreateModalVisible(false);
          if (actionRef.current) {
            actionRef.current.reload();
          }
        }
      }}
    >
      <ProFormText
        rules={[
          {
            required: true,
          },
        ]}
        label="表单名称"
        width="md"
        name="name"
      />
      <ProFormText
        rules={[
          {
            required: true,
          },
        ]}
        label="表单描述"
        width="md"
        name="description"
      />
      <ProFormTextArea
        rules={[
          {
            required: true,
          },
        ]}
        label="表单内容"
        width="md"
        name="schema" />
    </ModalForm>
    {updateModalVisible && (
      <ModalForm
        title={intl.formatMessage({
          id: 'pages.formList.table.option.updateForm',
          defaultMessage: 'Edit Form',
        })}
        width="400px"
        visible={updateModalVisible}
        onVisibleChange={handleUpdateModalVisible}
        request={async () => ({
          ...currentRow // 这里是为了让表单能够自动填充数据
        })}
        onFinish={async (value) => {
          const success = await handleUpdate(value as API.FormUpdateRequestVO);
          if (success) {
            handleUpdateModalVisible(false);
            if (actionRef.current) {
              actionRef.current.reload();
            }
          }
        }}
      >
        <ProFormText
          rules={[
            {
              required: true,
            },
          ]}
          // 禁止修改
          disabled
          label="表单id"
          width="md"
          name="id"
        />
        <ProFormText
          rules={[
            {
              required: true,
            },
          ]}
          label="表单名称"
          width="md"
          name="name"
        />
        <ProFormText
          rules={[
            {
              required: true,
            },
          ]}
          label="表单描述"
          width="md"
          name="description"
        />
        <ProFormTextArea
          rules={[
            {
              required: true,
            },
          ]}
          label="表单内容"
          width="md"
          name="schema" />
      </ModalForm>
    )
    }
    {previewModalVisible && (<BetaSchemaForm
      layoutType="ModalForm"
      title={intl.formatMessage({
          id: 'pages.formList.table.option.previewForm',
          defaultMessage: 'Preview Form',
        }
      )}
      visible={previewModalVisible}
      width="400px"
      onVisibleChange={handlePreviewModalVisible}
      columns={JSON.parse(currentRow?.schema || "{}")}>
    </BetaSchemaForm>)
    }
    <Drawer
      width={600}
      visible={showDetail}
      onClose={() => {
        setCurrentRow(undefined);
        setShowDetail(false);
      }}
      closable={false}
    >
      {currentRow?.id && (
        <ProDescriptions<API.FormItemResponseVO>
          column={2}
          title={currentRow?.name}
          request={async () => ({
            data: currentRow || {},
          })}
          params={{
            id: currentRow?.name,
          }}
          columns={columns as ProDescriptionsItemProps<API.FormItemResponseVO>[]}
        />
      )}
    </Drawer>
  </PageContainer>
  )
}

export default FormList;
