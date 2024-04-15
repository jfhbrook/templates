#!/usr/bin/env bash

# TODO: Need to update licenseify to pass through options and handle python
# style license identifiers
# npx licenseify '{{cookiecutter.license}}'
if [ '{{ cookiecutter.use_jupyterlab }}' == 'n' ]; then
  rm -f Untitled.ipynb
fi
