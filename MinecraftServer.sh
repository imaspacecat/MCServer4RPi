#! /usr/bin/bash
#install Java 17 (required for 1.18+ servers)
#get the file
#cd $HOME/Downloads

Red=$'\e[1;31m'
Green=$'\e[1;32m'
Blue=$'\e[1;34m'

wget https://github.com/adoptium/temurin17-binaries/releases/download/jdk-17.0.1%2B12/OpenJDK17U-jdk_arm_linux_hotspot_17.0.1_12.tar.gz
#extract it
echo "$Red extracting..."
tar xzf OpenJDK17U-jdk_arm_linux_hotspot_17.0.1_12.tar.gz
#move the extracted files to /usr/lib/jvm
sudo mv jdk-17.0.1+12 /usr/lib/jvm/
cd /usr/lib/jvm
#add java to the update alternatives so you can change to other versions later if desired
sudo update-alternatives --install /usr/bin/java java /usr/lib/jvm/jdk-16.0.2+7/bin/java 1131
echo "$Red enter the number corresponding to Java 17"
sudo update-alternatives --config java
#go to home directory and create folder to store all of the server related stuff
cd $HOME
mkdir MinecraftServer
cd MinecraftServer
#install the 1.18.1 server.jar from the Minecraft Website
wget https://launcher.mojang.com/v1/objects/125e5adf40c659fd3bce3e66e67a16bb49ecc1b9/server.jar
java -Xmx1024M -Xms1024M -jar server.jar nogui
sed -i "s/false/true/" eula.txt
java -Xmx1024M -Xms1024M -jar server.jar nogui
