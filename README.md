## kubeadm installer for CoreOS, Ubuntu, Debian, CentOS and Fedora


> **MAINTAINER HAS SWITCHED !**
>
> Use https://github.com/xakraz/kubeadm-installer for the latest update and PRs



### How to run install kubeadm

Given docker already is installed (otherwise, run `curl get.docker.com | bash`), you can install kubeadm easily!

```bash
$ docker run -it \
	-v /etc/cni:/rootfs/etc/cni \
	-v /etc/systemd:/rootfs/etc/systemd \
	-v /opt:/rootfs/opt \
	-v /usr/bin:/rootfs/usr/bin \
	luxas/kubeadm-installer ${your_os_here}
```

`${your_os_here}` can be `coreos`, `ubuntu`, `debian`, `fedora` or `centos`

### How to uninstall/revert

```bash
$ docker run -it 	\
	-v /etc/cni:/rootfs/etc/cni \
	-v /etc/systemd:/rootfs/etc/systemd \
	-v /opt:/rootfs/opt \
	-v /usr/bin:/rootfs/usr/bin \
	luxas/kubeadm-installer ${your_os_here} uninstall
```

### What's inside?

 - kubeadm `v1.5.0-alpha.2.421+a6bea3d79b8bba`, see releases here: http://kubernetes.io/docs/admin/kubeadm/
 - kubernetes `v1.4.4`
 - cni `07a8a28637e97b22eb8dfe710eeae1344f69d16e`

### License

MIT
