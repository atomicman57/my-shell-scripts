#!/usr/bin/expect -f
send "Starting..."

set user [lindex $argv 0]
set pass [lindex $argv 1]
set email [lindex $argv 2]
set gitpass [lindex $argv 3]
send "SSH..."
spawn ssh $user@188.166.109.55
set timeout 5
spawn su - root
set timeout 2
send "Gaining Access..."
send "Password: "
send "$pass"
set timeout 2
send "Accessing Apps..."
spawn cd apps/Phantfashion/
spawn cd git pull
send "Pulling from Github..."
expect "Username for 'https://github.com': "
send "$email"
send "Inputting into Github..."
set timeout 1
expect "Password for 'https://$email@github.com': "
set timeout 1
send "$gitpass"
set timeout 10
send "Restarting Apps..."
spawn pm2 restart 0

expect eof