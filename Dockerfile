FROM alpine

RUN apk update \
    && apk add --no-cache \
       git \
       bash \
       curl

RUN git clone https://github.com/tfutils/tfenv.git ~/.tfenv \
    && ln -s ~/.tfenv/bin/* /usr/local/bin

COPY bin/entrypoint.sh /bin/entrypoint.sh

#ENTRYPOINT ["/bin/entrypoint.sh"]
