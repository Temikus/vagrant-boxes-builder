yum -y erase avahi freetype
yum -y clean all
rm -rf /etc/yum.repos.d/{puppetlabs,epel}.repo
rm -rf VBoxGuestAdditions_*.iso

# Remove traces of mac address from network configuration
sed -i /HWADDR/d /etc/sysconfig/network-scripts/ifcfg-en*
