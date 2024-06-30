#Credits https://github.com/PrayagS/polybar-spotify
# WRONG:
# Using third-party repositories as recommended below is not supported by the Debian project
# and could break your system now or when you upgrade later. Use with caution at your own risk! (from of https://wiki.debian.org/spotify)
sudo apt install git
cd ~/
git clone https://github.com/noctuid/zscroll && cd zscroll && sudo python3 setup.py install
sudo apt install playerctl

# Spotify
curl -sS https://download.spotify.com/debian/pubkey_6224F9941A8AA6D1.gpg | sudo gpg --dearmor --yes -o /etc/apt/trusted.gpg.d/spotify.gpg
echo "deb http://repository.spotify.com stable non-free" | sudo tee /etc/apt/sources.list.d/spotify.list
sudo apt-get update && sudo apt-get install spotify-client

# Polybar-script for spotify
cd ~/.config/polybar/scripts/ && git clone https://github.com/PrayagS/polybar-spotify/ && mv polybar-spotify/*.sh .
