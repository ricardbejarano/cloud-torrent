<p align="center"><img src="https://emojipedia-us.s3.dualstack.us-west-1.amazonaws.com/thumbs/320/apple/232/magnet_1f9f2.png" width="120px"></p>
<h1 align="center">cloud-torrent (container image)</h1>
<p align="center">Built-from-source container image of the <a href="https://github.com/jpillora/cloud-torrent">cloud-torrent</a> web-based BitTorrent client</p>


## Tags

### Docker Hub

Available on Docker Hub as [`docker.io/ricardbejarano/cloud-torrent`](https://hub.docker.com/r/ricardbejarano/cloud-torrent):

- [`0.8.25`, `latest` *(Dockerfile)*](Dockerfile)

### RedHat Quay

Available on RedHat Quay as [`quay.io/ricardbejarano/cloud-torrent`](https://quay.io/repository/ricardbejarano/cloud-torrent):

- [`0.8.25`, `latest` *(Dockerfile)*](Dockerfile)


## Features

* Compiled from source during build time
* Built `FROM scratch`, with zero bloat
* Statically linked to the [`musl`](https://musl.libc.org/) implementation of the C standard library
* Reduced attack surface (no shell, no UNIX tools, no package manager...)
* Runs as unprivileged (non-`root`) user


## Building

```bash
docker build --tag ricardbejarano/cloud-torrent --file Dockerfile .
```


## Configuration

### Volumes

- Mount your **data** at `/downloads`.


## License

MIT licensed, see [LICENSE](LICENSE) for more details.
