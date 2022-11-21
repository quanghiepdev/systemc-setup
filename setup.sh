#!/bin/bash
sudo apt install tar wget build-essential -y
wget https://accellera.org/images/downloads/standards/systemc/systemc-2.3.3.tar.gz
tar -xvf systemc-2.3.3.tar.gz
rm systemc-2.3.3.tar.gz
cd systemc-2.3.3 &&\
echo "export SYSTEMC_HOME=`pwd`" >> ~/.profile &&\
export CXX=g++ &&\
mkdir objdir && cd objdir &&\
../configure &&\
make install

