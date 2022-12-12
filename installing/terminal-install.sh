#!/bin/bash -i

#bash pkg-install.sh

#sh -c "$(curl -fsSL https://raw.github.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"

git clone https://github.com/zsh-users/zsh-syntax-highlighting.git ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-syntax-highlighting
git clone https://github.com/zsh-users/zsh-autosuggestions ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-autosuggestions
git clone https://github.com/romkatv/powerlevel10k.git $ZSH_CUSTOM/themes/powerlevel10k
#mkdir ~/.npm-global
#npm config set prefix '~/.npm-global'
#echo 'export PATH=~/.npm-global/bin:$PATH' >> ~/.profile
#source ~/.profile
#npm install -g jshint

#cp ~/.zshrc ~/.zshrc.bakup

sed -i 's|plugins=(git)|
plugins=(git web-search zsh-syntax-highlighting zsh-autosuggestions)
export PATH="/home/$USER/.local/share/gem/ruby/3.0.0/bin:$PATH"
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
eval '$(zoxide init zsh)'
alias cd='z'

if [ -x "$(command -v colorls)" ]; then
    alias ls="colorls"
    alias la="colorls -al"
fi
' ~/.zshrc

#LV_BRANCH='release-1.2/neovim-0.8' bash <(curl -s https://raw.githubusercontent.com/lunarvim/lunarvim/master/utils/installer/install.sh)

