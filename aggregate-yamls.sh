#!/bin/bash

# make all non-istio yamls together
cat ../istio-aloha/target/istio/aloha.yaml \
    ../istio-api-gateway/target/istio/api-gateway.yaml \
    ../istio-bonjour/temp/bonjour.yaml \
    ../istio-hola/target/istio/hola.yaml \
    ../istio-ola/target/istio/ola.yaml \
    ./redhat-helloworld-msa-ingress.yaml \
    > redhat-helloworld-msa-all.yaml

# make istio yamls together
cat ../istio-aloha/target/istio/istio-aloha.yaml \
    ../istio-api-gateway/target/istio/istio-api-gateway.yaml \
    ../istio-bonjour/temp/bonjour.yaml \
    ../istio-hola/target/istio/istio-hola.yaml \
    ../istio-ola/target/istio/istio-ola.yaml \
    ./redhat-helloworld-msa-ingress.yaml \
    > istio-redhat-helloworld-msa-all.yaml