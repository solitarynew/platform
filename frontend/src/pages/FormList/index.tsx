import {
  BetaSchemaForm, ProForm,
  ProFormSelect,
  ProFormText
} from '@ant-design/pro-components';
import {useRef} from 'react';
import {ProFormColumnsType} from "@ant-design/pro-form/lib/components/SchemaForm/typing";

const options = [
  { value: `password`, label: `密码输入框`, initialValue: '123456' },
  { value: `money`, label: `金额输入`, initialValue: '123456' },
  { value: `textarea`, label: `文本域`, initialValue: '123456\n121212' },
  { value: `date`, label: `日期`, initialValue: Date.now() },
  { value: `dateTime`, label: `日期时间`, initialValue: Date.now() },
  { value: `dateWeek`, label: `周`, initialValue: Date.now() },
  { value: `dateMonth`, label: `月`, initialValue: Date.now() },
  { value: `dateQuarter`, label: `季度输入`, initialValue: Date.now() },
  { value: `dateYear`, label: `年份输入`, initialValue: Date.now() },
  { value: `dateRange`, label: `日期区间`, initialValue: [Date.now(), Date.now()] },
  { value: `dateTimeRange`, label: `日期时间区间`, initialValue: [Date.now(), Date.now()] },
  { value: `time`, label: `时间`, initialValue: Date.now() },
  { value: `timeRange`, label: `时间区间`, initialValue: [Date.now(), Date.now()] },
  { value: `text`, label: `文本框`, initialValue: '123456' },
  { value: `select`, label: `下拉框`, initialValue: 'open' },
  {
    value: 'treeSelect',
    label: '树形下拉框',
    initialValue: ['0-0', '0-0-0'],
  },
  { value: `checkbox`, label: `多选框`, initialValue: 'open' },
  { value: `rate`, label: `星级组件`, initialValue: '' },
  { value: `radio`, label: `单选框`, initialValue: 'open' },
  { value: `radioButton`, label: `按钮单选框`, initialValue: 'open' },
  { value: `progress`, label: `进度条`, initialValue: '10' },
  { value: `percent`, label: `百分比组件`, initialValue: '20' },
  { value: `digit`, label: `数字输入框`, initialValue: '200000' },
  { value: `second`, label: `秒格式化`, initialValue: 20000 },
  {
    value: `avatar`,
    label: `头像`,
    initialValue: 'https://gw.alipayobjects.com/zos/rmsportal/KDpgvguMpGfqaHPjicRK.svg',
  },
  { value: `code`, label: `代码框`, initialValue: '# 2121' },
  { value: `switch`, label: `开关`, initialValue: 'open' },
  { value: `fromNow`, label: `相对于当前时间`, initialValue: Date.now() },
  {
    value: `image`,
    label: `图片`,
    initialValue: 'https://gw.alipayobjects.com/zos/rmsportal/KDpgvguMpGfqaHPjicRK.svg',
  },
  { value: `jsonCode`, label: `JSON代码框`, initialValue: '{ "name":"qixian" }' },
  {
    value: `color`,
    label: `颜色选择器`,
    initialValue: '#1890ff',
  },
];

type DataItem = {
  dataIndex: string;
  valueType: string;
  name: string;
};

const columns: ProFormColumnsType<DataItem>[] = [
];


export default () => {
  const formRef = useRef();

  return (
    <>
      <ProForm<DataItem>
        layout={'vertical'}
        submitter={
          {
            searchConfig: {
              submitText: '添加',
            },
            submitButtonProps: {
              style: {
              }
            },
            resetButtonProps: {
              style: {
                display: 'none',
              },
            }
          }
        }
        onFinish={async (values) => {
          console.log(values);
          // push 一个完整的col项
          // columns.push({
          //   dataIndex: values.dataIndex,
          //   name: values.name,
          //   valueType: values.valueType,
          // })

          }
        }
        formRef={formRef}
      >
        <ProFormText
          width={'md'}
          name='name'
          required={true}
          label='表单项名称'
          rules={[{ required: true, message: '表单项名称为必填项' }]}
        />
        <ProFormText
          width={'md'}
          name='dataIndex'
          required={true}
          label='字段名'
          rules={[{ required: true, message: '字段名为必填项' }]}
        />
        <ProFormSelect
          width={'md'}
          name='valueType'
          required={true}
          label='表单项类型'
          options={options}
          rules={[{ required: true, message: '表单项类型为必填项' }]}
        />
      </ProForm>
      {Array.prototype.isPrototypeOf(columns) && columns.length === 0 && (<BetaSchemaForm
        layoutType={'ModalForm'}
        columns={columns}
        onFinish={async (values) => {
          console.log(values);
          }
        }
        />)
      }
    </>
  );
};
