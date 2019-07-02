#!/bin/bash
nrql=$1
policy=$2
NR_KEY=$3
alert_count=$4

#To Create Multiple NRQL alerts for a given policy_id
for ((i=0; i < $alert_count; i++)) 
{
  jq  -c ".nrql_conditions[$i]" $nrql | while read condition; do
    echo "{\"nrql_condition\": $condition}"
     curl -X POST 'https://api.newrelic.com/v2/alerts_nrql_conditions/policies/'{$2}'.json' \
     -H "X-Api-Key:$3" -i \
     -H 'Content-Type: application/json' \
     -d "{\"nrql_condition\": $condition}"
   done
}
