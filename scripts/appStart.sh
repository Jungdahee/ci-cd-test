#!/user/bin/bash

pkill -f ci-cd-test.jar

JAR_NAME=$(ls -tr /home/ec2-user/dev/ci-cd-test.jar | tail -n 1)
chmod +x $JAR_NAME

nohup java -jar $JAR_NAME >> /home/ec2-user/dev/nohup.out 2>&1 &