#!/usr/bin/env sh

kubectl apply -f cadvisor.daemonset.yaml

kubectl apply -f postgres.secret.yaml \
    -f postgres.configmap.yaml \
    -f postgres.volume.yaml \
    -f postgres.deployment.yaml \
    -f postgres.service.yaml

kubectl apply -f redis.configmap.yaml \
    -f redis.deployment.yaml \
    -f redis.service.yaml

kubectl apply -f poll.deployment.yaml \
    -f worker.deployment.yaml \
    -f result.deployment.yaml \
    -f poll.service.yaml \
    -f result.service.yaml \
    -f poll.ingress.yaml \
    -f result.ingress.yaml

kubectl apply -f traefik.rbac.yaml \
    -f traefik.deployment.yaml \
    -f traefik.service.yaml

echo ""
echo "\033[0;32mDeployment complete\033[0m"
echo "\033[0;32mDon't forget to create the tables in postgres\033[0m"
echo "\033[0;32mAnd to setup /etc/hosts correctly\033[0m"