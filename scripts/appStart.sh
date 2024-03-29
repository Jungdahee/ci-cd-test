#!/usr/bin/bash

pkill -f ci-cd-test.jar

nohup java -jar /home/ec2-user/dev/ci-cd-test.jar >> /home/ec2-user/dev/nohup.out 2>&1 &