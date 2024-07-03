#! /usr/bin/env bash
docker run -it \
	--privileged \
	--workdir /home/user/workdir \
	--volume "${1}":/home/user/workdir \
	--volume /dev:/dev \
	--device-cgroup-rule='c 166:* rmw' \
	irnas-vanilla-zephyr-dev:latest
