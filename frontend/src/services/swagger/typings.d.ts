declare namespace API {
  type deletesUsingPOSTParams = {
    /** Form ids */
    ids: number;
  };

  type Deployment = {
    category?: string;
    deploymentTime?: string;
    derivedFrom?: string;
    derivedFromRoot?: string;
    engineVersion?: string;
    id?: string;
    key?: string;
    name?: string;
    new?: boolean;
    resources?: Record<string, any>;
    tenantId?: string;
  };

  type EngineResource = {
    bytes?: string;
    deploymentId?: string;
    generated?: boolean;
    name?: string;
  };

  type FlowDeploymentResponse = {
    description?: string;
    id?: string;
    key?: string;
    name?: string;
    taskDefinitionKeys?: string[];
    version?: number;
  };

  type FlowPicByTaskId = {
    taskId?: string;
  };

  type FlowPicByTaskIdResponse = {
    pic?: string;
  };

  type FlowStartRequest = {
    deploymentKey?: string;
    variables?: Record<string, any>;
  };

  type FlowStartResponse = {
    processDefinitionId?: string;
    processDefinitionKey?: string;
    processDefinitionName?: string;
    processInstanceId?: string;
  };

  type FlowTaskCompleteRequest = {
    taskId?: string;
    variables?: Record<string, any>;
  };

  type FlowTaskFormInfoRequest = {
    taskId?: string;
  };

  type FlowTaskFormQueryRequest = {
    taskId?: string;
  };

  type FlowTaskFormRequest = {
    taskId?: string;
  };

  type FlowTaskFormResponse = {
    mutationSchema?: string;
    querySchema?: string;
  };

  type FlowTaskFormSaveRequest = {
    taskId?: string;
    variables?: Record<string, any>;
  };

  type FormDeleteRequestVO = {
    id?: number;
  };

  type FormItemResponseVO = {
    description?: string;
    id?: number;
    name?: string;
    schema?: string;
  };

  type FormRequestVO = {
    description?: string;
    name?: string;
    schema?: string;
  };

  type FormUpdateRequestVO = {
    description?: string;
    id?: number;
    name?: string;
    schema?: string;
  };

  type getUsingGETParams = {
    /** Form id */
    id: number;
  };

  type ProcessFormItem = {
    mutationFormId?: number;
    mutationGraphql?: string;
    queryFormId?: number;
    queryGraphql?: string;
  };

  type ProcessFormRequestVO = {
    processId?: string;
  };

  type ProcessFormResponseVO = {
    mutationFormId?: number;
    mutationGraphql?: string;
    queryFormId?: number;
    queryGraphql?: string;
    taskId?: string;
  };

  type ProcessFormSaveRequestVO = {
    items?: Record<string, any>;
    processId?: string;
  };

  type ResponseDataArrayTaskPageResponse = {
    data?: TaskPageResponse[];
    errorCode?: number;
    errorMessage?: string;
    success?: boolean;
  };

  type ResponseDataboolean = {
    data?: boolean;
    errorCode?: number;
    errorMessage?: string;
    success?: boolean;
  };

  type ResponseDataFlowPicByTaskIdResponse = {
    data?: FlowPicByTaskIdResponse;
    errorCode?: number;
    errorMessage?: string;
    success?: boolean;
  };

  type ResponseDataFlowStartResponse = {
    data?: FlowStartResponse;
    errorCode?: number;
    errorMessage?: string;
    success?: boolean;
  };

  type ResponseDataFlowTaskFormResponse = {
    data?: FlowTaskFormResponse;
    errorCode?: number;
    errorMessage?: string;
    success?: boolean;
  };

  type ResponseDataFormItemResponseVO = {
    data?: FormItemResponseVO;
    errorCode?: number;
    errorMessage?: string;
    success?: boolean;
  };

  type ResponseDataListFlowDeploymentResponse = {
    data?: FlowDeploymentResponse[];
    errorCode?: number;
    errorMessage?: string;
    success?: boolean;
  };

  type ResponseDataListFormItemResponseVO = {
    data?: FormItemResponseVO[];
    errorCode?: number;
    errorMessage?: string;
    success?: boolean;
  };

  type ResponseDataMapstringobject = {
    data?: Record<string, any>;
    errorCode?: number;
    errorMessage?: string;
    success?: boolean;
  };

  type ResponseDataMapstringProcessFormResponseVO = {
    data?: Record<string, any>;
    errorCode?: number;
    errorMessage?: string;
    success?: boolean;
  };

  type ResponseDataobject = {
    data?: Record<string, any>;
    errorCode?: number;
    errorMessage?: string;
    success?: boolean;
  };

  type TaskPageRequest = {
    assignee?: string;
    /** 页码，从 1 开始 */
    current?: number;
    /** 每页条数，最大值为 100 */
    pageSize?: number;
  };

  type TaskPageResponse = {
    description?: string;
    id?: string;
    name?: string;
    processInstanceId?: string;
    variables?: Record<string, any>;
  };
}
