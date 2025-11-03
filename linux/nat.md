#### iptables + nat + masquerade / snat
https://www.geeksforgeeks.org/linux-unix/using-masquerading-with-iptables-for-network-address-translation-nat/

#### linux virtual ethernet interface + bridge
https://medium.com/@amazingandyyy/introduction-to-network-namespaces-and-virtual-ethernet-veth-devices-304e0c02d084
https://medium.com/@amazingandyyy/learn-linux-bridge-with-graphs-a425aa92945f

https://kbespalov.medium.com/%D0%B2%D0%B8%D1%80%D1%82%D1%83%D0%B0%D0%BB%D1%8C%D0%BD%D1%8B%D0%B5-%D1%81%D0%B5%D1%82%D0%B5%D0%B2%D1%8B%D0%B5-%D1%83%D1%81%D1%82%D1%80%D0%BE%D0%B9%D1%81%D1%82%D0%B2%D0%B0-%D0%B2-linux-linux-bridge-7e0e887edd01
https://dev.to/krjakbrjak/setting-up-vm-networking-on-linux-bridges-taps-and-more-2bbc
https://superuser.com/questions/1781039/setting-up-simple-isolated-virtual-network-for-testing
https://linuxconfig.org/configuring-virtual-network-interfaces-in-linux

#### Deep dive into Docker Overlay Networks : Part 1
https://rebirth.devoteam.com/2017/04/25/deep-dive-into-docker-overlay-networks-part-1/
https://bunny.net/academy/computing/what-is-docker-networking/
https://medium.com/@augustineozor/understanding-docker-bridge-network-6e499da50f65
https://leftasexercise.com/2020/01/17/virtual-networking-labs-building-a-virtual-firewall-and-router-with-linux-namespaces/

https://maxnilz.com/docs/004-network/006-linux-rx/
https://thinkpalm.com/blogs/how-linux-kernel-handles-network-packets/

https://medium.com/@dipakkrdas/netfilter-and-iptables-f8a946bb83af
https://thermalcircle.de/doku.php?id=blog:linux:nftables_packet_flow_netfilter_hooks_detail

https://thermalcircle.de/doku.php?id=blog:linux:routing_decisions_in_the_linux_kernel_1_lookup_packet_flow

* Netfilter - is the framework within the Linux kernel that performs packet filtering

* Iptables - is a command-line user-space tool used to configure those Netfilter rules
* Nftables - Debian, Ubuntu (20.10+), Fedora, and RHEL 8+

* ufw - Ubuntu and Debian-based systems.
* firewalld - Red Hat-based systems (e.g., CentOS, Fedora)