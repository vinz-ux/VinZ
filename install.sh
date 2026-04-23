#!/usr/bin/env bash
set -e

echo "Installing VinZ..."

# Create a temporary directory
TMP_DIR=$(mktemp -d -t vinz-install-XXXXXXXXXX)
cd "$TMP_DIR"

# Clone the repository
echo "Cloning repository..."
git clone --quiet https://github.com/vinz-ux/VinZ.git .

# Build the executable
echo "Compiling..."
make

# Install to system path
echo "Installing to /usr/local/bin (requires sudo)..."
sudo make install

# Clean up
cd - > /dev/null
rm -rf "$TMP_DIR"

echo ""
echo "========================================"
echo "VinZ has been successfully installed!"
echo "Run it by typing: vinz"
echo "========================================"
