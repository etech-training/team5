#!/bin/bash
password="Team5"
user="nelson"
ips=(172.31.88.92 172.31.8.167)
for i in ${ips[@]}; do
sshpass -p "$password" scp therese $user@$i:/tmp
done 
