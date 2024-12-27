Graphics

/etc/apt/source.list 
# See https://wiki.debian.org/SourcesList for more information.
deb https://deb.debian.org/debian bookworm main contrib non-free non-free-firmware
deb-src https://deb.debian.org/debian bookworm main contrib non-free non-free-firmware

deb https://security.debian.org/debian-security bookworm-security main contrib non-free non-free-firmwa>
deb-src https://security.debian.org/debian-security bookworm-security main contrib non-free non-free-fi>

deb https://deb.debian.org/debian bookworm-updates main contrib non-free non-free-firmware
deb-src https://deb.debian.org/debian bookworm-updates main contrib non-free non-free-firmware

# Backports allow you to install newer versions of software made available for this release
deb https://deb.debian.org/debian bookworm-backports main contrib non-free non-free-firmware
deb-src https://deb.debian.org/debian bookworm-backports main contrib non-free non-free-firmware

sudo apt update
sudo apt install nvidia-driver firmware-misc-nonfree
sudo reboot
sudo cat /sys/module/nvidia_drm/parameters/modeset
sudo nano /etc/modprobe.d/nvidia-options.conf 
  #options nvidia-current NVreg_DeviceFileUID=0 NVreg_DeviceFileGID=44 NVreg_DeviceFileMode=0660

    # To grant performance counter access to unprivileged users, uncomment the following line:
    #options nvidia-current NVreg_RestrictProfilingToAdminUsers=0

    # Uncomment to enable this power management feature:
    options nvidia-current NVreg_PreserveVideoMemoryAllocations=1

    #for wayland
    options nvidia-drm modeset=1
    # Uncomment to enable this power management feature:
    #options nvidia-current NVreg_EnableS0ixPowerManagement=1


sudo echo 'GRUB_CMDLINE_LINUX="$GRUB_CMDLINE_LINUX nvidia-drm.modeset=1"' > /etc/default/grub.d/nvidia-modeset.cfg
sudo apt install nvidia-suspend-common
systemctl enable nvidia-suspend.service
systemctl enable nvidia-hibernate.service
systemctl enable nvidia-resume.service

Timesync
sudo systemctl start systemd-timesyncd
sudo apt install sudo systemd-timesyncd
sudo systemctl start systemd-timesyncd
sudo systemctl status systemd-timesyncd
timedatectl



sudo apt update
sudo apt install nvidia-driver firmware-misc-nonfree
sudo reboot
sudo cat /sys/module/nvidia_drm/parameters/modeset
sudo echo "options nvidia-drm modeset=1" >> /etc/modprobe.d/nvidia-options.conf
sudo echo "options nvidia NVreg_PreserveVideoMemoryAllocations=1" >> /etc/modprobe.d/nvidia-options.conf
echo 'GRUB_CMDLINE_LINUX="$GRUB_CMDLINE_LINUX nvidia-drm.modeset=1"' > /etc/default/grub.d/nvidia-modeset.cfg
sudo echo 'GRUB_CMDLINE_LINUX="$GRUB_CMDLINE_LINUX nvidia-drm.modeset=1"' > /etc/default/grub.d/nvidia-modeset.cfg
sudo apt install nvidia-suspend-common
systemctl enable nvidia-suspend.service
systemctl enable nvidia-hibernate.service
systemctl enable nvidia-resume.service

Timesync
sudo systemctl start systemd-timesyncd
sudo apt install sudo systemd-timesyncd
sudo systemctl start systemd-timesyncd
sudo systemctl status systemd-timesyncd
timedatectl









sudo deb http://deb.debian.org/debian/ bookworm main contrib non-free non-free-firmware
sudo apt update
sudo apt install nvidia-driver firmware-misc-nonfree
sudo reboot
cat /sys/module/nvidia_drm/parameters/modeset
sudo cat /sys/module/nvidia_drm/parameters/modeset
sudo nano /etc/modprobe.d/nvidia-options.conf 
sudo reboot
sudo cat /sys/module/nvidia_drm/parameters/modeset
sudo systemctl start systemd-timesyncd
sudo apt install sudo systemd-timesyncd
sudo systemctl start systemd-timesyncd
sudo systemctl status systemd-timesyncd
timedatectl
gfio
sudo apt install canberra-gtk-module
sudo gfio
cd ..
fallocate -l 10G gentoo_root.img
ls
cd home/alex/
fallocate -l 10G gentoo_root.img
ls
ls -al
sudo cp /home/alex/gentoo_root.img /data/
sudo chown /data alex
sudo chown alex /data
exit
sudo apt install linux-headers-amd64
sudo apt install -t stable-backports zfsutils-linux
ls -l /dev/disk/by-id/
ls -l /dev/disk/by-path/
blockdev -v --getpbsz
lsblk -t
fdisk -l
zpool create -o ashift=12 tank raidz ata-WDC_WD2000FYYZ-01UL1B1_WD-WCC1P1269446 ata-WDC_WD2000FYYZ-01UL1B1_WD-WCC1P1285642 ata-WDC_WD2000FYYZ-01UL1B2_WD-WMC1P0E4VYK2 ata-WDC_WD2000FYYZ-01UL1B2_WD-WMC1P0E034TL
sudo zpool create -o ashift=12 tank raidz ata-WDC_WD2000FYYZ-01UL1B1_WD-WCC1P1269446 ata-WDC_WD2000FYYZ-01UL1B1_WD-WCC1P1285642 ata-WDC_WD2000FYYZ-01UL1B2_WD-WMC1P0E4VYK2 ata-WDC_WD2000FYYZ-01UL1B2_WD-WMC1P0E034TL
sudo zpool create -f -o ashift=12 tank raidz ata-WDC_WD2000FYYZ-01UL1B1_WD-WCC1P1269446 ata-WDC_WD2000FYYZ-01UL1B1_WD-WCC1P1285642 ata-WDC_WD2000FYYZ-01UL1B2_WD-WMC1P0E4VYK2 ata-WDC_WD2000FYYZ-01UL1B2_WD-WMC1P0E034TL
sudo zfs set compression=on tank
ls
mkdir -p /data
sudo mkdir -p /data
zfs create -o mountpoint=/data tank/data
sudo zfs create -o mountpoint=/data tank/data
sudo apt install gparted
gnome-disks
sudo apt install fio
sudo apt install gfio
gfio
sudo apt install fio
sudo gfio
sudo gfio /data
cd /data
fio --name TEST --eta-newline=5s --filename=fio-tempfile.dat --rw=read --size=500m --io_size=10g --blocksize=1024k --ioengine=libaio --fsync=10000 --iodepth=32 --direct=1 --numjobs=1 --runtime=60 --group_reporting
sudo fio --name TEST --eta-newline=5s --filename=fio-tempfile.dat --rw=read --size=500m --io_size=10g --blocksize=1024k --ioengine=libaio --fsync=10000 --iodepth=32 --direct=1 --numjobs=1 --runtime=60 --group_reporting
sudo fio --name TEST --eta-newline=5s --filename=fio-tempfile.dat --rw=read --size=500m --io_size=10g --blocksize=1024k --ioengine=libaio --fsync=10000 --iodepth=32 --direct=1 --numjobs=10 --runtime=60 --group_reporting
sudo fio --name TEST --eta-newline=5s --filename=fio-tempfile.dat --rw=write --size=500m --io_size=10g --blocksize=1024k --ioengine=libaio --fsync=10000 --iodeptDDDDDDDDDh=32 --direct=1 --numjobs=1 --runtime=60 --group_reporting
sudo gfio --name TEST --eta-newline=5s --filename=fio-tempfile.dat --rw=read --size=500m --io_size=10g --blocksize=1024k --ioengine=libaio --fsync=10000 --iodepth=32 --direct=1 --numjobs=10 --runtime=60 --group_reporting
sudo fio --name TEST --eta-newline=5s --filename=fio-tempfile.dat --rw=write --size=500m --io_size=10g --blocksize=1024k --ioengine=libaio --fsync=10000 --iodepth=32 --direct=1 --numjobs=10 --runtime=60 --group_reporting
sudo fio --name TEST --eta-newline=5s --filename=fio-tempfile.dat --rw=randread --size=500m --io_size=10g --blocksize=4k --ioengine=libaio --fsync=1 --iodepth=1 --direct=1 --numjobs=1 --runtime=60 --group_reporting
fio --name TEST --eta-newline=5s --filename=fio-tempfile.dat --rw=randrw --size=500m --io_size=10g --blocksize=4k --ioengine=libaio --fsync=1 --iodepth=1 --direct=1 --numjobs=1 --runtime=60 --group_reporting
sudo fio --name TEST --eta-newline=5s --filename=fio-tempfile.dat --rw=randrw --size=500m --io_size=10g --blocksize=4k --ioengine=libaio --fsync=1 --iodepth=1 --direct=1 --numjobs=1 --runtime=60 --group_reporting
zfs get atime tank
zfs set atime=off tank
sudo zfs set atime=off tank
sudo zfs set atime=on tank
sudo zfs set realtime=on tank
sudo zfs set atime=off tank
zfs set atime=off tank
zfs get atime tank
sudo zfs set xattr=sa tank
sudo zfs get xattr
sudo fio --name TEST --eta-newline=5s --filename=fio-tempfile.dat --rw=randread --size=500m --io_size=10g --blocksize=4k --ioengine=libaio --fsync=1 --iodepth=1 --direct=1 --numjobs=1 --runtime=60 --group_reporting
sudo fio --name TEST --eta-newline=5s --filename=fio-tempfile.dat --rw=write --size=500m --io_size=10g --blocksize=1024k --ioengine=libaio --fsync=10000 --iodepth=32 --direct=1 --numjobs=10 --runtime=60 --group_reporting
sudo fio --name TEST --eta-newline=5s --filename=fio-tempfile.dat --rw=randrw --size=500m --io_size=10g --blocksize=4k --ioengine=libaio --fsync=1 --iodepth=1 --direct=1 --numjobs=1 --runtime=60 --group_reporting
exit
echo $HISTFILE
emacs ~/.bash_history
gedit ~/.bash_history
nano ~/.bash_history
cat ~/.bash_history
wayland
echo $XDG_SESSION_TYPE
echo 'GRUB_CMDLINE_LINUX="$GRUB_CMDLINE_LINUX nvidia-drm.modeset=1"' > /etc/default/grub.d/nvidia-modeset.cfg
sudo echo 'GRUB_CMDLINE_LINUX="$GRUB_CMDLINE_LINUX nvidia-drm.modeset=1"' > /etc/default/grub.d/nvidia-modeset.cfg
sudo apt install nvidia-suspend-common
systemctl enable nvidia-suspend.service
systemctl enable nvidia-hibernate.service
systemctl enable nvidia-resume.service
cat /proc/driver/nvidia/params | grep PreserveVideoMemoryAllocations
exit
echo $XDG_SESSION_TYPE
cat ~/.bash_history
sudo dpkg ~/Downloads/veeam-release-deb_1.0.9_amd64.deb 
sudo apt install ~/Downloads/veeam-release-deb_1.0.9_amd64.deb 
veaam
veeamconfig
sudp veeamconfig
sudo veeamconfig
sudo veaam
sudo apt install veaam
veeam
sudo dpkg -i ./veeam-release* && apt-get update
dpkg -i ./veeam-release* && apt-get update
sudo dpkg -i ./veeam-release* && apt-get update
sudo dpkg -i ~/Downloads/veeam-release* && apt-get update
sudo apt-get install blksnap veeam
sudo apt remove ~/Downloads/veeam-release-deb_1.0.9_amd64.deb 
sudo apt autoremove
sudo dpkg -i ~/Downloads/veeam-release* && apt-get update
sudo apt update
sudo apt-get install blksnap veeam
veeam
sudoveeam
sudo veeam
sudo apt install efibootmgr
efibootmgr -v
ls sys/firmware/efi
sudo ls sys/firmware/efi
/sys/firmware/efi/
ls /sys/firmware/efi
sudo efibootmgr
sudo efibootmgr -v
