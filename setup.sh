# Make sure things are nice and fresh before we proceed.
apt-get update
apt-get upgrade
# Hello docker.
echo "Getting Docker in place..."
apt-get install \
	ca-certificates \
	curl \
	gnupg \
	lsb-release
curl -fsSL https://download.docker.com/linux/debian/gpg | sudo gpg --dearmor -o /usr/share/keyrings/docker-archive-keyring.gpg
echo \
	"deb [arch=$(dpkg --print-architecture) signed-by=/usr/share/keyrings/docker-archive-keyring.gpg] https://download.docker.com/linux/debian \
	$(lsb_release -cs) stable" | sudo tee /etc/apt/sources.list.d/docker.list > /dev/null
apt-get update
apt-get install docker-ce docker-ce-cli containerd.io
# GJ
echo -n "VM setup is complete, you can now proceed to setup the Overpass API Docker using with overpass.sh"