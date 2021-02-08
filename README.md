## Testando local com poetry

poetry init

cat requirements.txt | xargs poetry add

poetry run python app/app.py

## Testando no container

podman build -f Dockerfile -t openshift-python:latest

podman run --rm -p 5000:5000 openshift-python

## OpenShift

### Build config 

oc create -f openshift/build_config.yaml

### Iniciar o build

oc start-build openshift-python --follow

### Criação da aplicação

oc create -f openshift/deployment_config.yaml

### Exposição do serviço

oc create -f openshift/service_config.yaml

### Criação da rota

oc create -f openshift/route_config.yaml
