####### Must be first line #####################
#[[ $- == *i* ]] && source "$HOME/.local/share/blesh/ble.sh" --attach=none
################################################
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
 
alias rm='rm -i'
alias cp='cp -i'
alias mv='mv -i'

# export SYSTEMD_PAGER=
alias c='clear'
alias h='history'
alias grep='/bin/grep -i --color=auto'
alias ls='ls -h -F --color=tty'
#alias cat='/bin/cat -n'
alias df='/bin/df -h -T'
alias tree='tree -C -A -F'
alias tree='env LANG=C tree'
alias nslookup='/usr/local/bin/nslookup'
alias vi='/usr/bin/vim'
alias chrome='google-chrome'

#docker
alias d='docker'
alias dimg='docker images -a'
alias drm='docker rm -f $(docker ps -aq)'
alias drmi='docker rmi -f $(docker images -aq)'
alias dvrm='docker volume rm -f $(docker volume ls -q)'
alias dnrm='docker network rm $(docker network ls -q)'
alias dup='docker-compose up -d'

#
# Ansible Alias
#
alias ans='ansible'
alias anp='ansible-playbook'
alias and='ansible-doc'
alias anpr='ansible-playbook -C'
alias anpchk='ansible-playbook --syntax-check'
alias anx='ansible-galaxy'
alias anv='ansible-vault'
alias ansfs='ansible localhost -m setup | grep "ansible_*"'

#
# Specific Configuration
#
export PS1='\[\e[{{ ps1_color }};1m\][\u@\h\[\e[33;1m\] \w]\$ \[\e[m\]'

###### Must be last line #######################
#[[ ${BLE_VERSION-} ]] && ble-attach
################################################
