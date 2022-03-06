#!/usr/bin/env bash
set -x
apt-get update
apt-get install -y apt-transport-https ca-certificates curl
curl -fsSLo /usr/share/keyrings/kubernetes-archive-keyring.gpg https://packages.cloud.google.com/apt/doc/apt-key.gpg
echo "deb [signed-by=/usr/share/keyrings/kubernetes-archive-keyring.gpg] https://apt.kubernetes.io/ kubernetes-xenial main" | tee /etc/apt/sources.list.d/kubernetes.list
apt-get update
apt-get install -y kubectl
cp /workspace/sharedlibrary/CD/deploy.yaml .
sed -i -e "s;__imgae__;$(params.app-image);g" deploy.yaml
sed -i -e "s;__app__;$(params.app-name);g" deploy.yaml
cat deploy.yaml
kubectl apply -f deploy.yaml 
