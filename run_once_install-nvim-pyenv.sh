#!/bin/bash
VER=3.10.5
VENV_NAME=py3nvim

# Load pyenv
eval "$(pyenv virtualenv-init - bash)"

pyenv install --skip-existing ${VER}
pyenv virtualenv ${VER} ${VENV_NAME}
pyenv activate ${VENV_NAME}
python3 -m pip install pynvim
