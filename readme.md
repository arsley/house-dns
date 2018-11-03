# House's DNS (server)

My DNS server with unbound on Raspberry Pi(test).

## Usage

```
# build image
$ docker build -t housedns .

# run
$ docker run -d --name housedns -p 53:53 -p 53:53/udp --restart always housedns
```

## Ref

- [Docker's Restart Policy: Ensure Containers Always Run | Codeship | via @codeship](https://blog.codeship.com/ensuring-containers-are-always-running-with-dockers-restart-policy/)
