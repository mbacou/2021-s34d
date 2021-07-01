#!/bin/bash

# description: - build, stage and deploy rendered notebook

cd "$(dirname "$(realpath "$0")")";

rm -R ./_main.*
rm -R ./_bookdown_files

Rscript -e "bookdown::render_book('.', output_dir='./docs');"
