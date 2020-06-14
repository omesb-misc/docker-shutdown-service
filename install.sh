#!/bin/bash

echo "===> changing permissions";
sudo chmod 755 stop-docker.sh stop-docker-containers.service;
echo "DONE!"

echo "===> copying the files";
sudo cp stop-docker.sh /usr/local/bin; sudo cp stop-docker-containers.service /etc/systemd/system/;
echo "DONE!"

echo "===> restart systemd daemon:";
sudo systemctl daemon-reload;
echo "DONE!"

echo "===> enable the service:";
sudo systemctl enable --now stop-docker-containers.service;
echo "DONE!"

echo "Installation complete!"
