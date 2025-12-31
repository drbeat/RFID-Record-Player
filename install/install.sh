#!/bin/bash

set -e

if ! command -v python3 >/dev/null 2>&1; then
    echo "Python3 is not installed. Please install it first."
    exit 1
fi

echo "Creating virtual environment"
python3 -m venv venv
source venv/bin/activate

echo "Installing python dependencies"
pip install -r install/requirements.txt -qq > /dev/null

echo "Running setup script"
python3 install/setup.py