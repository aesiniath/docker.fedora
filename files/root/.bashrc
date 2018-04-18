# .bashrc

# Source global definitions
if [ -f /etc/bashrc ]; then
	. /etc/bashrc
fi

export PS1='\[\e[38;5;108m\]$(date +%FT%TZ -u)\[\e[00m\]\n\[\e[00;35m\]\h \[\e[00;36m\]\w \[\e[38;5;244m\]\$ \[\e[00m\]'
