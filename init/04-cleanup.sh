kwriteconfig6 --file PlasmaUserFeedback --group Global --key FeedbackLevel 0

apt-get autoremove --purge
apt-get purge -y '?config-files'
apt-get check
apt-get clean
apt-get distclean

rm -rf /var/lib/apt/lists/*
rm -f /var/cache/apt/pkgcache.bin
rm -f /var/cache/apt/srcpkgcache.bin

find /var/cache/apt/archives -type f -name '*.deb' -print
find /var/crash -xdev -mindepth 1 -delete 2>/dev/null
find /var/lib/systemd/coredump -xdev -mindepth 1 -delete 2>/dev/null

find /tmp -xdev -mindepth 1 -delete
find /var/tmp -xdev -mindepth 1 -delete

find /home/taw/.cache /root/.cache -xdev -mindepth 1 -delete 2>/dev/null

journalctl --rotate
journalctl --vacuum-time=1s

find /var/log -xdev -type f ! -path '/var/log/journal/*' -exec truncate -s 0 {} +

rm -rf /var/lib/snapd
rm -rf /var/cache/snapd
rm -rf /var/snap
rm -rf /home/taw/snap
rm -rf /root/snap

sync
