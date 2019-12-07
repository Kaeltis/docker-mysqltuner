FROM alpine
MAINTAINER Patrick Fruh <patrick@kaeltis.de>

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
