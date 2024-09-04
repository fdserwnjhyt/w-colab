sudo apt-get update > /dev/null 2>&1
echo "===================================="
wget https://dl.google.com/linux/direct/chrome-remote-desktop_current_amd64.deb > /dev/null 2>&1
sudo apt install --chrome-remote-desktop_current_amd64.deb > /dev/null 2>&1
sudo apt install --assume-yes --fix-broken > /dev/null 2>&1
wget https://dl.google.com/linux/direct/google-chrome-stable_current_amd64.deb > /dev/null 2>&1
sudo apt install --assume-yes --fix-broken ./google-chrome-stable_current_amd64.deb > /dev/null 2>&1
echo "Install Firefox"
echo "===================================="
sudo apt install firefox -y > /dev/null 2>&1
echo "===================================="
echo "Install RDP"
echo "===================================="
sudo apt install -y xrdp > /dev/null 2>&1
sudo apt install xfce4 -y > /dev/null 2>&1
sudo apt-get install xfce4 xfce4-terminal -y > /dev/null 2>&1
echo "===================================="
echo "Start RDP"
echo "===================================="
sudo sed -i.bak '/fi/a xfce4-session \n' /etc/xrdp/startwm.sh > /dev/null 2>&1
sudo service xrdp start > /dev/null 2>&1
echo XRDP Address:
curl --silent --show-error http://127.0.0.1:4040/api/tunnels | sed -nE 's/.*public_url":"tcp:..([^"]*).*/\1/p'
echo "===================================="
echo "More  Free VPS akuh.net"
echo "Don't close this tab RDP runs 12 hours"
echo "Keep support akuh.net thank you"
echo "===================================="
seq 1 43200 | while read i; do echo -en "\r Running .     $i s /43200 s";sleep 0.1;echo -en "\r Running ..    $i s /43200 s";sleep 0.1;echo -en "\r Running ...   $i s /43200 s";sleep 0.1;echo -en "\r Running ....  $i s /43200 s";sleep 0.1;echo -en "\r Running ..... $i s /43200 s";sleep 0.1;echo -en "\r Running     . $i s /43200 s";sleep 0.1;echo -en "\r Running  .... $i s /43200 s";sleep 0.1;echo -en "\r Running   ... $i s /43200 s";sleep 0.1;echo -en "\r Running    .. $i s /43200 s";sleep 0.1;echo -en "\r Running     . $i s /43200 s";sleep 0.1; done
