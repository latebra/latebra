## Setup

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

## Cleanup

```bash
kwriteconfig6 --file PlasmaUserFeedback --group Global --key FeedbackLevel 0
```

```bash
apt-get autoremove --purge -y
apt-get clean
rm -rf /var/lib/apt/lists/*

find /tmp -xdev -mindepth 1 -delete
find /var/tmp -xdev -mindepth 1 -delete
journalctl --rotate
journalctl --vacuum-time=1s
find /var/log -xdev -type f ! -path '/var/log/journal/*' -exec truncate -s 0 {} +
```

### Checks

```bash
find /var/cache/apt/archives -type f -name '*.deb' -print

kreadconfig6 --file PlasmaUserFeedback --group Global --key FeedbackLevel --default 0
```

## Purge

```bash
truncate -s 0 /etc/machine-id
rm -f /var/lib/dbus/machine-id
ln -sfn /etc/machine-id /var/lib/dbus/machine-id
poweroff
```
