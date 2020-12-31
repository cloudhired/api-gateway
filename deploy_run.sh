#!/bin/bash

# ESPv2_ARGS delimiter defined by ^^ e.g. ^++^ delimiter is ++
gcloud run deploy gateway \
  --image="$(cat /workspace/new_image.txt)" \
  --allow-unauthenticated \
  --region=us-central1 \
  --platform=managed \
  --project=cloudhired
  