# Enable tab completion
source ~/.git-completion.bash

# colors!
green="\[\033[0;32m\]"
blue="\[\033[0;34m\]"
purple="\[\033[0;35m\]"
reset="\[\033[0m\]"

# Change command prompt
source ~/.git-prompt.sh
export GIT_PS1_SHOWDIRTYSTATE=1
# '\u' adds the name of the current user to the prompt
# '\$(__git_ps1)' adds git-related stuff
# '\W' adds the name of the current directory
export PS1="$purple\u$green\$(__git_ps1)$blue \W $ $reset"

# PATH for CMake
#PATH="/Applications/CMake.app/Contents/bin":"$PATH"

# Colored `ls`
export CLICOLOR=1;
export LSCOLORS=exfxcxdxbxegedabagacad

# Terminal Alias
alias vim="mvim -v"
alias klog="vim ~/Documents/git-repos/Knowledge_Log/knowledge_log.md"
alias git-repos="cd ~/Documents/git-repos/"
alias tmuxcc="vim ~/Documents/git-repos/Tmux-CheatSheet/tmux-cheatsheet.markdown"
alias gitcc="vim ~/Documents/git-repos/fch-recursos/git_cheatsheet.md"
alias jsproject="python3 ~/Documents/git-repos/Scripts/jsproject.py"
alias ll="ls -la"
alias www="cd /Library/WebServer/Documents"
alias gitl='git log --graph --abbrev-commit --decorate --format=format:"%C(bold yellow)%h%C(reset) - %C(bold cyan)%aD%C(reset) %C(bold green)(%ar)%C(reset)%C(bold yellow)%d%C(reset)%n"" %C(white)%s%C(reset) %C(dim white)- %an%C(reset)" --all'

# MacPorts Installer addition on 2015-11-18_at_19:05:38: adding an appropriate PATH variable for use with MacPorts.
export PATH="/opt/local/bin:/opt/local/sbin:$PATH"
# Finished adapting your PATH environment variable for use with MacPorts.

function gi() { curl -L -s https://www.gitignore.io/api/$@ ;}
