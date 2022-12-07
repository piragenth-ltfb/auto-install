#!/bin/bash -i

bash pkg-install.sh

sh -c "$(curl -fsSL https://raw.github.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"

echo '''

if [ -x "$(command -v colorls)" ]; then
    alias ls="colorls"
    alias la="colorls -g -al"
fi

export PATH=/home/piragenth/.local/bin:$PATH
alias cat='bat'
alias vim='lvim'
alias rm='rip'
alias cp='xcp'
alias grep='ripgrep'
alias find='fd'
alias ps='procs'
alias tree='broot'
alias du='dust'
alias top='btm'
alias web='web_search'
eval "$(zoxide init zsh)"
alias cd='z'

if [ -x "$(command -v colorls)" ]; then
    alias ls="colorls"
    alias la="colorls -al"
fi
''' >> ~/.zshrc

LV_BRANCH='release-1.2/neovim-0.8' bash <(curl -s https://raw.githubusercontent.com/lunarvim/lunarvim/master/utils/installer/install.sh)

