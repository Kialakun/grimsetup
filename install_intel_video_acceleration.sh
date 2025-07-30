#! /bin/bash
echo "Install video acceleration api for Intel..."
sudo dnf install ffmpeg-libs libva libva-utils
sudo dnf swap libva-intel-media-driver intel-media-driver --allowerasing
sudo dnf install libva-intel-driver
echo "Done."
