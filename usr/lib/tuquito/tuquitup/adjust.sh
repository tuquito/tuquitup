#!/bin/bash
cd /usr/lib/tuquito/tuquitup/
cp -f default.pa /etc/pulse/default.pa
cp locales/terminal-es.mo /usr/share/tuquito/locale/es/LC_MESSAGES/terminal.mo
cp locales/terminal-pt.mo /usr/share/tuquito/locale/pt/LC_MESSAGES/terminal.mo
cp icons/ubuntu-logo16.png /usr/share/icons/gnome/16x16/places/ubuntu-logo.png
cp icons/ubuntu-logo22.png /usr/share/icons/gnome/22x22/places/ubuntu-logo.png
cp icons/ubuntu-logo24.png /usr/share/icons/gnome/24x24/places/ubuntu-logo.png
cp icons/ubuntu-logo32.png /usr/share/icons/gnome/32x32/places/ubuntu-logo.png
cp icons/ubuntu-logosc.svg /usr/share/icons/gnome/scalable/places/ubuntu-logo.svg
cp -f skel/face /etc/skel/.face
cp -f skel/face /home/$SUDO_USER/.face
cp -af skel/config /etc/skel/.config
rm -rf /etc/skel/.bashrc
rm -rf /root/.bashrc
rm -rf /etc/bash.bashrc
cp -f skel/bashrc /etc/skel/.bashrc
cp -f bash.bashrc /etc/bash.bashrc
if [ -f /etc/lsb-base-logging.sh ]; then
    cp -f lsb-base-logging.sh /etc/lsb-base-logging.sh
fi
if [ -f /etc/casper.conf ]; then
    cp -f casper.conf /etc/casper.conf
fi
cp -f gnome-2.soundlist /etc/sound/events/gnome-2.soundlist
if [ "$1" = "LXDE" ]; then
	cp -af skel/tilda /etc/skel/.tilda
else
	cp -af skel/themes /etc/skel/.themes
	cp skel/gtkrc-2.0 /etc/skel/.gtkrc-2.0
	cp guake.desktop /etc/xdg/autostart/
	cp applications.menu /etc/xdg/menus/
fi
