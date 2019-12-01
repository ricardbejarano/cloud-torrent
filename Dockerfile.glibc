FROM golang:1 AS build

RUN CGO_ENABLED=0 go get -v github.com/jpillora/cloud-torrent

RUN echo "nogroup:*:100:nobody" > /tmp/group && \
    echo "nobody:*:100:100:::" > /tmp/passwd && \
    mkdir -p /tmp/downloads


FROM scratch

COPY --from=build --chown=100:100 /go/bin/cloud-torrent /
COPY --from=build --chown=100:100 /tmp/downloads /downloads
COPY --from=build --chown=100:100 /tmp/group \
                                  /tmp/passwd \
                                  /etc/

USER 100:100
VOLUME ["/downloads"]
EXPOSE 3000/tcp
ENTRYPOINT ["/cloud-torrent"]
