#! bin/bash
yum update -y
yum install java -y 
yum install wget upzip tree git -y 
wget -O /etc/yum.repos.d/jenkins.repo https://pkg.jenkins.io/redhat/jenkins.repo
rpm --import https://pkg.jenkins.io/redhat/jenkins.io.key
yum install jenkins -y
service jenkins start
cat /var/lib/jenkins/secrets/initialAdminPassword
echo "copy the above password and past it into the jenkins ui" 
