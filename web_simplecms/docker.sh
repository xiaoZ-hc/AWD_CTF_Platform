#!/bin/sh
cp run.sh tmp/
cp flag.py tmp/
docker run -p {web_out_port}:80  -p {ssh_port}:22  -v /var/lib/mysql  -v `pwd`/simplecms:/var/www/html -v `pwd`/tmp:/tmp -d  --name {team_name} -ti moxiaoxi/simplecms