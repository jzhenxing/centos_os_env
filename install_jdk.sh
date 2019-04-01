#! /bin/bash
if [ ! -d /usr/local/java ] ; then
   mkdir /usr/local/java
fi

if [ -d /usr/local/java/jdk-8u21 ] ;then
   echo "jdk exists" 
else
   cd /usr/local/src/
   wget --continue --no-check-certificate -O jdk-8u201-linux-x64.tar.gz --header "Cookie: oraclelicense=a" https://download.oracle.com/otn-pub/java/jdk/8u201-b09/42970487e3af4f5aa5bca3f542482c60/jdk-8u201-linux-x64.tar.gz
   tar zxvf jdk-8u201-linux-x64.tar.gz
   mv jdk1.8.0_201 /usr/local/java/jdk-8u21
cat >> ~/.bash_profile << EOF
JAVA_HOME=/usr/local/java/jdk-8u21
PATH=\$PATH:\$JAVA_HOME/bin
CLASSPATH=.:\$JAVA_HOME/lib/dt.jar:\$JAVA_HOME/lib/tools.jar:\$JAVA_HOME/lib
export JAVA_HOME CLASSPATH
EOF


source ~/.bash_profile

echo "Done!"

fi
