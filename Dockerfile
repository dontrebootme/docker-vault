FROM gliderlabs/alpine
MAINTAINER Patrick O'Connor <patrick@dontreboot.me>
ADD vault /usr/local/bin/vault
EXPOSE 8200
ENTRYPOINT ["/usr/local/bin/vault"]
