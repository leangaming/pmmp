# Lean Gaming - pmmp

[![Build Status](https://travis-ci.org/leangaming/pmmp.svg?branch=master)](https://travis-ci.org/leangaming/pmmp)
[![Docker Hub](https://img.shields.io/docker/pulls/leangaming/pmmp.svg)](https://hub.docker.com/r/leangaming/pmmp)

## pmmp

[pmmp](https://github.com/pmmp/PocketMine-MP) is an open source implementation of the [Minecraft Bedrock Edition](https://minecraft.gamepedia.com/Bedrock_Edition) server.

## docker-compose

An easy of getting this up and running is to just use [`docker-compose`](https://docs.docker.com/compose/overview/) with the following contents in your `docker-compose.yml` file:

```
pocketmine:
  image: leangaming/pmmp
  ports:
    - 19132:19132/udp
  volumes:
    - ./pmmp/pocketmine.yml:/home/pmmp/pocketmine.yml
    - ./pmmp/server.properties:/home/pmmp/server.properties
    - ./pmmp/banned-ips.txt:/home/pmmp/banned-ips.txt
    - ./pmmp/banned-players.txt:/home/pmmp/banned-players.txt
    - ./pmmp/ops.txt:/home/pmmp/ops.txt
    - ./pmmp/white-list.txt:/home/pmmp/white-list.txt
    - ./pmmp/worlds:/home/pmmp/worlds
    - ./pmmp/players:/home/pmmp/players
    - ./pmmp/resource_packs:/home/pmmp/resource_packs
    - ./pmmp/plugins:/home/pmmp/plugins
```

## Lean Gaming?

LeanGaming aims to provide small (lean) docker images to run prebuilt dedicated servers for various video games. You can find all of our images and source code [here](https://github.com/leangaming).
