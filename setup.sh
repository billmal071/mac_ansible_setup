#!/usr/bin/bash

# Checks if Homebrew is installed
if command -v brew &>/dev/null; then
	echo "Homebrew is already installed."
else
	echo "Homebrew is not installed. Installing now..."
	# Install Homebrew
	/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
fi

curl -s "https://get.sdkman.io" | bash

# check if python is installed
if command -v python3 &>/dev/null; then
	echo "Python 3 is already installed."
else
	echo "Python 3 is not installed. Installing now with Homebrew..."
	# Install Python 3 using Homebrew
	brew install python@3.9
fi

# install ansible
python3 -m pip install --user ansible

# Check if Java 17 is installed
if /usr/libexec/java_home -v 17 &>/dev/null; then
	echo "Java 17 is already installed."
else
	echo "Java 17 is not installed. Installing now using Homebrew..."
	# Install Java 17 using sdkman
	sdk install java 17.0.4-oracle
fi

# install gradle
sdk install gradle 7.4.2
