sudo docker run \
	-e OVERPASS_META=yes \
	-e OVERPASS_MODE=init \
	-e OVERPASS_PLANET_URL=http://download.geofabrik.de/europe/monaco-latest.osm.bz2 \
	-e OVERPASS_DIFF_URL=http://download.openstreetmap.fr/replication/europe/monaco/minute/ \
	-e OVERPASS_FLUSH_SIZE=1 \
	-e OVERPASS_RULES_LOAD=10 \
	-v /volume/data/overpass/:/db \
	-p 8888:80 \
	-i -t \
	--name overpass_monaco wiktorn/overpass-api