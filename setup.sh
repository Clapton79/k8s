sudo mkdir /mnt/fs01
if [ ! -d "/etc/smbcredentials" ]; then
	sudo mkdir /etc/smbcredentials
fi
if [ ! -f "/etc/smbcredentials/sagseurwwdevgdplkp.cred" ]; then
	    sudo bash -c 'echo "username=sagseurwwdevgdplkp" >> /etc/smbcredentials/sagseurwwdevgdplkp.cred'
	        sudo bash -c 'echo "password=NaZhrWvBnRNWBx7XzO31j2MkT/90U4auyLXbFUGmTPM4CLysj8kAj4SkkD8W9fa9z4PreQ61GK0r+AStFv/3Qg==" >> /etc/smbcredentials/sagseurwwdevgdplkp.cred'
fi
sudo chmod 600 /etc/smbcredentials/sagseurwwdevgdplkp.cred

sudo bash -c 'echo "//sagseurwwdevgdplkp.file.core.windows.net/fs01 /mnt/fs01 cifs nofail,credentials=/etc/smbcredentials/sagseurwwdevgdplkp.cred,dir_mode=0777,file_mode=0777,serverino,nosharesock,actimeo=30" >> /etc/fstab'
sudo mount -t cifs //sagseurwwdevgdplkp.file.core.windows.net/fs01 /mnt/fs01 -o credentials=/etc/smbcredentials/sagseurwwdevgdplkp.cred,dir_mode=0777,file_mode=0777,serverino,nosharesock,actimeo=30
