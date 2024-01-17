curl -sfL https://get.k3s.io | sh -s server

export KUBECONFIG=/etc/rancher/k3s/k3s.yaml

cat manifests/traefik-config.yaml | envsubst | kubectl apply -f -
