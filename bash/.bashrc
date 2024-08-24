# .bashrc

## MY OWN SETTINGS
# shell
parse_git_branch() {
     git branch 2> /dev/null | sed -e '/^[^*]/d' -e 's/* \(.*\)/ {\1}/'
}
PS1="\[\e[1m\]\u@\h \W\[\e[91m\$(parse_git_branch)\] \[\e[00m\]\[\e[1m\]% \[\e[00m\]"
# PS1="\[\e[1;34m\](\w)\[\e[91m\$(parse_git_branch)\] \[\e[00m\]\[\e[1m\]> \[\e[00m\]"
# PS1="\[\e[32m\]\w \[\e[91m\]\$(parse_git_branch)\[\e[00m\]$ "
# PS1='$(basename "$PWD" |head -c1)\$ '
# PS1='\[\e[1m\][\u@\h \W]\$ ' #bash default

# Auto Completion Case Insensitivew
bind 'set completion-ignore-case on'
bind 'set show-all-if-ambiguous on'
# bind 'TAB:menu-complete'

# Some other aliases
alias cls='clear'
alias cat='bat --style=plain --paging=never' # In debian derivatives is batcat, in other it's just bat
alias ls='eza --group-directories-first'
alias tree='eza -T'
alias la='eza -la --group-directories-first'
alias l='eza -l'
alias vih='nvim .'
alias svih='sudo nvim .'
alias vi='nvim $1'
alias svi='sudo nvim $1'
alias git-user='git config --global user.name $1'
alias git-mail='git config --global user.email $1'
alias git-creds='git config --global credential.helper $1'
