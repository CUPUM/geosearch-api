apt-get update
echo "Pulling docker image..."
docker pull wiktorn/overpass-api
echo "Running docker image..."
docker run \
	-e OVERPASS_MODE=clone \
	-e OVERPASS_META=yes \
	-e OVERPASS_DIFF_URL=https://planet.openstreetmap.org/replication/minute/ \
	-e OVERPASS_MAX_TIMEOUT=10000s \
	-e OVERPASS_SPACE=8053063680 \
	-e OVERPASS_FLUSH_SIZE=1 \
	-v /overpass_clone_db/:/db \
	-p 12345:80 \
	-i -t \
	--restart unless-stopped \
	--name overpass \
	wiktorn/overpass-api