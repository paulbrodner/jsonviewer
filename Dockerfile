FROM centos:8
RUN yum install -y epel-release httpd git
ADD . /var/www/html

USER daemon
ENTRYPOINT ["/usr/sbin/apachectl", "-d", "/etc/httpd/conf", "-f", "httpd.conf", "-e", "info", "-DFOREGROUND"]