#!/bin/bash

echo 'shutting down docker containers';
docker stop $(docker ps -a -q);
echo 'done';
