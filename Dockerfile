# Base Image
FROM oraclelinux:8.3

# Maintainer Info
MAINTAINER chorevathi@deloitte.com

# Installing Apache package
RUN yum install httpd -y

# Working Directory
WORKDIR /var/www/html/

# Updating index.html
RUN echo "<h1>Hello from my dockerfile</h1>" > index.html

# Additional html file
#COPY revathi.html .

# Parent Process Info
CMD ["httpd", "-DFOREGROUND"]
