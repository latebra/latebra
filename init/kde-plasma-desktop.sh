apt-get install kde-plasma-desktop -y

apt-get autoremove --purge -y \
  kate \
  kdeconnect \
  konqueror \
  plasma-discover \
  kfind \
  kwrite \
  kde-spectacle \
  zutty \
  khelpcenter \
  kinfocenter \
  snapd \
  plasma-welcome \
  partitionmanager

apt-get install curl wget -y
