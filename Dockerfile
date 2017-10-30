FROM alpine
MAINTAINER Josh Grochowski <josh.kastang@gmail.com>

RUN \
	apk --no-cache add \
		ca-certificates \
		openssl \
		perl \
		perl-doc \
		mysql-client \
	&& update-ca-certificates \
	&& wget https://raw.githubusercontent.com/major/MySQLTuner-perl/master/mysqltuner.pl -O mysqltuner.pl

ENTRYPOINT ["perl", "mysqltuner.pl"]
