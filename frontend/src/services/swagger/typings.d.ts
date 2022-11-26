declare namespace API {
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
