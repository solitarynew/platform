export default [
  {
    path: '/user',
    layout: false,
    routes: [
      {
        name: 'login',
        path: '/user/login',
        component: './user/Login',
      },
      {
        component: './404',
      },
    ],
  },
  {
    path: '/new-page',
    name: 'new-page',
    icon: 'smile',
    component: './Welcome',
  },
  {
    path: '/welcome',
    name: 'welcome',
    icon: 'smile',
    component: './Welcome',
  },
  {
    path: '/admin',
    name: 'admin',
    icon: 'crown',
    access: 'canAdmin',
    routes: [
      {
        path: '/admin/sub-page',
        name: 'sub-page',
        icon: 'smile',
        component: './Welcome',
      },
      {
        component: './404',
      },
    ],
  },
  {
    name: 'list.table-list',
    icon: 'table',
    path: '/list',
    component: './TableList',
  },
  {
    name: 'list.task-list',
    icon: 'table',
    path: '/task-list',
    component: './TaskList',
  },
  {
    name: 'list.form-list',
    icon: 'table',
    path: '/form-list',
    component: './FormList',
  }
  ,
  {
    path: '/',
    redirect: '/welcome',
  },
  {
    component: './404',
  },
];
