 #! /bin/sh

cd /home/gitpod/.sdkman/candidates/java
rm current
sudo rm -d -R 11.0.13.fx-zulu
cd /workspace/phost/server
sudo add-apt-repository ppa:linuxuprising/java
echo "deb http://ppa.launchpad.net/linuxuprising/java/ubuntu focal main" | sudo tee /etc/apt/sources.list.d/linuxuprising-java.list
apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 73C3DB2A
sudo apt-get update
sudo apt install oracle-java17-installer --install-recommends
sudo apt-get update
java --version