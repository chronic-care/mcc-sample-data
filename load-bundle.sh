#!/bin/bash

# PUT a transaction bundle to a server.

# arg1 = server endpoint URL
# arg2 = filename

# . load-bundle.sh https://api-v8-r4.hspconsortium.org/CarePlanningR4/open dirname/my-bundle-file.json

echo
echo Loading bundle from $2
curl -X POST $1 -H 'Content-type: application/fhir+json' -H 'Accept: application/fhir+json' --data-binary @$2
