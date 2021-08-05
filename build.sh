#!/bin/bash

# description: - build, stage and deploy rendered notebook

cd "$(dirname "$(realpath "$0")")";

rm -R ./_main.*
rm -R ./_bookdown_files

Rscript -e "bookdown::render_book('./R/', 'gitbook', output_dir='../docs');"
Rscript -e "bookdown::render_book('./R/', 'word_document', output_dir='../docx');"
