FROM debian:bookworm

RUN apt-get update && \
    apt-get install -y nginx openssl && \
    apt-get clean && \
    rm -rf /var/lib/apt/lists/*

COPY ./conf/nginx.conf /etc/nginx/nginx.conf

COPY ./tools/generate_ssl.sh /generate_ssl.sh
RUN chmod +x /generate_ssl.sh

ENTRYPOINT ["/generate_ssl.sh"]
