#!/usr/bin/env bash

set -euo pipefail

INITIALIZED=''

if [ ! -d venv ]; then
  python3 -m venv venv
  venv/bin/pip install pip \
    wheel
  pip install -r requirements.txt
  INITIALIZED=1
fi

source venv/bin/activate

ARGS=()

while [[ $# -gt 0 ]]; do
  case $1 in
    update)
      if [ -z "${INITIALIZED}" ]; then
        pip install -r requirements.txt
      fi
      exit
      ;;
    *)
      ARGS+=("${1}")
      shift
      ;;
  esac
done

exec mkdocs "${ARGS[@]}"
