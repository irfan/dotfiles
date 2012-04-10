# ~/.bashrc file
#
# https://github.com/irfan/dotfiles
# http://irfandurmus.com
#
# it shows pretty good terminal prompt
# writed couple of years ago but committed in April of 2012
# It shorter your prompt text but also make the prompt more understandable!
#
# Examples:
# /opt/local/etc                :   /opt/local/etc
# /opt/local/etc/openssl/misc   :   /opt/../openssl/misc
#
# In home directory:
# /Users/irfan                                          : ~
# ~/projects/javascript/jquery-plugins                  : ~/projects/javascript/jquery-plugins
# ~/projects/javascript/jquery-plugins/star-rating/min  : ~/projects/../star-rating/min
#
# For installation just copy to your home directory
#

export CLICOLOR=1
export LSCOLORS=ExFxCxDxBxegedabagacad

function pretty_prompt () {
	_IFS=$IFS;
	DIR=`pwd|sed -e "s|$HOME|~|"`;
	IFS="/" && S=($DIR);
	L=${#S[@]};
	IFS=$_IFS;
	if [ $L -gt 4 ]; then 
		DIR="${S[0]:0:1}/${S[1]}/../${S[$L-2]}/${S[$L-1]}";
	fi
}


PROMPT_COMMAND=pretty_prompt;
export PS1="\e[33;40m\$DIR \$ \e[0m"
export SVN_EDITOR=vi
export PATH=/opt/local/bin:/opt/local/sbin:$PATH
