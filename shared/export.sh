# ------------------------------------------------------------------------------
# Setup local variables
# ------------------------------------------------------------------------------
GIT_COMPLETION_FILE=/usr/share/git-core/contrib/completion/git-prompt.sh

export LC_ALL=en_US.UTF-8
export LANG=en_US.UTF-8
export EDITOR=vim
export GIT_EDITOR=vim
export GIT_PS1_SHOWDIRTYSTATE=1
export LS_COLORS="exfxcxdxcxegedabagacad"
export PATH="/usr/local/bin:/usr/local/sbin:$HOME/.yarn/bin:/usr/local/opt/gpg-agent/bin:$PATH"

export PATH=~/.composer/vendor/bin:$PATH
export LDFLAGS="-L/opt/homebrew/opt/mysql-client/lib"
export CPPFLAGS="-I/opt/homebrew/opt/mysql-client/include"
