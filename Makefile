build:
	docker build -t housedns .

run:
	docker run -d --name housedns -p 53:53 -p 53:53/udp --restart always housedns

rs:
	docker stop housedns
	docker rm housedns
	docker build -t housedns .
	docker run -d --name housedns -p 53:53 -p 53:53/udp --restart always housedns
