nmcli con mod "Wired connection 1" ipv4.addresses 172.16.206.109/16
nmcli con mod "Wired connection 1" ipv4.gateway 172.16.0.58
nmcli con mod "Wired connection 1" ipv4.dns 172.16.0.58
nmcli con mod "Wired connection 1" ipv4.method manual
nmcli con up "Wired connection 1"
ip -c a