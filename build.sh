#!/bin/bash

REPO=${REPO:-luxas/kubeadm-installer}
KUBEADM_VERSION=${KUBEADM_VERSION:-v1.5.0-alpha.2.421-a6bea3d79b8bba}
KUBEADM_REVISION=${KUBEADM_REVISION:-0}
TAG_LATEST=${TAG_LATEST:-1}
PUSH=${PUSH:-0}

docker build -t ${REPO}:${KUBEADM_VERSION}.${KUBEADM_REVISION} .

if [[ ${TAG_LATEST} == 1 ]]; then
	docker tag ${REPO}:${KUBEADM_VERSION}.${KUBEADM_REVISION} luxas/kubeadm-installer
fi

if [[ ${PUSH} == 1 ]]; then
	docker push ${REPO}:${KUBEADM_VERSION}.${KUBEADM_REVISION}
	docker push ${REPO}
fi
