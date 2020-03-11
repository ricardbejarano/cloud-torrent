<p align="center"><img src="https://emojipedia-us.s3.dualstack.us-west-1.amazonaws.com/thumbs/320/apple/232/magnet_1f9f2.png" width="120px"></p>
<h1 align="center">cloud-torrent</h1>
<p align="center">Built-from-source container image of the <a href="https://github.com/jpillora/cloud-torrent">Cloud Torrent HTTP BitTorrent client</a></p>


## Tags

### Docker Hub

Available on [Docker Hub](https://hub.docker.com) as [`ricardbejarano/cloud-torrent`](https://hub.docker.com/r/ricardbejarano/cloud-torrent):

- [`0.8.25-glibc`, `0.8.25`, `glibc`, `master`, `latest` *(Dockerfile.glibc)*](https://github.com/ricardbejarano/cloud-torrent/blob/master/Dockerfile.glibc) (about `16.8MB`)
- [`0.8.25-musl`, `musl` *(Dockerfile.musl)*](https://github.com/ricardbejarano/cloud-torrent/blob/master/Dockerfile.musl) (about `16.8MB`)

### Quay

Available on [Quay](https://quay.io) as:

- [`quay.io/ricardbejarano/cloud-torrent`](https://quay.io/repository/ricardbejarano/cloud-torrent), [`quay.io/ricardbejarano/cloud-torrent-glibc`](https://quay.io/repository/ricardbejarano/cloud-torrent-glibc), tags: [`0.8.25`, `master`, `latest` *(Dockerfile.glibc)*](https://github.com/ricardbejarano/cloud-torrent/blob/master/Dockerfile.glibc) (about `16.8MB`)
- [`quay.io/ricardbejarano/cloud-torrent-musl`](https://quay.io/repository/ricardbejarano/cloud-torrent-musl), tags: [`0.8.25`, `master`, `latest` *(Dockerfile.musl)*](https://github.com/ricardbejarano/cloud-torrent/blob/master/Dockerfile.musl) (about `16.8MB`)


## Features

* Super tiny (see [Tags](#tags))
* Compiled from source during build time
* Built `FROM scratch`, with zero bloat (see [Filesystem](#filesystem))
* Reduced attack surface (no shell, no UNIX tools, no package manager...)
* Runs as unprivileged (non-`root`) user


## Configuration

### Volumes

- Mount your **downloads** at `/downloads`.


## Building

### Docker

- To build the `glibc`-based image: `$ docker build -t cloud-torrent:glibc -f Dockerfile.glibc .`
- To build the `musl`-based image: `$ docker build -t cloud-torrent:musl -f Dockerfile.musl .`


## Filesystem

```
/
├── cloud-torrent
├── downloads/
└── etc/
    ├── group
    └── passwd
```


## License

See [LICENSE](https://github.com/ricardbejarano/cloud-torrent/blob/master/LICENSE).
