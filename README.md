```bash
apt-get install kde-plasma-desktop
```

```bash
apt-get autoremove --purge \
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
  firefox-esr \
  partitionmanager
```

```bash
kreadconfig6 --file PlasmaUserFeedback --group Global --key FeedbackLevel
```
