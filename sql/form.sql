create table form
(
    id          int auto_increment
        primary key,
    name        varchar(256) null,
    description varchar(256) null,
    form_schema text         null
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
INSERT INTO workflow.form (id, name, description, form_schema) VALUES (16, '投标保证金输入', '投标保证金输入', '[
    {
        "title": "销售员",
        "dataIndex": "saler",
        "valueType": "text",
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
        "title": "日期",
        "dataIndex": "date",
        "valueType": "dateTime",
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
        "title": "投标单位",
        "dataIndex": "client",
        "valueType": "text",
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
        "title": "项目名称",
        "dataIndex": "projectName",
        "valueType": "text",
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
        "title": "预估收回日期",
        "dataIndex": "expectWithdrawTime",
        "valueType": "dateTime",
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
        "title": "付款单位",
        "dataIndex": "payCompany",
        "valueType": "text",
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
        "title": "收款单位",
        "dataIndex": "receiveCompany",
        "valueType": "text",
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
        "title": "费用",
        "dataIndex": "money",
        "valueType": "digit",
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
        "title": "备注",
        "dataIndex": "comment",
        "valueType": "text",
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
        "title": "创建日期",
        "dataIndex": "createAt",
        "valueType": "dateTime",
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
        "title": "编号",
        "dataIndex": "serialNumber",
        "valueType": "text",
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
        "title": "是否修改",
        "dataIndex": "dlt",
        "valueType": "switch",
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
        "title": "月份",
        "dataIndex": "month",
        "valueType": "text",
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
INSERT INTO workflow.form (id, name, description, form_schema) VALUES (17, '投标保证金展示', '投标保证金展示', '[
    {
        "title": "日期",
        "dataIndex": ["bidSecurities", "0", "date"],
        "valueType": "dateTime",
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
        "title": "销售员",
        "dataIndex": ["bidSecurities", "0" , "saler"],
        "valueType": "text",
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
        "title": "投标单位",
        "dataIndex": ["bidSecurities", "0" , "client"],
        "valueType": "text",
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
        "title": "项目名称",
        "dataIndex": ["bidSecurities", "0" , "projectName"],
        "valueType": "text",
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
        "title": "预估收回日期",
        "dataIndex": ["bidSecurities", "0" , "expectWithdrawTime"],
        "valueType": "dateTime",
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
        "title": "付款单位",
        "dataIndex": ["bidSecurities", "0" , "payCompany"],
        "valueType": "text",
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
        "title": "收款单位",
        "dataIndex": ["bidSecurities", "0" , "receiveCompany"],
        "valueType": "text",
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
        "title": "费用",
        "dataIndex": ["bidSecurities", "0" , "money"],
        "valueType": "digit",
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
        "title": "备注",
        "dataIndex": ["bidSecurities", "0" , "comment"],
        "valueType": "text",
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
        "title": "创建日期",
        "dataIndex": ["bidSecurities", "0" , "createAt"],
        "valueType": "dateTime",
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
        "title": "编号",
        "dataIndex": ["bidSecurities", "0" , "serialNumber"],
        "valueType": "text",
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
        "title": "是否修改",
        "dataIndex": ["bidSecurities", "0" , "dlt"],
        "valueType": "switch",
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
        "title": "月份",
        "dataIndex": ["bidSecurities", "0" , "month"],
        "valueType": "text",
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
INSERT INTO workflow.form (id, name, description, form_schema) VALUES (18, '是否通过switch', '是否通过', '[
  {
    "title": "是否通过",
    "dataIndex": ["check"],
 "valueType": "switch",
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
