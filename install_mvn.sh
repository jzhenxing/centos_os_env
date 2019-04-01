#! /bin/bash
if [ -d /usr/local/maven3 ] ;then
   echo "mvn exists" 
else

   cd /usr/local/src/
   wget http://mirrors.tuna.tsinghua.edu.cn/apache/maven/maven-3/3.6.0/binaries/apache-maven-3.6.0-bin.tar.gz
   tar zxf apache-maven-3.6.0-bin.tar.gz
   mv apache-maven-3.6.0 /usr/local/maven3
cat >> ~/.bash_profile << EOF
PATH=$PATH:/usr/local/maven3/bin
EOF

source ~/.bash_profile

echo "Done!"

fi
