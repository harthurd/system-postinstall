# Install software
dnf update -y
rpm --import https://packages.microsoft.com/keys/microsoft.asc
rpm --import https://www.virtualbox.org/download/oracle_vbox_2016.asc
rpm --import https://download.sublimetext.com/sublimehq-rpm-pub.gpg
echo -e "[code]\nname=Visual Studio Code\nbaseurl=https://packages.microsoft.com/yumrepos/vscode\nenabled=1\ngpgcheck=1\ngpgkey=https://packages.microsoft.com/keys/microsoft.asc" | sudo tee /etc/yum.repos.d/vscode.repo > /dev/null
wget -O /etc/yum.repos.d/virtualbox.repo https://download.virtualbox.org/virtualbox/rpm/fedora/virtualbox.repo
dnf config-manager --add-repo https://download.sublimetext.com/rpm/stable/x86_64/sublime-text.repo
dnf check-update
dnf install -y https://download1.rpmfusion.org/free/fedora/rpmfusion-free-release-$(rpm -E %fedora).noarch.rpm
dnf install -y https://download1.rpmfusion.org/nonfree/fedora/rpmfusion-nonfree-release-$(rpm -E %fedora).noarch.rpm
dnf install -y https://dl.google.com/linux/direct/google-chrome-stable_current_x86_64.rpm 
dnf install -y mc htop pass alacritty code sublime-text obs-studio vlc
flatpak remote-add --if-not-exists flathub https://dl.flathub.org/repo/flathub.flatpakrepo
flatpak install flathub md.obsidian.Obsidian com.skype.Client com.discordapp.Discord
mkdir -p /tmp/distrib
wget -O /tmp/distrib/telegram.tar.xz https://telegram.org/dl/desktop/linux
tar -xvf /tmp/distrib/telegram.tar.xz -C /opt
