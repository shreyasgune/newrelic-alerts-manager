#!/bin/bash
NR_KEY=$2
policyID=$1
# Get Infrastructure Alert Conditions for a Given Policy
curl -X GET "https://infra-api.newrelic.com/v2/alerts/conditions?policy_id=$policyID" -H "X-Api-Key:$NR_KEY" -H "Accept: application/json" | jq '.' >> jsoninfra_$policyID.json
echo $NR_KEY
echo $policyID
