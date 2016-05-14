#!/bin/bash
echo "downloading JDK..."
CODE=""
if [ "$LOCALJDK" != "" ]; then
    CODE=$(curl -I $LOCALJDK 2>/dev/null | head -n 1 | cut -d$' ' -f2)
fi
if [ "$LOCALJDK" != "" ] && [ "$CODE" == "200" ]; then
    wget "$LOCALJDK" -q -O /opt/jdk.rpm
else
    wget --no-check-certificate \
       --no-cookies --header "Cookie: oraclelicense=accept-securebackup-cookie" \
       http://download.oracle.com/otn-pub/java/jdk/8u92-b14/jdk-8u92-linux-x64.rpm \
       -q -O /opt/jdk.rpm
fi
echo "...JDK downloaded!"
