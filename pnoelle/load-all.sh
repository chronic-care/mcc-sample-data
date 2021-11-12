#!/bin/bash

# Load all care plan resources into a single server

# arg1 = FHIR server endpoint URL
# . load-all https://api-v8-r4.hspconsortium.org/CarePlanningR4/open

for i in *.json; do
. ../load-bundle.sh $1 $i;
done
