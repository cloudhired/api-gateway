#!/bin/bash

CORS='^++^--cors_preset=basic++--cors_allow_headers=DNT,User-Agent,X-Requested-With,If-Modified-Since,Cache-Control,Content-Type,Range,Authorization,x-auth-token'


# ESPv2_ARGS delimiter defined by ^^ e.g. ^++^ delimiter is ++
gcloud run deploy gateway \
  --image="$(cat /workspace/new_image.txt)" \
  --set-env-vars=ESPv2_ARGS=$CORS \
  --allow-unauthenticated \
  --region=us-central1 \
  --platform=managed \
  --project=cloudhired