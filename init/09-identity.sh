truncate -s 0 /etc/machine-id
rm -f /var/lib/dbus/machine-id
ln -sfn /etc/machine-id /var/lib/dbus/machine-id

poweroff
