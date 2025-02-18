FROM amazonlinux:latest

# Install dependencies
RUN yum update -y && \
    yum install -y httpd && \
    yum install wget -y && \
    yum install unzip -y

# change directory to where the website should be
WORKDIR /var/www/html

# Download web files from GitHub
RUN wget https://github.com/nitheshsivakumar/jupiter-website/archive/refs/heads/main.zip

# Unzip the downloaded file
RUN unzip main.zip

# Copy files into the HTML directory (for Apache to serve)
RUN cp -r jupiter-website-main/* /var/www/html/

# Remove unwanted folder and zip file
RUN rm -rf jupiter-website-main main.zip

# expose port 80 for the web server
EXPOSE 80

# set the default application that will start when the container starts
ENTRYPOINT ["/usr/sbin/httpd", "-D", "FOREGROUND"]
