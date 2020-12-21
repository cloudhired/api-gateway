#!/bin/bash


gcloud run deploy gateway \
  --image="$(cat /workspace/new_image.txt)" \
  --set-env-vars=ESPv2_ARGS=--cors_preset=basic \
  --allow-unauthenticated \
  --platform managed \
  --project=cloudhired