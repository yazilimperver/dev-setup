#!/bin/bash
echo "WSL icin gerekli ayarlamalari yapmak icin kullanacagimiz betikler."

# BILGI EDINELIM
################
lsb_release -a
uname -r
lscpu
lsblk
free -m

# TEMEL DEGISKENLER
###################
var_username="yazilimperver"
var_home="/home/${var_username}";
var_ssh_comment="ssh comment yazilimperver@yazilimperver.com";
var_perform_update=false
var_download_basic_tools=false
var_generate_ssh=false
var_instal_zsh=true
var_zsh_history_path="~/.zsh_histfile"

# GUNCELLEMELER
###############
if [ "$var_perform_update" = true ] ; then
    echo "[0] Guncellemeler Yapılacak";
    sudo apt-get update -y;
    sudo apt-get upgrade -y;
else
    echo "[0] Guncellemeler Atlandi";
fi

# TEMEL YUKLEMELER
##################
if [ "$var_perform_update" = true ] ; then
    echo "[1] Temel Yuklemeler Yapılacak";
    sudo apt-get install clang clang-tidy clang-format;
    sudo apt-get install cmake curl zip unzip tar;
    sudo apt-get install htop btop;
    sudo apt-get install tmuz;
else
    echo "[1] Temel Yuklemeler Atlandi";
fi

# SSH ANAHTARI OLUSTUR
######################
if [ "$var_generate_ssh" = true ] ; then
    echo "[2] SSH Anahtari Olusturulacak";
    ssh-keygen -t ed25519 -C "${var_ssh_comment}"
    eval "$(ssh-agent -s)"
    ssh-add ${var_home}/.ssh/id_ed25519
    cat ${var_home}/.ssh/id_ed25519.pub | xclip -selection clipboard;
    echo "Created ssh key and copied it to clipboard";
else
    echo "[2] SSH Anahtari Olusturma Atlandi";
fi

# ZSH KURULUM
######################
if [ "$var_instal_zsh" = true ] ; then
    echo "[2] ZSH Kurulacak";
    sudo apt install zsh -y
    zsh --version

    # Set Zsh as the Default Shell
    echo $SHELL
    chsh -s $(which zsh)

    # OhMyZsh Kurulum
    sh -c "$(wget https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh -O -)"

    # PowerLevel10K
    git clone --depth=1 https://github.com/romkatv/powerlevel10k.git ~/powerlevel10k
    echo 'source ~/powerlevel10k/powerlevel10k.zsh-theme' >>~/.zshrc

    # zsh-syntax-hightlighting, https://github.com/zsh-users/zsh-syntax-highlighting
    git clone https://github.com/zsh-users/zsh-syntax-highlighting.git ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-syntax-highlighting

    # .zshrc içerisinde "plugins=( [plugins...] zsh-syntax-highlighting)"" eklenir

    # zsh-autosuggestions, https://github.com/zsh-users/zsh-autosuggestions
    git clone https://github.com/zsh-users/zsh-autosuggestions ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-autosuggestions

    # .zshrc içerisinde "plugins=( [plugins...] zsh-autosuggestions)"" eklenir

    # colorls, https://github.com/athityakumar/colorls
    # Bunun oncesinde gcc ve make kurulu olmalı
    # Install ruby:
    sudo apt install ruby ruby-dev git

    # Clone repository    
    git clone https://github.com/athityakumar/colorls.git
    cd colorls

    # If you got an error regarding installing colorls with gem,
    # this command might fix it for you:
    sudo apt-get install libncurses5-dev
    sudo gem install colorls
    # unalias lc, ls
    alias lc='colorls -lA --sd'
    alias ls='colorls'

else
    echo "[2] ZSH Kurulumu Atlandi";
fi


# sed -i 's/\r$//' satir sonlari icin

# Shell goruntuleme
# grep yazilimperver /etc/passwd

# Shell degistirme
# sudo usermod --shell /bin/bash yazilimperver