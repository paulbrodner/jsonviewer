FROM httpd:alpine3.14
ADD . /usr/local/apache2/htdocs/

RUN chown -R www-data:www-data /usr/local/apache2/htdocs/ \
    && chown -R www-data:www-data /usr/local/apache2

USER www-data
