# Geosearch api

## Overpass api

This project uses the [`wiktorn/overpass-api`](https://hub.docker.com/r/wiktorn/overpass-api) docker image to facilitate self-hosting of an [Overpass API](https://wiki.openstreetmap.org/wiki/Overpass_API) serving OpenStreetMap data.

## Getting started

To spin up a container using a custom configuration, first make sure to pull the latest version of the image on a machine with Docker ready:

```sh
docker pull wiktorn/overpass-api
```

Run it using [run.sh](run.sh):

```sh
./run.sh
```

## To do

...
