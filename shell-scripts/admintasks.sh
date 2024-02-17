#!/bin/bash

set -x

top | head -10
df -h
uptime
iostat
free -m
