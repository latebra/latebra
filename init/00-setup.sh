apt-get install -y \
  kde-plasma-desktop

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

apt-get install -y \
  curl \
  wget
