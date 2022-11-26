// @ts-ignore
/* eslint-disable */
import { request } from 'umi';

/** complete POST /api/flow/complete */
export async function completeUsingPOST(
  body: API.FlowTaskCompleteRequest,
  options?: { [key: string]: any },
) {
  return request<API.ResponseDataboolean>('/api/flow/complete', {
    method: 'POST',
    headers: {
      'Content-Type': 'application/json',
    },
    data: body,
    ...(options || {}),
  });
}

/** deploy POST /api/flow/deploy */
export async function deployUsingPOST(options?: { [key: string]: any }) {
  return request<API.Deployment>('/api/flow/deploy', {
    method: 'POST',
    ...(options || {}),
  });
}

/** Flow Picture By TaskId POST /api/flow/pic */
export async function showPicByTaskIdUsingPOST(
  body: API.FlowPicByTaskId,
  options?: { [key: string]: any },
) {
  return request<API.ResponseDataFlowPicByTaskIdResponse>('/api/flow/pic', {
    method: 'POST',
    headers: {
      'Content-Type': 'application/json',
    },
    data: body,
    ...(options || {}),
  });
}

/** Start Flow POST /api/flow/start */
export async function startUsingPOST(body: API.FlowStartRequest, options?: { [key: string]: any }) {
  return request<API.ResponseDataFlowStartResponse>('/api/flow/start', {
    method: 'POST',
    headers: {
      'Content-Type': 'application/json',
    },
    data: body,
    ...(options || {}),
  });
}

/** Task Page POST /api/flow/tasks */
export async function tasksUsingPOST(body: API.TaskPageRequest, options?: { [key: string]: any }) {
  return request<API.ResponseDataArrayTaskPageResponse>('/api/flow/tasks', {
    method: 'POST',
    headers: {
      'Content-Type': 'application/json',
    },
    data: body,
    ...(options || {}),
  });
}
