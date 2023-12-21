# .bashrc

# If not running interactively, don't do anything
[[ $- != *i* ]] && return


#******vim******kyes******#
set -o vi
#**********alias**********#
alias cls="clear"
alias vi="vim"
alias ls='ls --color=auto'
alias ll="ls -l"
alias cat="bat"
alias i="sudo xbps-install -S"
alias r="sudo xbps-remove"
alias q=" xbps-query -Rs"
alias u="i;sudo xbps-install -u xbps ;sudo xbps-install -u"
alias hh="sudo make install clean"
alias nn="pkill slstatus ; slstatus &"
#******Form******bash******#
PS1='\[\e[1;38;2;106;168;79m\]\W ''\[\e[0m\] '
#******find*directory******# 
function Find_Directory(){
	cd "$(find $HOME -type d | fzy)"
}
#******find*directory******# 
function Find_file_Directory(){
	local file
	file="$(find $HOME -type f | fzy)"
	[[ -n $file ]] && cd $(dirname $file)
}
#******key*****binde******#
bind '"\C-n":"Find_Directory\n"'
bind '"\C-f":"Find_file_Directory\n"'

