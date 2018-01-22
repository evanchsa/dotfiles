# .bashrc

# Source global definitions
if [ -f /etc/bashrc ]; then
	. /etc/bashrc
fi

# User specific aliases and functions
export EDITOR=vim

[ -f ~/.bashrc.local ] && source ~/.bashrc.local

[ -f ~/.ssh-find-agent.sh ] && source ~/.ssh-find-agent.sh

[ -f ~/.fzf.bash ] && source ~/.fzf.bash

if command -v tmux>/dev/null; then
  [[ ! $TERM =~ screen ]] && [ -z $TMUX ] && exec tmux
fi

