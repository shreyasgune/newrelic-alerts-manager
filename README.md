# nr-alerts-editor
If you're tired of having to go to NR Alerts UI and modifying alerts piece by piece and just want to get on with it..


Note: `You will have to create the policies before you can use the scripts below.`

## General Instructions

- Use the `get` scripts to fetch the json from an existing policy. You can also create one from scratch if you fancy.
- You will need to provide with an accurate count of the number of `NRQL conditions` and `Infra conditions` for the `create` script's input args.
- Use the `create` script to re-create the alert-policy with modifications you made in the json that was generated. Provide it with the ID of the new policy you made when you followed the instruction in the note above.  

# Usage


## get-nrql-alert.sh
- Usage
```
.get-nrql-alert <policyID> <NR_API_KEY>
```


## get-infra-alert.sh
- Usage
```
.get-nrql-alert <policyID> <NR_API_KEY>
```


## create-update-infra-alert.sh
- Usage
```
.create-update-infra-alert <jsonNRQL_policyID.json> <NR_KEY> <alert_count>
```

## create-nrql-alert.sh
- Usage
```
.create-nrql-alert <jsoninfra_policyID.json> <new_policyID> <NR_KEY> <alert_count>
```


## Bonus content
## get-dashboard.sh
 - to get a json of an existing NR Insights Dashboard, if you want to migrate an existing one over.
- Usage
```
.get-dashboard <policyID> <NR_API_KEY>
```
