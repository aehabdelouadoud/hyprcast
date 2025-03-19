#!/bin/bash

# Uninstall hyprcast script from /usr/bin
echo "Uninstalling hyprcast script..."
if sudo rm -f /usr/bin/hyprcast; then
  echo "hyprcast script removed successfully from /usr/bin."
else
  echo "Failed to remove hyprcast script from /usr/bin. It may not exist."
fi

# Uninstall the hyprcast man page
MAN_DIR="/usr/local/man/man1"
if [ -f "$MAN_DIR/hyprcast.1" ]; then
  echo "Removing hyprcast man page..."
  if sudo rm -f "$MAN_DIR/hyprcast.1"; then
    echo "Man page removed successfully."
  else
    echo "Failed to remove man page. Check permissions."
  fi
else
  echo "Man page does not exist, skipping removal."
fi

echo "Uninstallation completed!"
