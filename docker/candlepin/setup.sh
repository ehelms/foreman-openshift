#!/bin/bash -xe

/usr/share/candlepin/cpsetup -u foreman -d foreman -p foreman --dbhost $POSTGRESQL_SERVICE_HOST --dbport $POSTGRESQL_SERVICE_PORT --skip-service true --schema-only

java -classpath /usr/share/tomcat/bin/bootstrap.jar:/usr/share/tomcat/bin/tomcat-juli.jar:/usr/share/java/commons-daemon.jar -Dcatalina.base=/usr/share/tomcat -Dcatalina.home=/usr/shareomcat -Djava.endorsed.dirs= -Djava.io.tmpdir=/var/cache/tomcat/temp -Djava.util.logging.config.file=/usr/share/tomcat/conf/logging.properties -Djava.util.logging.manager=org.apache.juli.ClassLoaderLogManager org.apache.catalina.startup.Bootstrap start
