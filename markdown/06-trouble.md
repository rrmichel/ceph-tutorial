# Troubleshooting


```
# ceph --admin-daemon /var/run/ceph/... help
# ceph --admin-daemon /var/run/ceph/... mon_status
```


```
# ceph tell <daemon> <cmd>
# ceph tell osd.0 bench
# ceph tell mon.<hostname> status
```


```
# ceph-volume lvm list
# ceph-volume lvm create --bluestore \
  --data /dev/sd?
```


```
# ceph config set osd debug_osd "0/5"
# ceph tell osd.0 config set debug_osd 3/5
# ceph daemon osd.0 config show | grep debug_osd
```