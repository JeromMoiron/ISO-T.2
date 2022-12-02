@echo off
rem moitrijer
#Controlador-siempre-el-mismo:o-IDE-o-ide... 
#Ejecutar-como-administrador
C:
cd C:\Program Files\Oracle\VirtualBox\
VboxManage createvm --name WST1moitrijer --register --ostype Windows2003
VboxManage storagectl WST1moitrijer --name "Ide_controller" --add IDE --controller "PIIX4"
VboxManage createhd --filename D:\moitrijer\3-.ISO\DIREXAT1moitrijer\Maquinas-exa\WST1moitrijer.vdi --size 35000
VboxManage storageattach WST1moitrijer --storagectl "Ide_controller" --port 0 --device 0  --type hdd --medium "D:\moitrijer\3-.ISO\DIREXAT1moitrijer\Maquinas-exa\WST1moitrijer.vdi"
VboxManage storagectl WST1moitrijer --name "Disquete" --add floppy --controller "I82078"
VboxManage storageattach WST1moitrijer --storagectl "Disquete" --port 0 --device 0 --type fdd --medium D:\moitrijer\3-.ISO\Recursos_examenes\WS2003.VFD
VboxManage modifyvm WST1moitrijer --memory 2048 --vram 64
VboxManage modifyvm WST1moitrijer --ioapic on
VboxManage modifyvm WST1moitrijer --boot1 dvd  --boot2 disk  --boot3 none --boot4 none
VboxManage storageattach WST1moitrijer --storagectl "Ide_controller" --port 1 --device 0 --type dvddrive --medium D:\ISOS\WIN2003_ST.iso
echo Su mv ya está creada
pause


