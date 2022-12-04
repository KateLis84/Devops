sudo useradd -p $(openssl passwd -6 -salt kateryna f) -m adminuser
sudo usermod -aG sudo adminuser
sudo useradd -m poweruser
sudo passwd -d poweruser
echo "poweruser ALL=(ALL:ALL) /usr/sbin/iptables" >> /etc/sudoers
sudo usermod -aG adminuser poweruser
ln -s /etc/mtab /home/poweruser/link