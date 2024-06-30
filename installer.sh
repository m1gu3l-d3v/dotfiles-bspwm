#  Exit Root, not necesary
if (( ! EUID )); then
  exit
fi

dir_actual=$(pwd)

# Layouts with bsp-layout (optional)
#sudo apt install wget
#wget -O - https://raw.githubusercontent.com/phenax/bsp-layout/master/install.sh | bash -

# Java (for me)
#sudo apt install default-jdk
echo '_JAVA_AWT_WM_NONREPARENTING=1' | sudo tee -a /etc/environment
echo 'QT_QPA_PLATFORMTHEME=qt5ct' | sudo tee -a /etc/environment

# Sound
sudo apt install pulseaudio #Comment out this line if you already have an audio server (Pipewire)

# Volume initialize in 100%
pactl set-sink-volume @DEFAULT_SINK@ 100%

# Updates user default directories in XDG-based desktop environments
sudo apt install xdg-user-dirs
xdg-user-dirs-update
xdg-user-dirs

# Backup Config directories
mkdir -p ~/.config/configs_backups/
rm -rf ~/.local/share/nvim/
rm -rf ~/.cache/nvim/
rm -rf ~/.local/state/nvim/
mv ~/.config/alacritty{,} ~/.config/configs_backups/
mv ~/.config/bpytop{,} ~/.config/configs_backups/
mv ~/.config/bspwm{,} ~/.config/configs_backups/
mv ~/.config/copyq{,} ~/.config/configs_backups/
mv ~/.config/dunst{,} ~/.config/configs_backups/
mv ~/.config/flameshot{,} ~/.config/configs_backups/
mv ~/.config/gtk-2.0{,} ~/.config/configs_backups/
mv ~/.config/gtk-3.0{,} ~/.config/configs_backups/
mv ~/.config/mpd{,} ~/.config/configs_backups/
mv ~/.config/ncmpcpp{,} ~/.config/configs_backups/
mv ~/.config/neofetch{,} ~/.config/configs_backups/
mv ~/.config/nitrogen{,} ~/.config/configs_backups/
mv ~/.config/nvim{,} ~/.config/configs_backups/
mv ~/.config/polybar{,} ~/.config/configs_backups/
mv ~/.config/qt5ct{,} ~/.config/configs_backups/
mv ~/.config/rofi{,} ~/.config/configs_backups/
mv ~/.config/sxhkd{,} ~/.config/configs_backups/
mv ~/.config/wal{,} ~/.config/configs_backups/
mv ~/.config/screenkey.json{,} ~/.config/configs_backups/

# Create directories
mkdir -p ~/.config/ && cp -r config/* ~/.config/
mkdir -p ~/.cache/ && cp -r cache/* ~/.cache/
mkdir -p ~/.local/ && cp -r local/* ~/.local/
mkdir -p ~/.fonts/HurmitNerdFont/
mkdir -p ~/.icons/
mkdir -p ~/.themes/
mkdir -p ~/.local/bin/
mkdir -p $(xdg-user-dir PICTURES)/Screenshots/

# Set Icons and Themes
wget https://github.com/ryanoasis/nerd-fonts/releases/download/v3.2.1/Hermit.zip
sudo apt install unzip
unzip Hermit.zip
mv -f *.otf ~/.fonts/HurmitNerdFont

# HOME
mv home/aliases ~/.aliases
mv home/gtkrc-2.0 ~/.gtkrc-2.0
mv home/tmux.conf ~/.tmux.conf
mv home/xinitrc ~/.xinitrc
mv home/xsettingsd ~/.xsettingsd

# Execution Permissions
chmod +x ~/.aliases
chmod +x ~/.local/bin/*
chmod +x ~/.config/bspwm/*
chmod +x ~/.config/polybar/*
chmod +x ~/.config/rofi/scripts/*
chmod +x ~/.config/polybar/scripts/*
chmod +x ~/.config/sysfetch/sysfetch

# Path
touch ~/.bashrc
echo '' >> ~/.bashrc
echo 'source $HOME/.aliases' >> ~/.bashrc
touch ~/.zshrc
echo '' >> ~/.zshrc
echo 'source $HOME/.aliases' >> ~/.zshrc
source ~/.bashrc
source ~/.zshrc
touch ~/.zshenv
echo 'source $HOME/.aliases' >> ~/.zshenv

# Wallpapers
sudo apt install rename
mkdir ~/temptemptemp
sudo mkdir -p /usr/share/backgrounds/
git clone https://github.com/m1gu3l-d3v/wallpapers ~/temptemptemp/wallpapers/
sudo mv ~/temptemptemp/wallpapers /usr/share/backgrounds/wallpapers/
find /usr/share/backgrounds/wallpapers/ -depth -name "*'*" -execdir rename "s/'//g" '{}' \;
find /usr/share/backgrounds/wallpapers/ -type f -exec rename 's/[\[\]]//g' {} +
find /usr/share/backgrounds/wallpapers/ -depth -name "* *" -execdir rename 's/ /_/g' '{}' \;

# OOMOX
sudo apt install gettext libgdk-pixbuf2.0-dev libxml2-utils gtk2-engines-murrine librsvg2-bin libgtk-3-dev bc sassc
pip install pillow --break-system-packages
cd ~/ && git clone https://github.com/themix-project/oomox.git --recursive
mv ~/oomox/ ~/.oomox/
cd ~/.oomox/ && make -f po.mk install

# Vimix-cursors
cd ~/ && git clone https://github.com/vinceliuice/Vimix-cursors
cd ~/Vimix-cursors && sudo ./install.sh

# btop theme (symbolic link)
rm ~/.config/btop/themes/btop.theme
mkdir -p ~/.config/btop/themes/ && ln -s ~/.cache/colorschemes/btop.theme ~/.config/btop/themes/btop.theme

# bpytop theme (symbolic link)
rm ~/.config/bpytop/themes/btop.theme
mkdir -p ~/.config/bpytop/themes/ && ln -s ~/.cache/colorschemes/btop.theme ~/.config/bpytop/themes/btop.theme

# dunst theme (symbolic link)
mkdir -p ~/.config/dunst/ && ln -s ~/.cache/colorschemes/dunstrc ~/.config/dunst/dunstrc

# Gnome Polkit
sudo apt install policykit-1-gnome

# Set terminal default in Gnome and Cinnamon
gsettings set org.gnome.desktop.default-applications.terminal exec /usr/bin/alacritty
gsettings set org.cinnamon.desktop.default-applications.terminal exec /usr/bin/alacritty

source ~/.bashrc
source ~/.zshrc

# NEOVIM 0.9.5 IN REPO SID (UNSTABLE)
sudo apt install neovim nodejs npm ripgrep
#OR
# NEOVIM STABLE VERSION 0.9.5
#sudo apt autoremove nvim
#sudo apt install curl cmake nodejs npm
#curl https://sh.rustup.rs -sSf | sh
#source ~/.bashrc
#source ~/.zshrc
#cargo install bob-nvim
#  Alternative: cargo install --git https://github.com/MordechaiHadad/bob.git
#bob install stable
#bob use stable
#sudo cp ~/.local/share/bob/v0.9.5/nvim-linux64/bin/nvim /usr/bin/nvim
#sudo cp ~/.local/share/bob/nvim-bin/nvim /usr/bin/nvim

# Language
#setxkbmap latam
#sudo localectl set-locale LANG=es_ES.UTF-8

# Neofetch ascii correction directory
sed -i "s|/home/mike/.config/neofetch/hack3.txt|/home/$(whoami)/.config/neofetch/hack3.txt|g" ~/.config/neofetch/config.conf

# Packages
# For use startx ("display manager") https://wiki.archlinux.org/title/xinit
sudo apt install xinit x11-utils
sudo apt update && sudo apt upgrade
# Basic and recomended packages for bspwm
sudo apt install bspwm polybar sxhkd alacritty thunar rofi mpd ncmpcpp gtk2-engines nitrogen dunst lxappearance xdg-user-dirs mpd ncmpcpp xclip webp-pixbuf-loader xsettingsd psmisc picom coreutils unrar zip
sudo apt update && sudo apt upgrade

# Solution: Slow startup for applications
sudo apt autopurge xdg-desktop-portal-gtk

# mpd service setup
killall mpd
sudo systemctl stop mpd.service
sudo systemctl disable mpd.service
systemctl --user enable --now mpd.service

# zsh
sudo apt install zsh zsh-autosuggestions
chsh $(whoami) -s /bin/zsh

# Set color
~/.config/colorschemes/script CatppuccinMocha
~/.config/colorschemes/gtk-gen

# Zsh PROMPT git
mkdir -p ~/.zsh
git clone --depth=1 https://github.com/woefe/git-prompt.zsh ~/.zsh/git-prompt.zsh
echo "source ~/.zsh/git-prompt.zsh/git-prompt.zsh" >> .zshrc
echo "source ~/.zsh/git-prompt.zsh/examples/rprompt.zsh" >> .zshrc
