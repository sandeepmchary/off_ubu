#!/bin/bash
DATE=$(date +%d-%m-%y)
Dir_backup="/backup"
# To back up home folder
tar -zcvpf $Dir_backup/samantha-$DATE.tar.gz /home/dell

