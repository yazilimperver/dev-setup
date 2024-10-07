#!/bin/bash

sudo apt update -y;
sudo apt install git -y
git config --global user.email yazilimperver@gmail.com
git config --global user.name yazilimperver
git clone git@github.com:yazilimperver/dev-setup.git

sudo apt install snapd

# Terminal eklentileri
sudo apt install zsh
chsh -s /usr/bin/zsh

# oh my zsh'i kur
sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"

# install the powerline font
sudo apt-get install fonts-powerline

# SSH adimlari (1 oncelikle anahtar olustur, bunu repoya ekle)
# Manuel ekleme
ssh-keygen -t ed25519 -C "yazilimperver@gmail.com"
eval "$(ssh-agent -s)"
ssh-add ~/.ssh/id_ed25519
# asagidakini github ekliyoruz
cat ~/.ssh/id_ed25519.pub

# CLI uzerinden SSH ekleme
# Once gh'yu kuralim (guncel hal icin: https://github.com/cli/cli/blob/trunk/docs/install_linux.md)
type -p curl >/dev/null || sudo apt install curl -y
curl -fsSL https://cli.github.com/packages/githubcli-archive-keyring.gpg | sudo dd of=/usr/share/keyrings/githubcli-archive-keyring.gpg \
&& sudo chmod go+r /usr/share/keyrings/githubcli-archive-keyring.gpg \
&& echo "deb [arch=$(dpkg --print-architecture) signed-by=/usr/share/keyrings/githubcli-archive-keyring.gpg] https://cli.github.com/packages stable main" | sudo tee /etc/apt/sources.list.d/github-cli.list > /dev/null \
&& sudo apt update \
&& sudo apt install gh -y

# Siteden token olusturalim ve ortam degiskenlerine ekleyelim. https://docs.github.com/en/authentication/keeping-your-account-and-data-secure/creating-a-personal-access-token
$ gh auth login --with-token < mytoken.txt

# Sonra da asagidaki ile kendimizi ekleyelim
gh ssh-key add ~/.ssh/id_ed25519.pub --title "Yazilimperver WSL from CLI"

# Diger fontlar
curl -LJO https://github.com/romkatv/powerlevel10k-media/raw/master/MesloLGS%20NF%20Regular.ttf
curl -LJO https://github.com/romkatv/powerlevel10k-media/raw/master/MesloLGS%20NF%20Bold.ttf
curl -LJO https://github.com/romkatv/powerlevel10k-media/raw/master/MesloLGS%20NF%20Italic.ttf
curl -LJO https://github.com/romkatv/powerlevel10k-media/raw/master/MesloLGS%20NF%20Bold%20Italic.ttf
sudo mkdir -p ${conf_home}/.local/share/fonts;
sudo mv *.ttf ${conf_home}/.local/share/fonts;

# Install powerlevel10k for Oh my zsh
git clone --depth=1 https://github.com/romkatv/powerlevel10k.git ${ZSH_CUSTOM:-$HOME/.oh-my-zsh/custom}/themes/powerlevel10k

# Download zsh-autosuggestions :
git clone https://github.com/zsh-users/zsh-autosuggestions.git $ZSH_CUSTOM/plugins/zsh-autosuggestions

# Download zsh-syntax-higlighting 
git clone https://github.com/zsh-users/zsh-syntax-highlighting.git $ZSH_CUSTOM/plugins/zsh-syntax-highlighting

# Install fzf-tab 
git clone https://github.com/Aloxaf/fzf-tab ~/somewhere
source ~/somewhere/fzf-tab.plugin.zsh

# Install lsd
sudo apt update
sudo apt install snapd
sudo snap install lsd

# ya da 
wget https://github.com/Peltoche/lsd/releases/download/0.23.1/lsd-musl_0.23.1_amd64.deb
dpkg -i lsd-musl_0.23.1_amd64.deb


# zsh-completions
git clone https://github.com/zsh-users/zsh-completions.git
fpath=(path/to/zsh-completions/src $fpath)
rm -f ~/.zcompdump; compinit


# navi - An interactive cheatsheet tool for the command-line
cargo install --locked navi

# eger fzf'nin surumu .0.20 ise ubuntuda genelde oyle oluyor, onu bir silmek lazim
# https://www.youtube.com/watch?v=qgG5Jhi_Els
# sudo apt purge fzf deyip sonra asagidaki komutt
git clone --depth 1 https://github.com/junegunn/fzf.git ~/.fzf
~/.fzf/install

# zsh config icerisinde plugins=(... sudo) ile birlikte iki esc ile sudo otomatik ekleniyor
sudo apt-get install dconf-cli


# Ayarlar icin referans siteler
# https://medium.com/@satriajanaka09/setup-zsh-oh-my-zsh-powerlevel10k-on-ubuntu-20-04-c4a4052508fd
# ZSH Konfigurasyonu icin https://linuxhint.com/configure-setup-zshrc-zsh/

# `p10k configure` ile ayarlama yapabiliriz