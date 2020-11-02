#!/usr/bin/env bash
export CLUSTER_ID="y9t034ebfz9t3"
export SPACE_NAME="qc"
export SPACE_ID="response"
export APP_NAME="qcelastalert"
export APP_ID="8ba1f16394g"

export HELM_CHART_PATH=".."
export HELM_VALUES_PATH="../values.yaml"
export HELM_IDENTIFIER="../identifier.yaml"
export HELM_ISSUER="../issuer.yaml"
export KUBE_NAMESPACE="${SPACE_NAME}-${SPACE_ID}"
export HELM_RELEASE_NAME="${APP_NAME}"