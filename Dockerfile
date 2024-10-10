# Dockerfile - alpine-arm32v7

ARG RESTY_IMAGE_BASE="arm32v7/alpine"
ARG RESTY_IMAGE_TAG="3.18"

FROM ${RESTY_IMAGE_BASE}:${RESTY_IMAGE_TAG}

# Docker Build

ARG APK_MIRROR="mirrors.aliyun.com"
ARG GITHUB_MIRROR="https://ghproxy.net/https://github.com/"
RUN sed -i "s/https:\/\/dl-cdn.alpinelinux.org/https:\/\/${APK_MIRROR}/g" /etc/apk/repositories
RUN apk add wget

RUN mkdir /var/run/smartdns && \
    mkdir /etc/smartdns/ && \
    tag=$(wget -qO- -t1 -T2 "https://api.github.com/repos/pymumu/smartdns/releases/latest" | grep "tag_name" | head -n 1 | awk -F ":" '{print $2}' | sed 's/\"//g;s/,//g;s/ //g') && \
    wget --no-check-certificate -qO "/var/run/smartdns/smartdns" "${GITHUB_MIRROR}/pymumu/smartdns/releases/download/${tag}/smartdns-arm" && \
    chmod 777 /var/run/smartdns/smartdns && \
    apk del wget
EXPOSE 53/udp
VOLUME [ "/etc/smartdns/" ]
CMD ["/var/run/smartdns/smartdns", "-f", "-x"]

STOPSIGNAL SIGQUIT
