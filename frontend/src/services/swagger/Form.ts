// @ts-ignore
/* eslint-disable */
import { request } from 'umi';

/** Form create Form create POST /api/form/create */
export async function createUsingPOST(body: API.FormRequestVO, options?: { [key: string]: any }) {
  return request<API.ResponseDataboolean>('/api/form/create', {
    method: 'POST',
    headers: {
      'Content-Type': 'application/json',
    },
    data: body,
    ...(options || {}),
  });
}

/** Form delete Form delete POST /api/form/delete */
export async function deleteUsingPOST(
  body: API.FormDeleteRequestVO,
  options?: { [key: string]: any },
) {
  return request<API.ResponseDataboolean>('/api/form/delete', {
    method: 'POST',
    headers: {
      'Content-Type': 'application/json',
    },
    data: body,
    ...(options || {}),
  });
}

/** Forms delete Forms delete POST /api/form/deletes */
export async function deletesUsingPOST(
  // 叠加生成的Param类型 (非body参数swagger默认没有生成对象)
  params: API.deletesUsingPOSTParams,
  options?: { [key: string]: any },
) {
  return request<API.ResponseDataboolean>('/api/form/deletes', {
    method: 'POST',
    params: {
      ...params,
    },
    ...(options || {}),
  });
}

/** Get form by id GET /api/form/get */
export async function getUsingGET(
  // 叠加生成的Param类型 (非body参数swagger默认没有生成对象)
  params: API.getUsingGETParams,
  options?: { [key: string]: any },
) {
  return request<API.ResponseDataFormItemResponseVO>('/api/form/get', {
    method: 'GET',
    params: {
      ...params,
    },
    ...(options || {}),
  });
}

/** Form list Form list GET /api/form/list */
export async function listUsingGET(options?: { [key: string]: any }) {
  return request<API.ResponseDataListFormItemResponseVO>('/api/form/list', {
    method: 'GET',
    ...(options || {}),
  });
}

/** Form update Form update POST /api/form/update */
export async function updateUsingPOST(
  body: API.FormUpdateRequestVO,
  options?: { [key: string]: any },
) {
  return request<API.ResponseDataboolean>('/api/form/update', {
    method: 'POST',
    headers: {
      'Content-Type': 'application/json',
    },
    data: body,
    ...(options || {}),
  });
}
