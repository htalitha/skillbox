#!/bin/bash

cd ~/skillbox
docker build . -t skillbox-flatris
docker-compose up -d
