sudo apt-get update
echo -n "Pulling docker image..." -n
sudo docker pull wiktorn/overpass-api
echo -n "Running docker image..." -n
sudo nohup docker run \
	-e OVERPASS_MODE=clone \
	-e OVERPASS_META=yes \
	-e OVERPASS_DIFF_URL=https://planet.openstreetmap.org/replication/minute/ \
	-e OVERPASS_MAX_TIMEOUT=10000s \
	-e OVERPASS_SPACE=8053063680 \
	-e OVERPASS_FLUSH_SIZE=1 \
	-v /volume/data/overpass/:/db \
	-p 8888:80 \
	-i -t \
	--name overpass wiktorn/overpass-api
