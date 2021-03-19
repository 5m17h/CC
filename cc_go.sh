#!/bin/sh
yum install epel-release -y
yum install nload -y
yum install screen -y
yum -y groupinstall 'Development Tools'
yum -y install openssl-devel git
git clone https://github.com/wg/wrk.git
cd wrk
make
cp wrk /usr/local/bin/