export PATH="$PATH:/usr/local/git/bin:/usr/local/bin:/opt/local/bin:/opt/local/sbin:/opt/local/bin:/opt/local/sbin:/usr/bin:/bin:/usr/sbin:/sbin:/usr/local/bin:/opt/X11/bin:$HOME/bin"
export MANPATH="/usr/local/man:/usr/local/mysql/man:/usr/local/git/man:$MANPATH"

if [ `uname` = "Darwin" ]
then
  export PATH="$PATH:$HOME/Library/Python/2.7/bin/"
fi
