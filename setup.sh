#!/bin/bash
sudo apt install tar build-essential -y
curl https://accellera.org/images/downloads/standards/systemc/systemc-2.3.3.tar.gz -o systemc.tar.gz
tar -xvf systemc.tar.gz
rm systemc-2.3.3.tar.gz
cd systemc-2.3.3 &&\
echo "export SYSTEMC_HOME=`pwd`" >> ~/.profile &&\
export CXX=g++ &&\
mkdir objdir && cd objdir &&\
../configure &&\
make install

