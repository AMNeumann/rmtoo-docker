#!/bin/bash

if [[ $# < 1 ]]
then
   echo "Need to specify (local) path" >&2
   exit 1
fi

DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" &> /dev/null && pwd )"

docker create -ti --name sourcecontainer rmtoo:latest sh
docker cp sourcecontainer:"/usr/local/rmtoo/contrib/template_project" $1
docker rm -f sourcecontainer

patchfile=${DIR}/alpine.patch

cd $1
patch < ${patchfile}
