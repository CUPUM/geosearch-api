# Geosearch api

## Overpass api

This project uses the [`wiktorn/overpass-api`](https://hub.docker.com/r/wiktorn/overpass-api) docker image to facilitate self-hosting of an [Overpass API](https://wiki.openstreetmap.org/wiki/Overpass_API) serving OpenStreetMap data.

## Getting started

### Setup the WebAPI using NGINX

Run the following command to prepare things on the VM.

```sh
sudo apt-get update \
    && sudo apt-get install git \
    && git clone https://github.com/CUPUM/geosearch-api.git ws \
    && cd "$_" \
    && sudo ./setup.sh
```

Initialize the db and spin up a container:

```sh
./overpass.sh
```

## To do

- [ ] Prepare a preconfigured VM image for ComputeCanada?
