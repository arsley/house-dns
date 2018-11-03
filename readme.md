# House's DNS (server)

My DNS server with unbound on Raspberry Pi(test).

## Usage

```
# build image
$ docker build -t housedns .

# run
$ docker run -d --name housedns -p 53:53 -p 53:53/udp --restart always housedns
```
