# rmtoo-docker

This is a dockerization of the [rmtoo requirement engineering
tool](http://rmtoo.florath.net/).

## Installation

Use `install.sh` to install the auxiliary scripts. By default, they end up in
`~/.local/bin`. You can change this by setting the environment variable
`PREFIX`.

## Usage

In addition to the Dockerfile, there are a couple of auxiliary scripts.

### Copy template project

The Docker container contains the rmtoo template project. It can be copied to
your own project by using the `copy_template_project.sh` script. This script
takes a path as an argument. If the path exists, say `foo`, the script copies
the template project to `foo/template_project`. If the path does not exist, it
is created and the template project's files are copied there.

After the script copies the template project to the destination folder, it
patches the Makefile and make.sh to make rmtoo run within the container.

### Run rmtoo

Running rmtoo is rather simple, simply use the script `run_rmtoo.sh` with the
path to the requirements project as an argument. The output of make ends up in
`./make.log`. rmtoo produces its output in the `artifacts` subdirectory of the
project directory. Hence, it is advisible to add it to your `.gitignore`.
