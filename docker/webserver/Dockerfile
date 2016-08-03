FROM debian:jessie

RUN echo 'deb http://ftp.debian.org/debian jessie-backports main' >> /etc/apt/sources.list && \
	apt-get update && \
	apt-get install -y \
		apache2 && \
	apt-get install -y \
		python-certbot-apache -t jessie-backports && \
	apt-get clean && \
	rm -rf /var/lib/apt/lists
	

EXPOSE 443

VOLUME /var/www

CMD ["/usr/sbin/apache2ctl", "-D", "FOREGROUND"]