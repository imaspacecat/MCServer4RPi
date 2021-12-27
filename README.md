# MCServer4RPi
Script to automatically create and run a Minecraft server for version 1.18.1 on a Raspberry Pi. 
Automatically installs Java 17 (required for 1.18+ servers)

## How To Run
Download MinecraftServer.sh, then in your desired command line type "bash MinecraftServer.sh" to run it. 
Make sure you are in the directory of the file when running it (use cd [dir] to get into the directory).

## Performance
I ran the server on my rpi4-8gb on 32-bit Raspbian and with 4 players it seemed to be pretty smooth. 
A bit of lag when interacting with non player entities though. While running the server make sure to close all of your other windows (you can use the command "top" to monitor what is using the most cpu power and then shut that down).
