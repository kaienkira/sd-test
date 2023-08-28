#!/bin/bash

python -m venv pyenv
if [ $? -ne 0 ]; then exit 1; fi
source pyenv/bin/activate
if [ $? -ne 0 ]; then exit 1; fi

mkdir pytmp
if [ $? -ne 0 ]; then exit 1; fi
TMPDIR=pytmp pip3 install torch torchvision torchaudio --index-url https://download.pytorch.org/whl/cu118
if [ $? -ne 0 ]; then exit 1; fi

exit 0
