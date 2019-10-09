# RBD

```
# rbd create --size rbd1
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
# rbd unmap /dev/rbd0
```


```
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
# rbd snap unprotect test@snap1
# rbd snap rm test@snap1
```


```
# rbd rm rbd1
```