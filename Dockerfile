FROM httpd:latest
WORKDIR /usr/local/apache2/htdocs/
COPY ./index.html /usr/local/apache2/htdocs/
CMD ["httpd-foreground"]
