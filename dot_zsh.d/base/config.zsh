# Enable RVM
if [ -e "$HOME/.rvm" ]; then
  export PATH="$PATH:$HOME/.rvm/bin" # Add RVM to PATH for scripting
  source ~/.rvm/scripts/rvm
fi

# Enable virtualenv
if which pyenv-virtualenv-init > /dev/null; then eval "$(pyenv virtualenv-init -)"; fi
