#!/bin/bash -e
VER=3.10.5
VENV_NAME=py3nvim

# Load pyenv
eval "$(pyenv init -)"
eval "$(pyenv virtualenv-init - bash)"

pyenv install --skip-existing ${VER}

# Create the venv if it doesn't exist
if ! pyenv virtualenvs | grep -q ${VENV_NAME}
then
  pyenv virtualenv ${VER} ${VENV_NAME}
fi

# Activate the venv and install the required pip modules
pyenv activate ${VENV_NAME}
python3 -m pip install pynvim
