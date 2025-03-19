#!/bin/bash

# Install arnn-modules
# Check if models exist; if not, download them
model_dir="$HOME/.local/share/arnndn-models"

# Check if the directory exists
if [[ ! -d "$model_dir" ]]; then
  echo "Downloading ARNNDN models..."
  git clone https://github.com/richardpl/arnndn-models.git "$model_dir"
fi

# Install the hyprcast script to /usr/bin
echo "Installing hyprcast script..."
if sudo cp ./bin/hyprcast /usr/bin; then
  echo "hyprcast script installed successfully."
else
  echo "Failed to install hyprcast script. Check permissions."
  exit 1
fi

# Check if the man directory exists, and create it if necessary
MAN_DIR="/usr/local/man/man1"
if [ ! -d "$MAN_DIR" ]; then
  echo "$MAN_DIR does not exist. Creating directory..."
  if sudo mkdir -p "$MAN_DIR"; then
    echo "$MAN_DIR has been created."
  else
    echo "Failed to create $MAN_DIR. Check permissions."
    exit 1
  fi
fi

# Install the hyprcast man page
echo "Installing hyprcast man page..."
if sudo mv man/hyprcast.1 "$MAN_DIR/"; then
  echo "Man page installed successfully."
else
  echo "Failed to install man page. Check permissions."
  exit 1
fi

echo "Installation completed successfully!"
