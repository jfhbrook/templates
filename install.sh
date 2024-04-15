#!/usr/bin/env bash

mkdir -p ~/.local/bin

curl -sSfL https://raw.githubusercontent.com/jfhbrook/templates/main/bin/templatize > ~/.local/bin/templatize

chmod +x ~/.local/bin/templatize

if ! command -v templatize &> /dev/null; then
  echo "Add the following to your PATH, in your shell profile:

      export PATH=\$PATH:~/.local/bin"
fi
