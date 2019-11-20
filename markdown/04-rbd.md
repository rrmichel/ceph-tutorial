# RBD

```
# rbd create --size <size> rbd1
# rbd info rbd1
# rbd status rbd1
```


```
# rbd feature [enable|disable] ...
# rbd info rbd1
```


```
# rbd map rbd1
# rbd showmapped
```


```
# dd if=/dev/zero of=/dev/rbd0 bs=1M count=9
# rbd diff rbd1
```


```
# date > /dev/rbd0
# head -n 2 /dev/rbd0
# rbd snap create rbd1@snap1
# rbd ls --long
```


```
# rbd snap protect rbd1@snap1
# rbd clone rbd1@snap1 rbd2
# rbd ls --long
```


```
# rbd flatten rbd2
# rbd ls --long
```


```
# uname -a > /dev/rbd0
# head -n2 /dev/rbd0
# rbd snap rollback rbd1@snap1
# head -n2 /dev/rbd0
# rbd unmap /dev/rbd0
```


```
# rbd snap unprotect rbd1@snap1
# rbd snap rm rbd1@snap1
```


```
# rbd rm rbd1
```


# rbd Namespaces

```
# rbd namespace ls
# rbd namespace create --namespace training
# rbd create --namespace training rbd2
# rbd ls
```


```
# rbd --namespace training ls
# rados -p rbd ls
# rados -p rbd --namespace training ls
```


```
# rbd watch <image>
# rbd sparsify <image>
# rbd bench --io-type read|write|rw <image>
```