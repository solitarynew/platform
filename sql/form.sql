create table form
(
    id          int auto_increment
        primary key,
    name        varchar(256)  null,
    description varchar(256)  null,
    form_schema varchar(2048) null
);

INSERT INTO workflow.form (id, name, description, form_schema) VALUES (12, '表单1', '表单1', '[{"title":"备注","dataIndex":"comment","formItemProps":{"rules":[{"required":true,"message":"此项为必填项"}]},"width":"md","colProps":{"xs":24,"md":12}},{"title":"公司","dataIndex":"company","formItemProps":{"rules":[{"required":true,"message":"此项为必填项"}]},"width":"md","colProps":{"xs":24,"md":12}}]');
INSERT INTO workflow.form (id, name, description, form_schema) VALUES (13, '表单2', '表单2', '[
  {
    "title": "备注",
    "dataIndex": ["normalInvoices", "0" , "comment"],
    "formItemProps": {
      "rules": [
        {
          "required": true,
          "message": "此项为必填项"
        }
      ]
    },
    "width": "md",
    "colProps": {
      "xs": 24,
      "md": 12
    }
  },
  {
    "title": "公司",
    "dataIndex": ["normalInvoices", "0" , "company"],
    "formItemProps": {
      "rules": [
        {
          "required": true,
          "message": "此项为必填项"
        }
      ]
    },
    "width": "md",
    "colProps": {
      "xs": 24,
      "md": 12
    }
  }
]');
INSERT INTO workflow.form (id, name, description, form_schema) VALUES (14, '表单3', '表单3', '[
  {
    "title": "是否通过",
    "dataIndex": ["check"],
    "formItemProps": {
      "rules": [
        {
          "required": true,
          "message": "此项为必填项"
        }
      ]
    },
    "width": "md",
    "colProps": {
      "xs": 24,
      "md": 12
    }
  }
]');
INSERT INTO workflow.form (id, name, description, form_schema) VALUES (15, '空表单', '空表单，表示不显示表单', '[]');
