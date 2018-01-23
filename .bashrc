# .bashrc

# Source global definitions
if [ -f /etc/bashrc ]; then
	. /etc/bashrc
fi

# User specific aliases and functions
export EDITOR=vim

alias ls='ls -A --color=auto'

[ -f ~/.bashrc.local ] && source ~/.bashrc.local

[ -f ~/.ssh-find-agent.sh ] && source ~/.ssh-find-agent.sh && set_ssh_agent_socket

[ -f ~/.fzf.bash ] && source ~/.fzf.bash

if command -v tmux>/dev/null; then
  [[ ! $TERM =~ screen ]] && [[ $- = *i* ]] && [ -z $TMUX ] && exec tmux
fi

