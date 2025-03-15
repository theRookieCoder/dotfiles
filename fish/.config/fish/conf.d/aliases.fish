# Custom commands
alias gh_token 'set -gx GITHUB_TOKEN $GITHUB_PAT'
alias reload "source ~/.config/fish/**/*.fish"
alias ferium_stable "$HOME/bin/ferium --config $HOME/.config/ferium/config_v4.json"
alias l "eza -lh -F --icons --git"
alias ard arduino-cli
alias unset "set -e"
alias rm trash

abbr -a cmt --position command "git commit -aS -m"
