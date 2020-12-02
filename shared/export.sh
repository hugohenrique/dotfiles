# ------------------------------------------------------------------------------
# Setup local variables
# ------------------------------------------------------------------------------
GIT_COMPLETION_FILE=/usr/share/git-core/contrib/completion/git-prompt.sh

# ------------------------------------------------------------------------------
# Setup environment variables
# ------------------------------------------------------------------------------
export PATH=~/.npm-packages/bin:$PATH
if [[ "${OSTYPE}" == "linux-gnu" ]]; then
  export PATH=~/.npm-packages/bin:~/.pyenv/bin:~/.local/bin:~/.config/composer/vendor/bin:$PATH
  export JAVA_HOME=/etc/alternatives/java_sdk
elif [[ "$OSTYPE" == "darwin"* ]]; then
  export PATH=~/.composer/vendor/bin:$PATH
  if [ -f /usr/libexec/java_home ]; then
    export JAVA_HOME=$(/usr/libexec/java_home)
  fi
fi

export LC_ALL=en_US.UTF-8
export LANG=en_US.UTF-8
export EDITOR=vim
export GIT_EDITOR=vim
export GIT_PS1_SHOWDIRTYSTATE=1
export LS_COLORS="exfxcxdxcxegedabagacad"
export PATH="/usr/local/bin:/usr/local/sbin:$HOME/.yarn/bin:/usr/local/opt/gpg-agent/bin:$PATH"

export ANDROID_HOME=$HOME/Library/Android/sdk
export PATH=$PATH:$ANDROID_HOME/emulator
export PATH=$PATH:$ANDROID_HOME/tools
export PATH=$PATH:$ANDROID_HOME/tools/bin
export PATH=$PATH:$ANDROID_HOME/platform-tools
export PATH=~/.composer/vendor/bin:$PATH
