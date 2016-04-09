#!/bin/bash
JDKVERSION=8u77
echo "downloading JDK..."
CODE=$(curl -I http://registry.vtg/files/oracle/jdk-$JDKVERSION-linux-x64.rpm 2>/dev/null | head -n 1 | cut -d$' ' -f2)
if [ "$CODE" == "200" ]; then
    wget http://registry.vtg/files/oracle/jdk-$JDKVERSION-linux-x64.rpm -q -O /opt/jdk.rpm
else
    wget --no-check-certificate \
       --no-cookies --header "Cookie: oraclelicense=accept-securebackup-cookie" \
       http://download.oracle.com/otn-pub/java/jdk/8u77-b03/jdk-8u77-linux-x64.rpm \
       -q -O /opt/jdk.rpm
fi
echo "...JDK downloaded!"
