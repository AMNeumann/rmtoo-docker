#!/bin/bash

usage() { echo "Usage: $0 <project dir>" 1>&2; exit 1; }

while getopts "h" o; do
    case "${o}" in
        *)
            usage
            ;;
    esac
done
shift $((OPTIND-1))

if [[ $# < 1 ]]
then
   echo "Specify project directory" >&2
   exit 1
fi

docker run --user "$(id -u):$(id -g)" --rm --mount type=bind,src=$(realpath $1),target=/data rmtoo:latest "/data/make.sh"
