curl https://dl.google.com/linux/linux_signing_key.pub \
    | sudo gpg --dearmor -o /etc/apt/trusted.gpg.d/chrome-remote-desktop.gpg
echo "deb [arch=amd64] https://dl.google.com/linux/chrome-remote-desktop/deb stable main" \
    | sudo tee /etc/apt/sources.list.d/chrome-remote-desktop.list
sudo apt-get update
sudo DEBIAN_FRONTEND=noninteractive \
    apt-get install --assume-yes chrome-remote-desktop
sudo DEBIAN_FRONTEND=noninteractive \
     apt install --assume-yes xfce4 desktop-base xfce4-terminal
sudo bash -c 'echo "exec /etc/X11/Xsession /usr/bin/xfce4-session" > /etc/chrome-remote-desktop-session'
sudo apt remove --assume-yes gnome-terminal
sudo apt install --assume-yes xscreensaver
sudo systemctl disable lightdm.service
sudo apt install ffmpeg -y
sudo add-apt-repository ppa:obsproject/obs-studio -y
sudo apt install obs-studio -y
sudo apt install --assume-yes --fix-broken
sudo apt install vlc -y
sudo apt-get install gdebi -y
sudo apt-get install vim -y
    curl -L -o google-chrome-stable_current_amd64.deb \
https://dl.google.com/linux/direct/google-chrome-stable_current_amd64.deb
sudo apt install --assume-yes --fix-broken ./google-chrome-stable_current_amd64.deb
sudo apt install firefox -y
echo "Go to: https://remotedesktop.google.com/headless/your-Command"
./CRP = "DISPLAY= /opt/google/chrome-remote-desktop/start-host --code="4/0AQlEd8w29xzKI_Aen9M0GgcISss2oBauO9IxRQr2_MgJDO8tHx-cjvW0CpoXw3u5Zvj4pg" --redirect-url="https://remotedesktop.google.com/_/oauthredirect" --name=$(hostname)" 

