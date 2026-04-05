#!/bin/bash
# needs to be run in the folder that contains world data


podman run --replace\
  --name mine1 \
  -d \
  -w /minecraft \
  -p 42069:42069 \
  -v ./world:/minecraft/world:Z \
docker.io/saucedbenny/benjarah:latest
