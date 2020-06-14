# docker-shutdown-service
a systemd service to automatically shut down docker containers on poweroff and reboot

## Installation
Use the included install.sh script (`sh install.sh`), or install **manually**:
1. Download the files & open terminal in folder
1. set permissions (should be correct though):  
`sudo chmod 755 stop-docker.sh stop-docker-containers.service`
1. copy the files:  
`sudo cp stop-docker.sh /usr/local/bin; sudo cp stop-docker-containers.service /etc/systemd/system/`
1. restart systemd daemon:  
`sudo systemctl daemon-reload`
1. enable the service:  
`sudo systemctl enable --now stop-docker-containers.service`
1. Done! 

When shutting down with running docker containers, your system should gracefully stop them before shutting down!  
On Ubuntu you can check the terminal with `alt+f2` during shutdown.
