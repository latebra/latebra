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
kwriteconfig6 --file PlasmaUserFeedback --group Global --key FeedbackLevel 0

kreadconfig6 --file PlasmaUserFeedback --group Global --key FeedbackLevel --default 0
```
