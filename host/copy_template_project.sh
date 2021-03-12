#!/bin/bash

if [[ $# < 1 ]]
then
   echo "Need to specify (local) path" >2
   exit 1
fi

docker create -ti --name src rmtoo:latest sh
docker cp src:/usr/local/rmtoo/contrib/template_project $1
docker rm -f src
