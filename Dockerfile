FROM centos  
MAINTAINER lysec.org 2022137639@qq.com
WORKDIR /root/
RUN yum -y install wget
RUN wget http://repo.mysql.com/mysql-community-release-el7-5.noarch.rpm
RUN rpm -ivh /root/mysql-community-release-el7-5.noarch.rpm
RUN yum -y install mysql-server
RUN mysql_install_db --user=mysql
ENV MYSQL_USER root
ENV MYSQL_PASS 123456
ENV MYSQL_ADDR 127.0.0.1
ENV TERM linux
ENV LC_ALL en_US.UTF-8
RUN yum -y install httpd php || true
#RUN yum -y install mysql php-mysqlnd
ADD logs/ /etc/httpd/
ADD app /var/www/html/
RUN chmod -R 777 /var/www/html/
ADD db.sh /root/
RUN chmod u+x /root/db.sh
RUN /root/db.sh
EXPOSE 3306 80
ADD run.sh /root/
RUN chmod u+x /root/run.sh
CMD /root/run.sh
