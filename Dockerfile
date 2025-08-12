FROM httpd

RUN apt-get update && apt-get install -y git && rm -rf /var/lib/apt/lists/*

RUN rm -rf /usr/local/apache2/htdocs/* \
    && git clone https://github.com/ren0777/weather.git /usr/local/apache2/htdocs/

EXPOSE 80
CMD ["httpd-foreground"]
