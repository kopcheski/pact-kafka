#!/usr/bin/env bash

curl -H 'Content-Type: application/json' -X PUT -d \
     '{"consumer":{"name":"jsonKafkaConsumerApp"},"messages":[{"contents":{"name":"almost-anything"},"description":"A simple message","matchingRules":{"body":{"$.name":{"combine":"AND","matchers":[{"match":"type"}]}}},"metaData":{"contentType":"application\/json"}}],"metadata":{"pact-jvm":{"version":"4.6.4"},"pactSpecification":{"version":"3.0.0"}},"provider":{"name":"jsonKafkaProviderApp"}}' \
     http://localhost:9292/pacts/provider/jsonKafkaProviderApp/consumer/jsonKafkaConsumerApp/version/1.0.0

curl -H 'Content-Type: application/json' -X PUT -d \
     '{"consumer":{"name":"jsonSchemaKafkaConsumerApp"},"messages":[{"contents":{"name":"almost-anything2"},"description":"A json schema message","matchingRules":{"body":{"$.name":{"combine":"AND","matchers":[{"match":"type"}]}}},"metaData":{"contentType":"application\/vnd.schemaregistry.v1+json"}}],"metadata":{"pact-jvm":{"version":"4.6.4"},"pactSpecification":{"version":"3.0.0"}},"provider":{"name":"jsonSchemaKafkaProviderApp"}}' \
     http://localhost:9292/pacts/provider/jsonKafkaProviderApp/consumer/jsonKafkaConsumerApp/version/1.0.0