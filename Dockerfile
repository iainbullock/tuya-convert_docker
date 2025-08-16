FROM alpine:3.22

# install dependencies
RUN apk update && apk add --no-cache \
  bash git iw dnsmasq hostapd screen curl py3-pip py3-wheel \
  python3-dev mosquitto haveged net-tools openssl openssl-dev \
  gcc musl-dev linux-headers sudo coreutils grep iproute2 ncurses

RUN python3 -m pip install --break-system-packages --upgrade paho-mqtt tornado git+https://github.com/drbild/sslpsk.git pycryptodomex

# Copy configs and scripts
COPY docker/bin /usr/bin/
COPY . /usr/bin/tuya-convert

WORKDIR "/usr/bin/tuya-convert"
CMD [ "tuya-start" ]
