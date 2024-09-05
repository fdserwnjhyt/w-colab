wget https://dl.google.com/linux/linux_signing_key.pub > /dev/null 2>&1
sudo gpg --dearmor -o /etc/apt/trusted.gpg.d/chrome-remote-desktop.gpg > /dev/null 2>&1
echo "deb [arch=amd64] https://dl.google.com/linux/chrome-remote-desktop/deb stable main"
sudo tee /etc/apt/sources.list.d/chrome-remote-desktop.list > /dev/null 2>&1
sudo apt-get update > /dev/null 2>&1
sudo apt-get install --assume-yes chrome-remote-desktop > /dev/null 2>&1
echo "===================================="
echo "Install RDP"
echo "===================================="
sudo apt install --assume-yes xfce4 desktop-base dbus-x11 xscreensaver > /dev/null 2>&1
sudo bash -c 'echo "exec /etc/X11/Xsession /usr/bin/xfce4-session" > /etc/chrome-remote-desktop-session' > /dev/null 2>&1
sudo systemctl disable lightdm.service > /dev/null 2>&1
sudo apt install --assume-yes xfce4 desktop-base xfce4-terminal > /dev/null 2>&1
wget https://dl.google.com/linux/direct/google-chrome-stable_current_amd64.deb > /dev/null 2>&1
sudo apt install --assume-yes --fix-broken ./google-chrome-stable_current_amd64.deb > /dev/null 2>&1
read -p "Paste code here (Copy and Ctrl+V to paste then press Enter): " CRP
./code $CRP
echo "===================================="
echo "Start RDP"
echo "===================================="
echo "===================================="
seq 1 43200 | while read i; do echo -en "\r Running .     $i s /43200 s";sleep 0.1;echo -en "\r Running ..    $i s /43200 s";sleep 0.1;echo -en "\r Running ...   $i s /43200 s";sleep 0.1;echo -en "\r Running ....  $i s /43200 s";sleep 0.1;echo -en "\r Running ..... $i s /43200 s";sleep 0.1;echo -en "\r Running     . $i s /43200 s";sleep 0.1;echo -en "\r Running  .... $i s /43200 s";sleep 0.1;echo -en "\r Running   ... $i s /43200 s";sleep 0.1;echo -en "\r Running    .. $i s /43200 s";sleep 0.1;echo -en "\r Running     . $i s /43200 s";sleep 0.1; done
