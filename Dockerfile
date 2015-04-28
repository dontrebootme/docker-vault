FROM scratch
MAINTAINER Patrick O'Connor <patrick@dontreboot.me>
ADD vault vault
EXPOSE 8200
ENTRYPOINT ["/vault"]
