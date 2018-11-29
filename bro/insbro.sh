#!/bin/bash



yum -y install cmake make gcc gcc-c++ flex bison libpcap-devel openssl-devel python-devel swig zlib-devel gperftools 

BRO_VERSION=2.5.4
cd /data
wget https://www.bro.org/downloads/bro-$BRO_VERSION.tar.gz
tar -xzf bro-$BRO_VERSION.tar.gz
cd /data/bro-$BRO_VERSION
./configure 
make
make install

