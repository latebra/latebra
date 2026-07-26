## Install

```bash
curl https://raw.githubusercontent.com/latebra/latebra/refs/heads/main/init/kde-plasma-desktop.sh | bash
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
