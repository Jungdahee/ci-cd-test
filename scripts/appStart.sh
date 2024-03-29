#!/usr/bin/bash

CURRENT_PID=$(pgrep -fla java | grep ci | awk '{print $1}')

if [ -z "$CURRENT_PID" ]; then
  echo "현재 구동 중인 애플리케이션이 없으므로 종료하지 않습니다."
else
  echo "> kill -15 $CURRENT_PID"
  kill -15 $CURRENT_PID
  sleep 5
fi

JAR_NAME=$(ls -tr /home/ec2-user/dev/*.jar | tail -n 1)
chmod +x $JAR_NAME
nohup java -jar $JAR_NAME >> /home/ec2-user/dev/nohup.out 2>&1 &