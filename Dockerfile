FROM debian:bookworm-slim

LABEL maintainer=izy

ARG HATH_VERSION=1.6.4
ARG HATH_VERSION_WORKFLOW

RUN apt-get update && apt-get install -y --no-install-recommends \
    default-jre \
    wget \
    unzip \
 && HATH_VERSION=${HATH_VERSION_WORKFLOW:-$HATH_VERSION} \
 && wget -O /tmp/hath-$HATH_VERSION.zip https://repo.e-hentai.org/hath/HentaiAtHome_$HATH_VERSION.zip \
 && ls -l /tmp \
 && mkdir -p /opt/hath /hath \
 && unzip /tmp/hath-$HATH_VERSION.zip -d /opt/hath \
 && rm /tmp/hath-$HATH_VERSION.zip \
 && apt-get purge -y --auto-remove wget unzip \
 && rm -rf /var/lib/apt/lists/*

COPY run/* /opt/hath/

VOLUME ["/hath/cache", "/hath/data", "/hath/download", "/hath/log", "/hath/tmp"]

CMD ["/opt/hath/start.sh"]