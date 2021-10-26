kubectl apply -f cadvisor.daemonset.yaml

kubectl apply -f postgres.secret.yaml `
    -f postgres.configmap.yaml `
    -f postgres.volume.yaml `
    -f postgres.deployment.yaml `
    -f postgres.service.yaml

kubectl apply -f redis.configmap.yaml `
    -f redis.deployment.yaml `
    -f redis.service.yaml

kubectl apply -f poll.deployment.yaml `
    -f worker.deployment.yaml `
    -f result.deployment.yaml `
    -f poll.service.yaml `
    -f result.service.yaml `
    -f poll.ingress.yaml `
    -f result.ingress.yaml

kubectl apply -f traefik.rbac.yaml `
    -f traefik.deployment.yaml `
    -f traefik.service.yaml

Write-Host ""
Write-Host "Deployment complete" -f ([ConsoleColor]::Green)
Write-Host "Don't forget to create the tables in postgres" -f ([ConsoleColor]::Green)
Write-Host "And to setup /etc/hosts correctly" -f ([ConsoleColor]::Green)
