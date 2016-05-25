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
PATH="/Applications/CMake.app/Contents/bin":"$PATH"

# Terminal Alias
alias subl="/Applications/Sublime\ Text.app/Contents/SharedSupport/bin/subl"
alias vim="mvim -v"
alias klog="vim ~/Documents/git-repos/Knowledge_Log/knowledge_log.md"
alias todo="vim ~/Documents/git-repos/Knowledge_Log/to-do-list.md"
alias tt="cat ~/Dropbox/DAW/horario.md"
alias git-repos="cd ~/Documents/git-repos/"
alias tmuxcc="vim ~/Documents/git-repos/Tmux-CheatSheet/tmux-cheatsheet.markdown"
alias gitcc="vim ~/Documents/git-repos/fch-recursos/git_cheatsheet.md"
alias jsproject="python3 ~/Documents/git-repos/Scripts/jsproject.py"
alias session="vim -S Session.vim"
alias ll="ls -la"
alias bioinf="cd ~/Documents/git-repos/Internship/bioinfo-apps"
alias www="cd /Library/WebServer/Documents"
alias qstat="cat ~/Documents/git-repos/Internship/cluster-status/testFiles/qstat_output.txt"
alias qhost="cat ~/Documents/git-repos/Internship/cluster-status/testFiles/qhost_output.txt"


# MacPorts Installer addition on 2015-11-18_at_19:05:38: adding an appropriate PATH variable for use with MacPorts.
export PATH="/opt/local/bin:/opt/local/sbin:$PATH"
# Finished adapting your PATH environment variable for use with MacPorts.

function gi() { curl -L -s https://www.gitignore.io/api/$@ ;}
