#!/bin/bash

PREFIX ?= ~/.local/bin

install -m 755 host/copy_template_project.sh ${PREFIX}/copy_template_project.sh
install -m 755 host/run_rmtoo.sh ${PREFIX}/run_rmtoo.sh

