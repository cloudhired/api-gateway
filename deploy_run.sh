#!/bin/bash

# ESPv2_ARGS delimiter defined by ^^ e.g. ^++^ delimiter is ++
gcloud run deploy gateway \
  --image="$(cat /workspace/new_image.txt)" \
  --set-env-vars=ESPv2_ARGS=^++^--cors_preset=basic++--cors_allow_headers="x-auth-token" \
  --allow-unauthenticated \
  --region=us-central1 \
  --platform=managed \
  --project=cloudhired