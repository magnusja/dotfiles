
set -x LC_ALL en_US.UTF-8
set -x LANG en_US.UTF-8

set -x NVM_DIR ~/.nvm
set -x GOPATH ~/Library/go

set -x PATH $HOME/.cargo/bin /usr/local/opt/qt5/bin /Users/magnusja/Library/Android/sdk/platform-tools $PATH
set -x CMAKE_PREFIX_PATH /usr/local/opt/qt5/lib/cmake 

alias init_npm='bass source (brew --prefix nvm)/nvm.sh'
function nvm
  bass source (brew --prefix nvm)/nvm.sh --no-use ';' nvm $argv
end

alias wf='watch grep \"cpu MHz\" /proc/cpuinfo'
alias dotfiles='/usr/bin/git --git-dir=$HOME/.dotfiles/ --work-tree=$HOME/'
alias init_docker='docker-machine start default; eval (docker-machine env default)'
alias init_anaconda2='set -x PATH /usr/local/anaconda2/bin $PATH'
alias init_poetry='set -x PATH $HOME/.poetry/bin $PATH'
alias init_anaconda3='set -x PATH /usr/local/anaconda3/bin $PATH; source (conda info --root)/etc/fish/conf.d/conda.fish'
alias init_pyenv='status --is-interactive; and source (pyenv init -|psub)'

alias gcm='git checkout master'
alias gp='git pull'
alias gmm='git merge master'
alias g='git'


set -x EDITOR /usr/bin/vim

set -x BLOCKSIZE 1k

alias grep='grep --color=auto'
alias cp='cp -iv'                           # Preferred 'cp' implementation
alias mv='mv -iv'                           # Preferred 'mv' implementation
alias mkdir='mkdir -pv'                     # Preferred 'mkdir' implementation
alias ll='ls -FGlAhp'                       # Preferred 'ls' implementation
alias less='less -FSRXc'                    # Preferred 'less' implementation
#cd() { builtin cd "$@"; ll; }               # Always list directory contents upon 'cd'
alias cd..='cd ../'                         # Go back 1 directory level (for fast typers)
alias ..='cd ../'                           # Go back 1 directory level
alias ...='cd ../../'                       # Go back 2 directory levels
alias .3='cd ../../../'                     # Go back 3 directory levels
alias .4='cd ../../../../'                  # Go back 4 directory levels
alias .5='cd ../../../../../'               # Go back 5 directory levels
alias .6='cd ../../../../../../'            # Go back 6 directory levels
alias f='open ./'                  	    # f:            Opens current directory in MacOS Finder or uses xdg-open on Linux
alias c='clear'                             # c:            Clear terminal display
alias show_options='shopt'                  # Show_options: display bash options settings
alias fix_stty='stty sane'                  # fix_stty:     Restore terminal settings when screwed up
alias cic='set completion-ignore-case On'   # cic:          Make tab-completion case-insensitive
alias DT='tee ~/Desktop/terminalOut.txt'    # DT:           Pipe content to file on MacOS Desktop


source ~/.config/fish/functions/fish_command_timer.fish
