# .bashrc

# Source global definitions
if [ -f /etc/bashrc ]; then
	. /etc/bashrc
fi

# User specific environment
if ! [[ "$PATH" =~ "$HOME/.local/bin:$HOME/bin:" ]]
then
    PATH="$HOME/.local/bin:$HOME/bin:$PATH"
fi
export PATH

# Uncomment the following line if you don't like systemctl's auto-paging feature:
# export SYSTEMD_PAGER=

# User specific aliases and functions
alias rlogin='ssh rgniadek@rlogin.cs.vt.edu'
alias acidburn='ssh -p 2222 ryan21401@acidburn.vtluug.org'
alias h='history 25'
alias fortune="fortune|cowsay -f tux|lolcat"
umask 077
PS1='[\! \u@\h \w] $ '
alias pip='pip3'
alias dogecoin="echo 'reeeeee'|cowsay|lolcat"
alias commits="git log --oneline"

# # >>> conda initialize >>>
# # !! Contents within this block are managed by 'conda init' !!
# __conda_setup="$('/home/rgniadek/miniconda3/bin/conda' 'shell.bash' 'hook' 2> /dev/null)"
# if [ $? -eq 0 ]; then
#     eval "$__conda_setup"
# else
#     if [ -f "/home/rgniadek/miniconda3/etc/profile.d/conda.sh" ]; then
#         . "/home/rgniadek/miniconda3/etc/profile.d/conda.sh"
#     else
#         export PATH="/home/rgniadek/miniconda3/bin:$PATH"
#     fi
# fi
# unset __conda_setup
# # <<< conda initialize <<<

