mkdir -p /var/run/vmblock-fuse
vmware-vmblock-fuse -o subtype=vmware-vmblock,default_permissions,allow_other /var/run/vmblock-fuse
kill $(pgrep -f 'vmtoolsd -n vmusr')
vmware-user-suid-wrapper
