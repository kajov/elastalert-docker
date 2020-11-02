#!/usr/bin/env bash
. ./data.sh
echo $HELM_RELEASE_NAME

echo "Test Linting..."
helm lint \
    --namespace $KUBE_NAMESPACE $HELM_CHART_PATH \
    -f $HELM_VALUES_PATH \
    -f $HELM_IDENTIFIER \
    -f $HELM_ISSUER \
    --set identifier.appId=${APP_ID} \
    --set identifier.appName=${APP_NAME} \
    --set identifier.spaceId=${SPACE_ID} \
    --set identifier.spaceName=${SPACE_NAME} \
    --set identifier.clusterId=${CLUSTER_ID} \

echo "Test Templating..."
helm install --name $HELM_RELEASE_NAME-test \
    --namespace $KUBE_NAMESPACE $HELM_CHART_PATH \
    -f $HELM_VALUES_PATH \
    -f $HELM_IDENTIFIER \
    -f $HELM_ISSUER \
    --set identifier.appId=${APP_ID} \
    --set identifier.appName=${APP_NAME} \
    --set identifier.spaceId=${SPACE_ID} \
    --set identifier.spaceName=${SPACE_NAME} \
    --set identifier.clusterId=${CLUSTER_ID} \
    --debug --dry-run  --wait --no-hooks
