#!/usr/bin/env zsh
TFENV_DIR=/usr/local/Cellar/tfenv/3.0.0/bin

if [ -d $TFENV_DIR ]
then
  export PATH=$TFENV_DIR:$PATH
fi
