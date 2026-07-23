FROM debian:bookworm

RUN mkdir -p /run/mysqld && \
    chmod 777 /run/mysqld

RUN apt-get update -y && \
    apt-get install mariadb-server -y && \
    apt-get clean && \
    rm -rf /var/lib/apt/lists/*

COPY ./conf/50-server.cnf /etc/mysql/mariadb.conf.d/50-server.cnf
COPY ./tools/init.sh /init.sh

RUN chmod +x /init.sh

ENTRYPOINT ["/init.sh"]
