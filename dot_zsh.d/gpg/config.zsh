# Invoke GnuPG-Agent the first time we login.
gpg-agent --daemon --no-grab -q

export GPG_TTY=`tty`
export GPG_AGENT_INFO
