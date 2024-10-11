#!/bin/bash

echo "Installing fedora-workstation-repositories and enabling google-chrome..."

dnf install fedora-workstation-repositories
dnf config-manager --set-enabled google-chrome

echo "Installing stable version of Google Chrome..."

dnf install google-chrome-stable

echo "Complete."
