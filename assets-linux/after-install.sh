#!/bin/bash

# Link to the binary
ln -sf /opt/pushatvde/Pushatvde /usr/local/bin/pushatvde

# Launcher icon
desktop-file-install /opt/pushatvde/pushatvde.desktop
