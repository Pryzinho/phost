 #! /bin/sh

cd /home/gitpod/.sdkman/candidates/java
sudo rm -d -R current
sudo rm -d -R 11.0.21.fx-zulu
cd /workspace/phost/server
sudo add-apt-repository ppa:linuxuprising/java
echo "deb http://ppa.launchpad.net/linuxuprising/java/ubuntu focal main" | sudo tee /etc/apt/sources.list.d/linuxuprising-java.list
apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 73C3DB2A
sudo apt-get update
sudo apt install oracle-java17-installer --install-recommends
sudo apt-get update
curl -SsL https://playit-cloud.github.io/ppa/key.gpg | gpg --dearmor | sudo tee /etc/apt/trusted.gpg.d/playit.gpg >/dev/null
echo "deb [signed-by=/etc/apt/trusted.gpg.d/playit.gpg] https://playit-cloud.github.io/ppa/data ./" | sudo tee /etc/apt/sources.list.d/playit-cloud.list
sudo apt update
sudo apt install playit
java --version
