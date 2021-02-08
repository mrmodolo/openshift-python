cat requirements.txt | xargs poetry add

## Build config 

> Instruções de como criar a imagem!

oc create -f openshift/build_config.yaml

## Iniciar o build

oc start-build openshift-python --follow

## Criação da aplicação

oc create -f openshift/deployment_config.yaml

## Exposição do serviço

oc create -f openshift/service_config.yaml

## Criação da rota

oc create -f openshift/route_config.yaml
