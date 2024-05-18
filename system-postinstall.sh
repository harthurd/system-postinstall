dnf update -y
mkdir -p /tmp/distrib
wget https://dl.google.com/linux/direct/google-chrome-stable_current_x86_64.rpm -P /tmp/distrib && dnf install -y /tmp/distrib/google-chrome-stable_current_x86_64.rpm
rpm --import https://packages.microsoft.com/keys/microsoft.asc
echo -e "[code]\nname=Visual Studio Code\nbaseurl=https://packages.microsoft.com/yumrepos/vscode\nenabled=1\ngpgcheck=1\ngpgkey=https://packages.microsoft.com/keys/microsoft.asc" | sudo tee /etc/yum.repos.d/vscode.repo > /dev/null
dnf check-update
dnf install mc htop alacritty code
