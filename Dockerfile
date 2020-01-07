# Why node:8 and not node:10? Because (a) v8 is LTS, so more likely to be stable, and (b) "npm update" on node:10 breaks on Docker on Linux (but not on OSX, oddly)
FROM node:11

RUN apt update \
  && DEBIAN_FRONTEND=noninteractive apt install -y libssl-dev libboost-all-dev \
  && rm -rf /var/lib/apt/lists/*

ADD . /src/
WORKDIR /src/

RUN npm update

EXPOSE 8117
EXPOSE 3333
EXPOSE 4444
EXPOSE 5555
EXPOSE 7777
expose 8888

CMD node init.js -config=/src/config.json