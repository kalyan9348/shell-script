#!/bin/bash

set -e

ls -ltr

touch example.txt

echo "Before wrong command" #after this command we will be getting error since the below command was error

lsfff

echo "After wrong command"

cd /tmp

cd /home/centos
cd /tmo