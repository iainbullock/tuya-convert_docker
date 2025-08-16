FROM alpine:3.22

# install dependencies
RUN apk update && apk add --no-cache \
  git iw dnsmasq hostapd screen curl py3-pip py3-wheel \
  python3-dev mosquitto haveged net-tools openssl openssl-dev \
  gcc musl-dev linux-headers sudo coreutils grep iproute2 ncurses
  
RUN python3 -m pip install --upgrade paho-mqtt tornado git+https://github.com/drbild/sslpsk.git pycryptodomex

# Copy configs and scripts
RUN mkdir /conf /app
ADD conf/* /conf
ADD app/* /app
RUN chmod +x /app/start.sh

CMD [ "/app/start.sh" ]
