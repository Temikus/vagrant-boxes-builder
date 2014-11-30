# Vagrant Base Boxes

## Downloads

* **[CentOS-6.5-i386-v20140504.box](http://temikus.net/downloads/CentOS-7-x86_64-v20141130.box):** CentOS 7.0 x86_64 Minimal *(VirtualBox Guest Additions 4.3.18, Puppet 3.7.3)*  
  Vagrant Cloud: [temikus/centos-7.0-vbox-puppet 0.1.0](https://vagrantcloud.com/temikus/boxes/centos-7.0-vbox-puppet/versions/0.1.0)  
  <small>sha256sum: `9245f5fccca02ca097d4faf051063f757847ab9e0dc0e774c91c4bc08e6e999c`</small>

## How these boxes were built

These boxes were automatically built using [packer](http://www.packer.io) (v0.7.4) and the definitions in this repo:

```sh
$ cd packer
$ rake build
```

The definitions are heavily based on Nick Muerdter's repo for [NREL](https://github.com/NREL/vagrant-boxes) but with a few modifications:

- Templates are updated to CentOS 7
- Packages are more cloud friendly (more state is cleaned up before packaging)
- The disk is limited to 20GB
- RAM is bumped up to 512MB