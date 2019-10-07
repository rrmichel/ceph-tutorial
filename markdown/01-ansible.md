# ansible Setup

* ansible >= `2.8`
* ceph-ansible
  * Branch: `stable-4.0`


## Setup

```
group_vars/
hosts_vars/
```


```
[mons]
host1

[mgrs]
host2

[osds]
osd1
osd2

[mdss]
...
```


# Install

* via pip (optional)
  * Distro?
* git branch
  * symlinks


# Config

`all.yml`
```yaml
ceph_origin: distro
ceph_repository: community
ceph_stable_release: nautilus
monitor_interface: eth1
radosgw_interface: eth1
public_network: 10.20.30.0/24
cluster_network: 192.168.121.0/24
ceph_conf_overrides:
    osd:
        osd scrub during recovery: false
```


`osds.yml`
```yaml
lvm_volumes:
  - data: /dev/sda
  - data: /dev/sdb
```
