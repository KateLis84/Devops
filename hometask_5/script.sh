cd /home
sudo mkdir folder1
sudo mkdir folder2
sudo mkdir script 

cd /script  
cp /vagrant/mydaemon.sh /home/script/script.sh
sudo chmod +x /tmp/script/script.sh


cd /lib/systemd/system
cp /vagrant/file-mover.service /lib/systemd/system/file-mover.service


sudo systemctl daemon-reload
sudo systemctl start file-mover.service
sudo systemctl enable file-mover.service