#!/usr/bin/bash

CURRENT_PID=$(pgrep -fla java | grep ci | awk '{print $1}')

kill -15 $CURRENT_PID

JAR_NAME=$(ls -tr /home/ec2-user/dev/*.jar | tail -n 1)
chmod +x $JAR_NAME
nohup java -jar $JAR_NAME >> /home/ec2-user/dev/nohup.out 2>&1 &