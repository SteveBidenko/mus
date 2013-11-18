# .bash_profile

# Get the aliases and functions
if [ -f ~/.bashrc ]; then
	. ~/.bashrc
fi

PATH=$PATH:$HOME/bin:/usr/local/git/bin

export PATH

export MT_HOME=/ebs/home/huffpo/steve/huffpost-web/lib/mt
export LANG=en_US.utf8

[ -f ~/.bash_mine ] && . ~/.bash_mine

# export LANG=ru_RU.utf8
