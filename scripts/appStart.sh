#!/user/bin/bash

pkill -f ci-cd-test.jar

nohup java -jar /home/ec2-user/dev/appStart.sh >> /home/ec2-user/dev/nohup.out 2>&1 &