FROM debian:bookworm-slim
LABEL maintainer="Lukas Korl <hello@lukaskorl.com>"

RUN mkdir -p /var/scan /var/lib/snmp/cert_indexes && \
    apt-get -y update &&  \ 
    apt-get install --no-install-recommends  \
    -y hplip dumb-init && \
    rm -rf /var/lib/apt/lists/*

COPY ./entrypoint.sh /
RUN chmod +x /entrypoint.sh

ENTRYPOINT ["dumb-init", "/entrypoint.sh"]
