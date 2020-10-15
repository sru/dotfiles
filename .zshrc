# Update GNUPG agent.
export GPG_TTY="$(tty)"
gpg-connect-agent updatestartuptty /bye > /dev/null

alias e="${EDITOR}"
alias g='git'
alias t='task'

alias dots='git --git-dir="${HOME}/.dots" --work-tree="${HOME}"'
