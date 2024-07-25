# locale and time
CopyFile /etc/locale.conf
CopyFile /etc/locale.gen
CreateLink /etc/localtime /usr/share/zoneinfo/Canada/Mountain

# nvidia card + switching
CopyFile /etc/modprobe.d/nvidia-pm.conf
CopyFile /etc/modprobe.d/nvidia-blacklist.conf

# sddm
CreateFile /etc/sddm.conf > /dev/null
CopyFile /etc/sddm.conf.d/10-wayland.conf
CopyFile /etc/sddm.conf.d/kde_settings.conf

# networking
CopyFile /etc/hosts
CopyFile /etc/NetworkManager/conf.d/dns.conf

# mkinitcpio
CopyFile /etc/mkinitcpio.conf
CopyFile /etc/mkinitcpio.d/linux.preset

# services
CreateLink /etc/systemd/system/bluetooth.target.wants/bluetooth.service /usr/lib/systemd/system/bluetooth.service
CreateLink /etc/systemd/system/dbus-org.bluez.service /usr/lib/systemd/system/bluetooth.service
CreateLink /etc/systemd/system/dbus-org.fedoraproject.FirewallD1.service /usr/lib/systemd/system/firewalld.service
CreateLink /etc/systemd/system/dbus-org.freedesktop.network1.service /usr/lib/systemd/system/systemd-networkd.service
CreateLink /etc/systemd/system/dbus-org.freedesktop.nm-dispatcher.service /usr/lib/systemd/system/NetworkManager-dispatcher.service
CreateLink /etc/systemd/system/dbus-org.freedesktop.resolve1.service /usr/lib/systemd/system/systemd-resolved.service
CreateLink /etc/systemd/system/dbus-org.freedesktop.timesync1.service /usr/lib/systemd/system/systemd-timesyncd.service
CreateLink /etc/systemd/system/display-manager.service /usr/lib/systemd/system/sddm.service
CreateLink /etc/systemd/system/getty.target.wants/getty@tty1.service /usr/lib/systemd/system/getty@.service
CreateLink /etc/systemd/system/multi-user.target.wants/NetworkManager.service /usr/lib/systemd/system/NetworkManager.service
CreateLink /etc/systemd/system/multi-user.target.wants/acpid.service /usr/lib/systemd/system/acpid.service
CreateLink /etc/systemd/system/multi-user.target.wants/cronie.service /usr/lib/systemd/system/cronie.service
CreateLink /etc/systemd/system/multi-user.target.wants/cups.path /usr/lib/systemd/system/cups.path
CreateLink /etc/systemd/system/multi-user.target.wants/cups.service /usr/lib/systemd/system/cups.service
CreateLink /etc/systemd/system/multi-user.target.wants/expressvpn.service /usr/lib/systemd/system/expressvpn.service
CreateLink /etc/systemd/system/multi-user.target.wants/firewalld.service /usr/lib/systemd/system/firewalld.service
CreateLink /etc/systemd/system/multi-user.target.wants/remote-fs.target /usr/lib/systemd/system/remote-fs.target
CreateLink /etc/systemd/system/multi-user.target.wants/systemd-networkd.service /usr/lib/systemd/system/systemd-networkd.service
CreateLink /etc/systemd/system/multi-user.target.wants/tlp.service /usr/lib/systemd/system/tlp.service
CreateLink /etc/systemd/system/network-online.target.wants/NetworkManager-wait-online.service /usr/lib/systemd/system/NetworkManager-wait-online.service
CreateLink /etc/systemd/system/printer.target.wants/cups.service /usr/lib/systemd/system/cups.service
CreateLink /etc/systemd/system/sockets.target.wants/cups.socket /usr/lib/systemd/system/cups.socket
CreateLink /etc/systemd/system/sockets.target.wants/systemd-networkd.socket /usr/lib/systemd/system/systemd-networkd.socket
CreateLink /etc/systemd/system/sockets.target.wants/systemd-userdbd.socket /usr/lib/systemd/system/systemd-userdbd.socket
CreateLink /etc/systemd/system/sysinit.target.wants/keyd.service /usr/lib/systemd/system/keyd.service
CreateLink /etc/systemd/system/sysinit.target.wants/systemd-network-generator.service /usr/lib/systemd/system/systemd-network-generator.service
CreateLink /etc/systemd/system/sysinit.target.wants/systemd-resolved.service /usr/lib/systemd/system/systemd-resolved.service
CreateLink /etc/systemd/system/sysinit.target.wants/systemd-timesyncd.service /usr/lib/systemd/system/systemd-timesyncd.service
CreateLink /etc/systemd/user/default.target.wants/xdg-user-dirs-update.service /usr/lib/systemd/user/xdg-user-dirs-update.service
CreateLink /etc/systemd/user/pipewire-session-manager.service /usr/lib/systemd/user/wireplumber.service
CreateLink /etc/systemd/user/pipewire.service.wants/wireplumber.service /usr/lib/systemd/user/wireplumber.service
CreateLink /etc/systemd/user/sockets.target.wants/p11-kit-server.socket /usr/lib/systemd/user/p11-kit-server.socket
CreateLink /etc/systemd/user/sockets.target.wants/pipewire-pulse.socket /usr/lib/systemd/user/pipewire-pulse.socket
CreateLink /etc/systemd/user/sockets.target.wants/pipewire.socket /usr/lib/systemd/user/pipewire.socket

# antivirus
CreateLink /etc/systemd/system/multi-user.target.wants/clamav-daemon.service /usr/lib/systemd/system/clamav-daemon.service
CreateLink /etc/systemd/system/multi-user.target.wants/clamav-freshclam.service /usr/lib/systemd/system/clamav-freshclam.service
CreateLink /etc/systemd/system/sockets.target.wants/clamav-daemon.socket /usr/lib/systemd/system/clamav-daemon.socket
CopyFile /etc/clamav/freshclam.conf
CopyFile /etc/clamav/clamd.conf

#
CopyFile /etc/makepkg.conf

# everything else
CopyFile /etc/keyd/default.conf
CopyFile /etc/pacman.conf
CopyFile /etc/pacman.d/hooks/refind.hook
CopyFile /etc/pipewire/pipewire.conf
CopyFile /etc/shells
CopyFile /etc/sudoers
CopyFile /etc/group
CopyFile /etc/passwd
CopyFile /etc/subgid
CopyFile /etc/subuid
CopyFile /etc/sysctl.d/80-gamecompatability.conf
CopyFile /etc/vconsole.conf

CreateLink /usr/lib/jvm/default java-22-openjdk
CreateLink /usr/lib/jvm/default-runtime java-22-openjdk

CreateLink /usr/lib/pentablet/conf/xppen/config.xml /etc/xppen/config.xml
CopyFile /etc/xppen/config.xml

# docker

# power efficiency stuff
CopyFile /etc/laptop-mode/laptop-mode.conf
CopyFile /etc/laptop-mode/conf.d/cpufreq.conf
CopyFile /etc/laptop-mode/conf.d/radeon-dpm.conf
