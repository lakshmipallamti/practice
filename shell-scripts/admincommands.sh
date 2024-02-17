#!/bin/bash
set -x
date | awk '{print $1}'
uptime | awk '{print $4}'
df -h | awk '{print $5}'
