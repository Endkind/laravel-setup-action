#!/bin/bash

set -e

if [ ! -d ".venv" ]; then
  python3 -m venv .venv
fi

source .venv/bin/activate

pip install --upgrade pip
pip install pre-commit

if [ -f "requirements.txt" ]; then
  pip install -r requirements.txt
fi

pre-commit install

echo "Setup complete"
