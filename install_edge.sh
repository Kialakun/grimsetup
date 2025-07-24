#! /bin/bash

sudo rpm --import https://packages.microsoft.com/keys/microsoft.asc
sudo dnf config-manager addrepo --from-repofile https://packages.microsoft.com/yumrepos/config.repo
sudo dnf install microsoft-edge-stable
