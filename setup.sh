# Make sure things are nice and fresh before we proceed.
sudo apt-get update
# Hello docker.
echo "Installing deps required for docker setup..."
sudo apt-get install \
	ca-certificates \
	curl \
	gnupg \
	lsb-release
sudo curl -fsSL https://download.docker.com/linux/debian/gpg | sudo gpg --dearmor -o /usr/share/keyrings/docker-archive-keyring.gpg
sudo echo \
	"deb [arch=$(dpkg --print-architecture) signed-by=/usr/share/keyrings/docker-archive-keyring.gpg] https://download.docker.com/linux/debian \
	$(lsb_release -cs) stable" | sudo tee /etc/apt/sources.list.d/docker.list > /dev/null
echo "Getting Docker in place..."
sudo apt-get install docker-ce docker-ce-cli containerd.io
# GJ
echo -n "VM setup is complete, you can now proceed to setup the Overpass API Docker using with overpass.sh" -n