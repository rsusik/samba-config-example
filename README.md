# Simple example how to configure and mount SAMBA share in Linux

## On server side

### 1)
Add `path` to be shared to `/etc/samba/smb.conf` (see `server/smb.conf` file)

### 2)
Restart service (see `server/restart.service.sh` file)

## On client side

### 1)
Mount the share (see `client/mount.sh` file)

### 2)
Add share to `fstab` (see `client/fstab` file)

### Optionally
Create `.smbcredentials` file to avoid directly providing password

## Important notes

* Make sure `.smbcredentials` has `600` priviledges
* Replace all `[XYZ]` constants (such as `[IP]`) with proper values
* In case of any `Permission denied` errors try to change proviledges to shared folder on server to `770` and `chgrp` to proper group (`serverusers` in case of this example)
