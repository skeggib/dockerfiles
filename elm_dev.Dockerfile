FROM dev

RUN apt-get install -y npm

RUN npm install -g elm-test elm-format

WORKDIR /usr/local/bin
RUN curl -L -o elm.gz https://github.com/elm/compiler/releases/download/0.19.1/binary-for-linux-64-bit.gz
RUN gunzip elm.gz
RUN chmod +x elm
