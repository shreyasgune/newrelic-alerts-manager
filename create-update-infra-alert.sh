#!/bin/bash
#you should give your file name
filename=$1
NR_KEY=$2
alert_count=$3


# To create Infrastructure Alerts
for ((i=0; i < $alert_count ; i++))
{
  jq  -c ".data[$i]" $filename | while read condition; do
     curl -X POST 'https://infra-api.newrelic.com/v2/alerts/conditions' \
     -H "X-Api-Key:$2" -i \
     -H 'Content-Type: application/json' \
     -d "{\"data\": $condition}"
   done
}

# To Update Infrastructure Alerts (TURN THEM ON or OFF)
# for ((i=0; i < $alert_count; i++))
# {
#   jq  -c ".data[$i]|.id" $filename | while read condition_id; do
#      echo "Processing::$condition_id"
#      curl -X PUT "https://infra-api.newrelic.com/v2/alerts/conditions/$condition_id" \
#      -H "X-Api-Key:$2" -i \
#      -H 'Content-Type: application/json' \
#      -d '{"data":{"enabled" : true}}'
#    done
# }
