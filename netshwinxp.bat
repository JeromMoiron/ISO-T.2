rem moitrijer MoironTrigo,Jerom
netsh interface ip set address "conexion de area local" static 172.16.206.109 255.255.0.0 172.16.0.58 1
netsh interface ip add dns "conexion de area local" 172.16.0.58 index=1 
