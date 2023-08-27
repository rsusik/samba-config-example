# mount samba share to /files

sudo mount.cifs //[IP]/files /files -o username=[USERNAME],uid=[USERNAME],password=[PASSWORD],vers=3.0

# alternatively, with credentials file

sudo mount.cifs //[IP]/files /files -o credentials=/home/[USERNAME]/.smbcredentials,vers=3.0