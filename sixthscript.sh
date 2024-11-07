#!/bin/bash

sudo tar -czf  /home/devops/log.tar.gz  log
sudo chown devops:student /home/devops/log.tar.gz
sudo chmod 640 /home/devops/log.tar.gz

