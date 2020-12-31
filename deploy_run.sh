#!/bin/bash


gcloud run deploy gateway \
  --image="$(cat /workspace/new_image.txt)" \
  --set-env-vars=ESPv2_ARGS=^++^--cors_preset=basic++--cors_allow_origin=your_host.com \
  --allow-unauthenticated \
  --region=us-central1 \
  --platform=managed \
  --project=cloudhired