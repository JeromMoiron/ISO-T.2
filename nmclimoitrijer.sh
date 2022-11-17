#!/bin/bash
nmcli con mod "Wired connection 1" ipv4.addresses <ip>/<mask> #Aquí se pondría la dirección Ip que se necesite
nmcli con mod "Wired connection 1" ipv4.gateway <ip_puerta_enlace> 
nmcli con mod "Wired connection 1" ipv4.dns <ip_servidor_dns> 
nmcli con mod "Wired connection 1" ipv4.method manual
nmcli con up "Wired connection 1"
ip -c a
