#!/usr/bin/env -S bash

# set umask accordingly
if [ "${UMASK:-UNSET}" != "UNSET" ]; then
  umask "$UMASK"
fi

# Always recreate client_login
printf "${HATH_CLIENT_ID}-${HATH_CLIENT_KEY}" > /hath/data/client_login

exec java -jar /opt/hath/HentaiAtHome.jar \
    --cache-dir=/hath/cache               \
    --data-dir=/hath/data                 \
    --download-dir=/hath/download         \
    --log-dir=/hath/log                   \
    --temp-dir=/hath/tmp                  \
    ${EXTRA_ARGS}