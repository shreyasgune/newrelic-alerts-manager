#!/bin/bash
NR_KEY=$2
policyID=$1
# Get NRQL Alert Conditions for a Given Policy
curl -X GET "https://api.newrelic.com/v2/alerts_nrql_conditions.json?policy_id=$policyID" -H "X-Api-Key:$NR_KEY" -H "Accept: application/json" | jq '.' >> jsonNRQL_$policyID.json
