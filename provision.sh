#Get the apache yum repo java-1.7.0-openjdk-1.7.0.45-2.4.3.3.el6.x86_64
# yum install full java
yum install -y java-1.7.0-openjdk 

# install wget
yum install -y wget

# get kafka
wget http://www-eu.apache.org/dist/kafka/0.10.2.1/kafka_2.10-0.10.2.1.tgz -O kafka_2.10-0.10.2.1.tgz
tar -xvzf kafka_2.10-0.10.2.1.tgz
mv kafka_2.10-0.10.2.1 /opt/kafka
sudo chmod +x /opt/kafka/bin

# temp en var for now
sudo sh -c "cat >> .bashrc" <<'EOF'
	export JAVA_HOME=/usr/lib/jvm/java-1.7.0-openjdk-1.7.0.141.x86_64/jre
	export JAVA_HOME=/opt/kafka

EOF

#Setup de environment variables
source .bashrc

