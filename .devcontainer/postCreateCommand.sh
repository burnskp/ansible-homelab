#!/bin/bash
set -euo pipefail

if ! [ -f .git/hooks/pre-commit ]; then
  echo "Installing pre-commit hooks..."
  pre-commit install
fi
