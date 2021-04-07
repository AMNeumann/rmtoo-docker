#!/bin/bash

usage() { echo "Usage: $0 <target dir>" 1>&2; exit 1; }

while getopts "h" o
do
   case "${o}" in
      *)
         usage
         ;;
   esac
done
shift $((OPTIND-1))


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
