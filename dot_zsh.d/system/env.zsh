if type "nvim" > /dev/null
then
  export EDITOR=$(which nvim)
  export GIT_EDITOR=$(which nvim)
else
  export EDITOR='vim'
  export GIT_EDITOR='vim'
fi
