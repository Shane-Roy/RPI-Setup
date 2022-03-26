#!/bin/bash
su
#Install update command
echo "#!/bin/bash
sudo apt update && sudo apt full-upgrade" > update
chmod a+x update
mv update /usr/bin/
#Install RPI-Stats CPU command
git clone https://github.com/Shane-Roy/RPI-Stats
cd RPI-Stats/
mv CPU.sh cpu
chmod a+x cpu
mv cpu /usr/bin/
#Install Argon fan script
curl https://download.argon40.com/argon1.sh | bash
#Install config script
echo "#!/bin/bash
sudo nano /boot/config.txt" > config
chmod a+x config
mv config /usr/bin/
