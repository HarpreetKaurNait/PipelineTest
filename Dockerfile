FROM centos:7
RUN yum install httpd -y
COPY index.html /var/www/html
EXPOSE 80
RUN systemctl enable httpd
CMD ["httpd", "-D", "FOREGROUND"]
