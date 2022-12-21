// @ts-ignore
/* eslint-disable */
import { request } from 'umi';

/** Graphql Type POST /api/graphql/type */
export async function queryGraphqlTypeUsingPOST(options?: { [key: string]: any }) {
  return request<API.ResponseDataobject>('/api/graphql/type', {
    method: 'POST',
    ...(options || {}),
  });
}
