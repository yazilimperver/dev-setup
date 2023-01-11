#!/bin/bash
### CONFIGURATION
# won't use `source` due to security concerns
conf_user_name="yazilimperver"
conf_home="/home/${conf_user_name}";
conf_ssh_comment="ssh comment yazilliperver@gmail.com";
conf_xdg_dirs=`cat config/xdg_dirs.conf`;
conf_zshrc=`cat config/zshrc-antigen.conf`;
conf_alacritty=`cat config/alacritty.yml`;
conf_ohmyzsh_custom_dir="${conf_home}/.oh-my-zsh/custom";

echo "Setup user-dirs.dirs";
echo "${conf_xdg_dirs}" > ${conf_home}/.config/user-dirs.dirs
echo "Remove old user-dirs";
rm -r ${conf_home}/download ${conf_home}/picture ${conf_home}/Documents ${conf_home}/Music ${conf_home}/Videos ${conf_home}/Desktop;
echo "Create new user-dirs";
mkdir ${conf_home}/yzlmprvr-xdg ${conf_home}/download ${conf_home}/picture ${conf_home}/yzlmprvr-xdg/Templates ${conf_home}/yzlmprvr-xdg/Public ${conf_home}/yzlmprvr-xdg/Documents ${conf_home}/yzlmprvr-xdg/Music ${conf_home}/yzlmprvr-xdg/Videos ${conf_home}/yzlmprvr-xdg/Desktop;
#
#echo "Updating stuff";
#sudo apt update -y;
#
#echo "Download stuff";
#sudo apt install curl ninja-build git cmake clang build-essential zsh xclip flameshot;
#
#echo "Alacritty"
#sudo add-apt-repository ppa:aslatter/ppa;
#sudo apt update -y;
#sudo apt install alacritty -y;


#echo "Get vscode";
#sudo apt install software-properties-common apt-transport-https wget -y;
#wget -q https://packages.microsoft.com/keys/microsoft.asc -O- | sudo apt-key add -;
#sudo add-apt-repository "deb [arch=amd64] https://packages.microsoft.com/repos/vscode stable main";
#sudo apt install code;
#code --version;

#echo "Creating ssh key...";
#ssh-keygen -t ed25519 -C "${conf_ssh_comment}"
#eval "$(ssh-agent -s)"
#ssh-add ${conf_home}/.ssh/id_ed25519
#cat ${conf_home}/.ssh/id_ed25519.pub | xclip -selection clipboard;
#echo "Created ssh key and copied it to clipboard";
# TODO: GitHubCLI ile bu anahtari buradan ekleyebiliriz
#
echo "= Setup zsh =";
echo "Setup oh-my-zsh";
sh -c "$(curl -fsSL https://raw.github.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"
mkdir -p "${conf_ohmyzsh_custom_dir}";
echo "Get zsh plugins";
/usr/bin/git clone https://github.com/zsh-users/zsh-syntax-highlighting.git $conf_ohmyzsh_custom_dir/plugins/zsh-syntax-highlighting;
/usr/bin/git clone https://github.com/zsh-users/zsh-autosuggestions.git $conf_ohmyzsh_custom_dir/plugins/zsh-autosuggestions;
/usr/bin/git clone --depth=1 https://github.com/romkatv/powerlevel10k.git $conf_ohmyzsh_custom_dir/themes/powerlevel10k;
echo "Setup .zshrc";
echo "${conf_zshrc}" > ${conf_home}/.zshrc;

echo "Download fonts for p10k";
curl -LJO https://github.com/romkatv/powerlevel10k-media/raw/master/MesloLGS%20NF%20Regular.ttf
curl -LJO https://github.com/romkatv/powerlevel10k-media/raw/master/MesloLGS%20NF%20Bold.ttf
curl -LJO https://github.com/romkatv/powerlevel10k-media/raw/master/MesloLGS%20NF%20Italic.ttf
curl -LJO https://github.com/romkatv/powerlevel10k-media/raw/master/MesloLGS%20NF%20Bold%20Italic.ttf
mkdir -p ${conf_home}/.local/share/fonts;
mv *.ttf ${conf_home}/.local/share/fonts;

#echo "Download iosevka font";
# sudo ./install-fonts.sh
#
echo "Setup alacritty config";
mkdir -p ${conf_home}/.config/alacritty;
echo ${conf_alacritty} > ${conf_home}/.config/alacritty/alacritty.yml;