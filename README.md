# Geosearch api

## Overpass api

This project uses the [`wiktorn/overpass-api`](https://hub.docker.com/r/wiktorn/overpass-api) docker image to facilitate self-hosting of an [Overpass API](https://wiki.openstreetmap.org/wiki/Overpass_API) serving OpenStreetMap data.

## Getting started

### Setup ComputeCanada instance

Run the following command to prepare things on the VM.

```sh
sudo apt-get update && apt-get install git && git clone https://github.com/CUPUM/geosearch-api.git ws && cd "$_" && ./setup.sh
```

### Setup and run Overpass API Docker

To spin up a container using a custom configuration, we first make sure to pull the latest version of the image on the Docker-ready machine and run it:

```sh
./overpass.sh
```

## To do

- [ ] Prepare a preconfigured VM image for ComputeCanada?
