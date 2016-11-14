FROM alpine
RUN apk --update add bash curl ca-certificates
COPY entrypoint.sh /
ENTRYPOINT ["/entrypoint.sh"]
