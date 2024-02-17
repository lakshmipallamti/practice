#!/bin/bash

grep -i error /home/ec2-user/realtime-scripts/messages > /home/ec2-user/realtime-scripts/error.out

grep -i warn /home/ec2-user/realtime-scripts/messages > /home/ec2-user/realtime-scripts/warn.out

