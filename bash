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


sudo nano /etc/default/grub.d/nvidia-modeset.cfg
  GRUB_CMDLINE_LINUX="$GRUB_CMDLINE_LINUX nvidia-drm.modeset=1"
sudo apt install nvidia-suspend-common
systemctl enable nvidia-suspend.service
systemctl enable nvidia-hibernate.service
systemctl enable nvidia-resume.service

Timesync
  sudo apt install sudo systemd-timesyncd
  sudo systemctl start systemd-timesyncd
  sudo systemctl status systemd-timesyncd
  timedatectl
  sudo reboot

ZFS
  sudo apt install linux-headers-amd64
  sudo apt install -t stable-backports zfsutils-linux
  ls -l /dev/disk/by-id/
  ls -l /dev/disk/by-path/
  sudo zpool create -f -o ashift=12 tank raidz ata-WDC_WD2000FYYZ-01UL1B1_WD-WCC1P1269446 ata-WDC_WD2000FYYZ-01UL1B1_WD-WCC1P1285642 ata-WDC_WD2000FYYZ-01UL1B2_WD-WMC1P0E4VYK2 ata-WDC_WD2000FYYZ-01UL1B2_WD-WMC1P0E034TL
  sudo zfs set compression=on tank
  mkdir -p ~/data
  #Perfomance and options for Shares -o atime=off -o dnodesize=auto -o xattr=sa -o casesensitivity=mixed compression=on
  sudo zfs create -o mountpoint=/data -o atime=off -o dnodesize=auto -o xattr=sa -o casesensitivity=mixed -o compression=on tank/data

  SMB Share 
  sudo apt install samba
  Configure a very simiple CIFS share (read/write to 192.168.0.0/24, read only to 10.0.0.0/8):

    zfs set mountpoint=/data tank/data
    zfs set sharesmb=on tank/data
    zfs share tank/data


Veeam
https://download2.veeam.com/VAL/v6/veeam-release-deb_1.0.9_amd64.deb
sudo dpkg -i ~/Downloads/veeam-release*
sudo apt update
sudo apt install blksnap veeam
sudo veeam
sudo apt install rsync

