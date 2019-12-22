FROM ubuntu

RUN \
  apt-get update -y && \
  apt-get install mc curl build-essential openssh-server -y && \
  curl -sL https://deb.nodesource.com/setup_12.x | bash - && \
  apt-get install nodejs -y && \
  apt-get autoremove -y && \
  apt-get clean -y && \
  rm -rf /var/lib/apt/lists/*

VOLUME /root

EXPOSE 3000
EXPOSE 22

WORKDIR /root

COPY package.zip ./

COPY entrypoint.sh /
RUN chmod 555 /entrypoint.sh

ENTRYPOINT /entrypoint.sh
