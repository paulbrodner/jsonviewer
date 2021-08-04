FROM httpd:alpine3.14
ADD . /usr/local/apache2/htdocs/

RUN  sed -i "/Listen 80/c\Listen 8080" /usr/local/apache2/conf/httpd.conf \
    && chown -R www-data:www-data /usr/local/apache2/htdocs/ \
    && chown -R www-data:www-data /usr/local/apache2

EXPOSE 8080
USER www-data

CMD ["httpd-foreground"]
