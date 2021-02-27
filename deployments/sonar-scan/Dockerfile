FROM jcid/docker-centos7-ansible:latest

RUN rm -rf /var/cache/yum/* \
    && yum update -y \
    && yum install -y unzip wget 

ADD sonar-scanner-cli-4.2.0.1873-linux.zip /usr/local/

RUN unzip /usr/local/sonar-scanner-cli-4.2.0.1873-linux.zip -d /usr/local/ \
    && mv /usr/local/sonar-scanner-4.2.0.1873-linux /usr/local/sonar-scanner 

ADD sonar-scanner.properties /usr/local/sonar-scanner/conf/

ADD shellcheck /usr/bin

RUN echo "export PATH=$PATH:/usr/local/sonar-scanner/bin" >> /etc/profile \
    && source /etc/profile \
    && chmod +x /usr/bin/shellcheck
