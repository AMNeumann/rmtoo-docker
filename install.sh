#!/bin/bash

DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" &> /dev/null && pwd )"
cd ${DIR}

PREFIX=${PREFIX:-"${HOME}/.local/bin"}

install -m 755 host/copy_template_project.sh ${PREFIX}/copy_template_project.sh
install -m 755 host/run_rmtoo.sh ${PREFIX}/run_rmtoo.sh
install -m 644 host/alpine.patch ${PREFIX}/alpine.patch

