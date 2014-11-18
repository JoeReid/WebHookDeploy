run: install
	echo "run"

install: prep
	if dpkg -s nodejs ; then \
		echo "nodejs already installed"; \
	else \
		echo "installing nodejs"; \
		sudo apt-get install -y nodejs ; \
	fi

curl_installed:
	if dpkg -s curl ; then \
		echo "curl already installed"; \
	else \
		echo "installing curl"; \
		sudo apt-get install -y curl ; \
	fi

prep: curl_installed
	sudo ./prep.sh
