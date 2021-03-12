#!/bin/bash

if [[ $# < 1 ]]
then
   echo "Specify project directory" >&2
   exit 1
fi

docker run --user "$(id -u):$(id -g)" --rm --mount type=bind,src=$(realpath $1),target=/data rmtoo:latest "/data/make.sh"
