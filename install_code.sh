echo "Setting up..."

rpm --import https://packages.microsoft.com/keys/microsoft.asc

echo "Installing code..."

dnf install code

echo "Complete."
