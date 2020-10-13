#!/usr/bin/env bash

# ==== Resource Group ====
export RESOURCE_GROUP=secure-spring-microservices
export REGION=westus2

# ==== First Instance ====
# Customize SPRING_CLOUD_SERVICE - set your name for Azure Spring Cloud
export SPRING_CLOUD_SERVICE=secure

# ==== JARS ====
export GREETING_SERVICE_JAR=greeting-service/target/greeting-service-1.0.0.jar
export GREETING_EXTERNAL_SERVICE_JAR=greeting-external-service/target/greeting-external-service-1.0.0.jar
export GATEWAY_JAR=gateway/target/gateway-1.0.0.jar

# ==== Spring Cloud Gateway service names ====
export GREETING_SERVICE=greeting-service:80
export GREETING_EXTERNAL_SERVICE=greeting-external-service:80

# ==== Key Vault ====
# Customize KEY_VAULT value - set your name for Key Vault
export KEY_VAULT=certs-2020
export KEY_VAULT_URI=https://${KEY_VAULT}.vault.azure.net/
export SERVER_SSL_CERTIFICATE_NAME=self-signed
export CLIENT_SSL_CERTIFICATE_NAME=self-signed

# ==== Custom Domain ====
# Customize CUSTOM_DOMAIN - set your custom domain for the main entry gateway
export CUSTOM_DOMAIN=secure-gateway.spring-microservices.com
# Customize CUSTOM_DOMAIN_CERTIFICATE_NAME - set your custom domain certificate name for the main entry gateway
export CUSTOM_DOMAIN_CERTIFICATE_NAME=secure-gateway

# ==== External Service ====
export CONTAINER_REGISTRY=springbootimages
export IMAGE_TAG=prod

# Customize EXTERNAL_SERVICE_NAME - set your name for the external service
export EXTERNAL_SERVICE_NAME=external-service

export SERVICE_PRINCIPAL_NAME=http://App-for-reading-${KEY_VAULT}
# SERVICE_PRINCIPAL_OBJECT_ID will be auto-set by the script
export SERVICE_PRINCIPAL_OBJECT_ID=

# Must capture the value of these manually after creating Service Principal
export SERVICE_PRINCIPAL_TENANT_ID=
export SERVICE_PRINCIPAL_CLIENT_ID=
export SERVICE_PRINCIPAL_CLIENT_SECRET=

# EXTERNAL_SERVICE_ENDPOINT will be auto-set by the script
export EXTERNAL_SERVICE_ENDPOINT=
export EXTERNAL_SERVICE_PORT=443

# ==== Reserved for the future ====
export EXTERNAL_SERVICE_MANAGED_IDENTITY_NAME=external-service
# EXTERNAL_SERVICE_MANAGED_IDENTITY_SERVICE_PRINCIPAL will be auto-set by the script
export EXTERNAL_SERVICE_MANAGED_IDENTITY_SERVICE_PRINCIPAL=
# EXTERNAL_SERVICE_MANAGED_IDENTITY_RESOURCE_ID will be auto-set by the script
export EXTERNAL_SERVICE_MANAGED_IDENTITY_RESOURCE_ID=