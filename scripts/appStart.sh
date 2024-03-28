#!/usr/bin/env bash

chmod +x /home/ec2-user/dev/appStart.sh

CURRENT_PID=$(pgrep -fla java | grep hayan | awk '{print $1}')

kill -15 $CURRENT_PID

JAR_NAME=$(ls -tr /home/ec2-user/dev/*SNAPSHOT.jar | tail -n 1)
chmod +x $JAR_NAME
nohup java -jar $JAR_NAME >> /home/ec2-user/dev/nohup.out 2>&1 &