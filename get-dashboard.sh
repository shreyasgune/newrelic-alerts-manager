#!/bin/bash
NR_KEY=$2
policyID=$1
# Get Infrastructure Alert Conditions for a Given Policy
curl -X GET "https://api.newrelic.com/v2/dashboards/$policyID" -H "X-Api-Key:$NR_KEY" -H "Accept: application/json" | jq '.' >> dashboards_$policyID.json
echo $NR_KEY
echo $policyID
