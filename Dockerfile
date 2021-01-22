FROM golang:1-alpine AS build

RUN CGO_ENABLED=0 go get -v github.com/jpillora/cloud-torrent

RUN mkdir -p /rootfs/bin && \
      cp /go/bin/cloud-torrent /rootfs/bin/ && \
    mkdir -p /rootfs/downloads && \
    mkdir -p /rootfs/etc && \
      echo "nogroup:*:10000:nobody" > /rootfs/etc/group && \
      echo "nobody:*:10000:10000:::" > /rootfs/etc/passwd


FROM scratch

COPY --from=build --chown=10000:10000 /rootfs /

USER 10000:10000
VOLUME ["/downloads"]
EXPOSE 3000/tcp
ENTRYPOINT ["/cloud-torrent"]
