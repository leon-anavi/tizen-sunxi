# -*-mic2-options-*- -f raw --fstab=name --copy-kernel --compress-disk-image=bz2 --generate-bmap -*-mic2-options-*-

lang en_US.UTF-8
keyboard us
timezone --utc Etc/UTC

# 977272832 = 933M will fit into 1GB+ (953MiB) sdcard
part /boot --fstype="vfat" --ondisk=mmcblk0 --active --label "boot" --size=32 --start 8 
part / --fstype="ext4" --ondisk=mmcblk0  --label "rootfs" --size=900

rootpw tizen 
xconfig --startxonboot

desktop --autologinuser=guest  
user --name guest  --groups audio,video --password 'tizen'


repo --name=common-wayland_armv7l --ssl_verify=no --baseurl=http://download.tizen.org/snapshots/tizen/common/latest/repos/arm-wayland/packages/

%packages --ignoremissing

#~ @Common Base
#~ @Common Console Tools
#~ @Common Packaging
#~ @Common Wayland
#~ @Common Adaptation
#~ @Common Middleware
#~ @Common Applications
#~ @Common Bluetooth
#~ @Common Multimedia
#~ @Common Desktop Applications
#~ #~ @Common Crosswalk
#~ @Common Qt5


	
ail
alarm-server
alsa-plugins-pulse
alsa-scenario
alsa-utils
app-checker
app-checker-server
app-core-common
app-core-efl
app-svc
audio-session-manager
augeas-lenses
aul
bash
	bluetooth-share
boost-license
bundle
bzip2
ca-certificates
ca-certificates-mozilla
calendar-service
cantarell-fonts
capi-appfw-application
capi-appfw-app-manager
capi-appfw-package-manager
capi-location-manager
capi-media-image-util
capi-network-bluetooth
capi-network-connection
capi-network-tethering
capi-system-device
capi-system-info
capi-system-power
capi-system-sensor
capi-system-system-settings
capi-web-favorites
capi-web-url-download
chromium
connman
contacts-service2
coreutils
cpio
csr-framework
curl
db4
dbus
dbus-glib
dbus-python
default-ac-domains
dejavu-fonts
desktop-skin
device-mapper
diffutils
download-provider
dracut
drm-client
e2fsprogs
ecore
edbus
edje
eet
eeze
efl-data
efl-theme-tizen-hd
efreet
eina
eio
eldbus
elementary
elementary-locale
elementary-tools
elm-misc
embryo
emotion
emotion-examples
eo
ephysics
ethumb
evas
evas-examples
file
filesystem
findutils
fontconfig
fribidi
gawk
gconf-dbus
gcr-data
gdk-pixbuf
gdk-pixbuf-query-loaders
giflib
gio-branding-upstream
git
glib2-tools
glibc
glibc-locale
glib-networking
gpg2
grep
gst-libav
gst-plugins-bad
gst-plugins-base
gst-plugins-good
gstreamer
gstreamer-utils
gzip
hardlink
heynoti
hwdata
iniparser
iptables
kbd
kbd-misc
kmod
kmod-compat
kpartx
less
libaccounts-svc
libacl
libadns
libalarm
libasound
libassuan
libattr
libaugeas
libavcodec
libavformat
libavsysaudio
libavutil
libbadge
libblkid
libbluetooth
	libbluetooth-share
libboost_chrono
libboost_system
libboost_thread
libbullet
libbz2
libcairo
libcairo-gobject
libcamel
libcap
libcares
libcom-core
libcom_err
libcurl
libdbus
libdeviced
libdevice-node
libdevman
libdevmapper
libdlog
libdrm
libebackend
libebook
libebook-contacts
libecal
libedata-book
libedata-cal
libedataserver
libelf
libelf0
libexif
libexpat
libext2fs
libfeedback
libffi
libflac
libfreebl3
libfreetype
libgbm
libgcc_s1
libgck
libgcr
libgcrypt
libgdbm
libgio
libglib
libgmodule
libgmp
libgnutls
libgobject
libgpg-error
libgstallocators
libgstapp
libgstaudio
libgstbasecamerabinsrc
libgstcodecparsers
libgstegl
libgstfft
libgstmpegts
libgstpbutils
libgstphotography
libgstreamer
libgstriff
libgstrtp
libgstrtsp
libgstsdp
libgsttag
libgstvideo
libgthread
libhaptic
libharfbuzz
libhogweed
libical
libicu
libidn
libiptc
libiri
libjasper
libjpeg
libjson
libkmod
libksba
libltdl
liblua
liblzma
libmagic
libmagic-data
libmm-common
libmm-fileinfo
libmm-session
libmm-sound
libmm-utility
libmount
libmtdev
libncurses
libnet-client
libnettle
libnfnetlink
libnl1
libnl3
libogg
libopenssl
libp11-kit
libpango
libpci
libpciaccess
libpcre
libply
libply-boot-client
libply-splash-core
libply-splash-graphics
libpng
libpopt
libprivilege-control
libprivilege-control-conf
libpth
libpulse
libpython
libreadline
librua
libsecret
libsecurity-server-client
libsf-common
libslp-db-util
libslp-location
libslp-pm
libsmack
libsnapper
libsndfile
libsoftokn3
libsolv
libsolv-tools
libsoup
libspeex
libspeexdsp
libsqlite
libstdc++
libswscale
libsystemd
libtapi
libtapi3
libtasn1
libtasn1-tools
libtbm
libtdb
libtheora
libtiff
libtzplatform-config
libuuid
libv4l
libv8
libvorbis
libvorbisenc
libvpx
libwayland-client
libwayland-cursor
libwayland-egl
libwayland-server
libwifi-direct
libxkbcommon
libxml2
libxslt
libxtables
libzmq
libzypp
linux-firmware
lsof
mesa
mesa-libEGL
mesa-libglapi
mesa-libGLESv2
message-port
model-config-generic
mtools
nano
ncurses-utils
neard
neardal
net-config
net-tools
notification
nspr
nss
nss-certs
openssh
openssl
openssl-misc
org.tizen.calculator
pacrunner
pacrunner-libproxy
pam
pam-locale
pam-modules-extra
pango-tools
parted
patch
pciutils
perl
pims-ipc
pixman
pkg-config
pkgmgr
pkgmgr-client
pkgmgr-info
pkgmgr-info-parser
pkgmgr-installer
pkgmgr-server
plymouth-plugin-label
plymouth-plugin-script
plymouth-plugin-two-step
powertop
prelink
privacy-manager-client
privacy-manager-server
procps-ng
psmisc
pulseaudio
pulseaudio-config
pulseaudio-locale
pulseaudio-utils
pwdutils
python
python-libxml2
python-xml
qt5-default
qt5-plugin-imageformat-jpeg
qt5-plugin-platform-linuxfb
qt5-qtcore
qt5-qtgui
qt5-qtmultimedia
qt5-qtnetwork
qt5-qttools-qtdesigner
qt5-qtwayland
qt5-qtwidgets
qt5-qtxml
qt5-qtxmlpatterns
qt5-tools
qtchooser
rfkill
rpm
rsync
sbc
screen
security-server
sed
sensor
setup
shared-mime-info
snapper
snapper-zypp-plugin
sqlite
status
strace
sudo
sysman
syspopup
syspopup-caller
systemd
system-server
tar
terminfo-base
tizen-branding-default
tizen-platform-config
tizen-platform-config-tools
tizen-release
tree
tzdata
unzip
update-alternatives
user-session-units
util-linux
vconf
vim
vim-base
wdiff
weston
weston-clients
weston-common
weston-common-config
weston-common-tz-launcher
weston-rdp
wget
wpa_supplicant
wrt-widgets
xdgmime
xkeyboard-config
xz
zip
zlib
zypper
zypp-plugin-python
 


%end



%post
################ common-base.post ##################

# setup systemd default target for user session
cat <<'EOF' >>/lib/systemd/user/default.target
[Unit]
Description=User session default target
EOF
mkdir -p /lib/systemd/user/default.target.wants

# Run prelink to speed up dynamic binary/library loading
/usr/sbin/prelink --all

ln -sf /proc/self/mounts /etc/mtab

# fix TIVI-2291
sed -ri "s/(^blacklist i8042.*$)/#fix from base-general.post \1/" /etc/modprobe.d/blacklist.conf

# sdx: fix smack labels on /var/log
chsmack -a '*' /var/log

# Temporary work around for bug in filesystem package resulting in the 'app' user home
# directory being only readable by root
chown -R app:app /opt/home/app

# Since weston-launch runs with the "User" label, the app
# home dir must have the same label
chsmack -a User /opt/home/app

# bug workaround on MIC (DEVT-160)
if [ -e /etc/sysconfig/i18n -a ! -e /etc/locale.conf ]; then
	unset LANG
	unset LC_CTYPE
	unset LC_NUMERIC
	unset LC_TIME
	unset LC_COLLATE
	unset LC_MONETARY
	unset LC_MESSAGES
	unset LC_PAPER
	unset LC_NAME
	unset LC_ADDRESS
	unset LC_TELEPHONE
	unset LC_MEASUREMENT
	unset LC_IDENTIFICATION
	. /etc/sysconfig/i18n
	rm -f /etc/sysconfig/i18n
	[ -n "$LANG" ] && echo LANG=$LANG > /etc/locale.conf
	[ -n "$LC_CTYPE" ] && echo LC_CTYPE=$LC_CTYPE >> /etc/locale.conf
	[ -n "$LC_NUMERIC" ] && echo LC_NUMERIC=$LC_NUMERIC >> /etc/locale.conf
	[ -n "$LC_TIME" ] && echo LC_TIME=$LC_TIME >> /etc/locale.conf
	[ -n "$LC_COLLATE" ] && echo LC_COLLATE=$LC_COLLATE >> /etc/locale.conf
	[ -n "$LC_MONETARY" ] && echo LC_MONETARY=$LC_MONETARY >> /etc/locale.conf
	[ -n "$LC_MESSAGES" ] && echo LC_MESSAGES=$LC_MESSAGES >> /etc/locale.conf
	[ -n "$LC_PAPER" ] && echo LC_PAPER=$LC_PAPER >> /etc/locale.conf
	[ -n "$LC_NAME" ] && echo LC_NAME=$LC_NAME >> /etc/locale.conf
	[ -n "$LC_ADDRESS" ] && echo LC_ADDRESS=$LC_ADDRESS >> /etc/locale.conf
	[ -n "$LC_TELEPHONE" ] && echo LC_TELEPHONE=$LC_TELEPHONE >> /etc/locale.conf
	[ -n "$LC_MEASUREMENT" ] && echo LC_MEASUREMENT=$LC_MEASUREMENT >> /etc/locale.conf
	[ -n "$LC_IDENTIFICATION" ] && echo LC_IDENTIFICATION=$LC_IDENTIFICATION >> /etc/locale.conf
fi

# workaround for bug PTREL-763
patch -b -p1 -d/ <<'EOF'
--- bad/etc/pam.d/systemd-user 2014-03-20 10:01:36.657843073 +0100
+++ good/etc/pam.d/systemd-user 2014-03-20 10:06:51.586121696 +0100
@@ -4,5 +4,6 @@
 
 account include system-auth
 session include system-auth
+session required pam_systemd.so
 auth required pam_deny.so
 password required pam_deny.so
EOF

# extra fix to avoid root and display sessions
patch -b -p1 -d/ <<'EOF'
--- bad/etc/pam.d/system-auth	2014-04-07 06:16:51.888018876 -0700
+++ good/etc/pam.d/system-auth	2014-04-07 06:16:46.335018503 -0700
@@ -11,7 +11,6 @@
 password    required      pam_deny.so
 
 session     optional      pam_keyinit.so revoke
-session     optional      pam_systemd.so
 session     required      pam_limits.so
 session     [success=1 default=ignore] pam_succeed_if.so service in crond quiet use_uid
 session     required      pam_unix.so
EOF

######### multiuser mode: create additional users
tizen_crypted_pass=$(perl -e 'print crypt("tizen", "aa")')
uid=5001

for user in alice bob carol; do
	useradd -u $uid -d /home/$user -g users -G audio,video,users,display -m --password "$tizen_crypted_pass" $user
	uid=$(( $uid + 1 ))
done

# create appfw dirs inside homes
for user in alice bob carol app guest; do
	for appdir in desktop manifest dbspace; do
		mkdir -p /home/$user/.applications/$appdir
	done
	find /home/$user/ -type d -exec chsmack -a User {} \;
	chown -R $user:users /home/$user/
done

# adjust app group: main group 'users', extra group 'app'
usermod -g users app
usermod -G app app

##################### common-console-tools.post ####################

# customize bash prompt
cat >/etc/profile.d/bash_prompt_custom.sh <<'EOF'
if [ "$PS1" ]; then

	function proml {
		# set a fancy prompt (overwrite the one in /etc/profile)
		local default="\[\e[0m\]"
		local usercol='\[\e[1;34m\]' # blue
		local hostcol='\[\e[1;32m\]' # green
		local pathcol='\[\e[1;33m\]' # yellow
		local gitcol='\[\e[1;31m\]' # light red
		local termcmd=''
		local _p="$";

		if [ "`id -u`" -eq 0 ]; then
			usercol='\[\e[1;31m\]'
			_p="#"
		fi

		PS1="${usercol}\u${default}@${hostcol}\h${default}:${pathcol}\w${default}${gitcol}${default}${_p} ${termcmd}"
	}

	proml

	function rcd () {
      [ "${1:0:1}" == "/" ] && { cd $1; } || { cd $(pwd -P)/$1; }
   }

	alias ll="ls -lZ"
	alias lr="ls -ltrZ"
	alias la="ls -alZ"

	function get_manifest () {
		rpm -qa --queryformat="%{name} %{Version} %{Release} %{VCS}\n" | sort
	}
fi
EOF


############### common-packaging.post ################

rm -rf /root/.zypp

# was: rpm.post
rm -f /var/lib/rpm/__db*
rpmdb --rebuilddb

# generate repo files for zypper
function genrepo() {
	local reponame=$1
	local url=$2

cat >> /etc/zypp/repos.d/${reponame}.repo << EOF
[${reponame}]
name=${reponame}
enabled=1
autorefresh=0
baseurl=http://download.tizen.org/snapshots/tizen/common/latest/repos/arm-wayland/packages/
type=rpm-md
gpgcheck=0
EOF
}

arch=armv7l


genrepo common-wayland-${arch} http://download.tizen.org/snapshots/tizen/common/common-wayland-${arch}/latest/repos/common/${arch}/packages/


#################### common-wayland.post ##################

# Add 'app' user to the display group
/usr/sbin/groupmod -A app display

# add other users to display group
for user in alice bob carol guest; do
	/usr/sbin/groupmod -A $user display
done

#~ hotfix
# https://review.tizen.org/gerrit/#/c/21775/
/usr/sbin/groupmod -A display video || :

# Enable a logind session for users on seat0 (the default seat for
# graphical sessions)
unitdir=/usr/lib/systemd/system
mkdir -p $unitdir/graphical.target.wants
for user in app alice bob carol guest; do
	uid=$(getent passwd $user|cut -f3 -d':')
	ln -s ../user-session-launch@.service $unitdir/graphical.target.wants/user-session-launch@seat0-$uid.service
done

# user sessions must start after graphical target
patch -b -p1 -d/ <<'EOF'
--- /lib/systemd/system/user-session-launch@.service.orig	2014-03-17 17:50:18.000000000 -0700
+++ /lib/systemd/system/user-session-launch@.service	2014-04-15 06:03:45.555682575 -0700
@@ -1,7 +1,7 @@
 [Unit]
 Description=User Session Launcher
-After=systemd-user-sessions.service systemd-logind.service
-Requires=systemd-logind.service
+After=systemd-user-sessions.service systemd-logind.service display-manager.path
+Requires=systemd-logind.service display-manager.path
 
 [Service]
 ExecStart=/usr/bin/user-session-launch %i
EOF

# clean weston target inside user session (installed by weston)
rm -f /usr/lib/systemd/user/weston.target


############### common-adaptation.post ################

############### common-middleware.post ################


############### common-applications.post ################


############### common-bluetooth.post ################


############### common-multimedia.post ################

if [ -f /usr/bin/weston ]; then

	cat >>/etc/xdg/weston/weston.ini <<EOF

## multimedia applications ##

[launcher]
icon=/usr/share/icons/tizen/32x32/webcam.png
path=/usr/bin/launch_cam.sh

[launcher]
icon=/usr/share/icons/tizen/32x32/video.png
path=/usr/bin/launch_video.sh

EOF

fi

############### common-desktop-applications.post ################

if [ -f /usr/bin/weston ]; then

	cat >>/etc/xdg/weston/weston.ini <<EOF

## desktop applications ##

[launcher]
icon=/usr/share/icons/tizen/32x32/calculator.png
path=/usr/apps/org.tizen.calculator/bin/calculator

EOF

fi


############### common-crosswalk.post ################
if false ; then
# Initialize the native application database
pkg_initdb
ail_initdb

# start wrt widgets preinstall
prepare_widgets.sh

# install widgets at first run
cat <<EOF >/lib/systemd/user/xwalk_widgets_preinstall.service
[Unit]
Description=Installation of pre-installed widgets
After=dbus.service
ConditionPathExists=!%h/.config/xwalk-service/applications.db

[Service]
Type=oneshot
ExecStart=/usr/bin/install_widgets.sh

[Install]
WantedBy=default.target
EOF

# run xwalk and xwalk_widgets_preinstall services in default target
mkdir -p /lib/systemd/user/default.target.wants
ln -sf ../xwalk_widgets_preinstall.service /lib/systemd/user/default.target.wants/
ln -sf ../xwalk.service /lib/systemd/user/default.target.wants/

# add launchers to weston.ini
if [ -f /usr/bin/weston ]; then

	cat >>/etc/xdg/weston/weston.ini <<EOF

## crosswalk applications ##

[launcher]
icon=/usr/share/icons/tizen/32x32/web-browser.png
path=/usr/lib64/xwalk/xwalk http://www.google.com

[launcher]
icon=/usr/share/icons/tizen/32x32/annex.png
path=/usr/bin/xwalk-launcher hnabpnbionlaokfnobomjleblmmiefig

[launcher]
icon=/usr/share/icons/tizen/32x32/bubblewrap.png
path=/usr/bin/xwalk-launcher kmnbdhfbkjkeilhpbooaecgpllbollfn

EOF

fi
fi

#!/bin/sh
############### common-qt5.post ################

list='
qt5-qtdeclarative-examples
qt5-cinematic-experience
'

dst="/usr/share/applications/tizen/launcher.conf"

if [ -w "$dst" ] ; then
    for app in $list ; do
        src="/usr/share/applications/$app.desktop"

        grep "$src" "$dst" \
            || { [ ! -r "$src" ] || echo "$src" >> "$dst" ; }

    done
fi


%end

%post --nochroot
####################### buildname.nochroot #######################
if [ -n "$IMG_NAME" ]; then
	echo "BUILD_ID=$IMG_NAME" >> $INSTALL_ROOT/etc/tizen-release
	echo "BUILD_ID=$IMG_NAME" >> $INSTALL_ROOT/etc/os-release
	echo "$IMG_NAME @BUILD_ID@" >>$INSTALL_ROOT/etc/tizen-snapshot
fi

%end

#{ tizen-sunxi
%post --nochroot
if true ; then

cat<<EOF>${INSTALL_ROOT}/boot/README.txt
Subject: tizen-sunxi
URL: https://wiki.tizen.org/wiki/ARM
Contact: https://wiki.tizen.org/wiki/User:Pcoval
Description: Tizen Common arm port (WIP)

IMG_NAME=${IMG_NAME}
BUILD_ID=@BUILD_ID@
EOF


cat<<EOF> ${INSTALL_ROOT}/boot/boot.cmd
fatload mmc 0 0x46000000 uImage ;
fatload mmc 0 0x49000000 sun7i-a20-olinuxino-micro.dtb
env set fdt_high ffffffff
setenv bootargs console=ttyS0,115200 root=/dev/mmcblk0p2 rootwait console=tty0  disp.screen0_output_type=1 disp.screen0_output_mode=EDID:800x480p33 hdmi.audio=EDID:0 vga=791
bootm 0x46000000 - 0x49000000
EOF

if true ; do
    grep '/dev/mmcblk0p2' \
        "/etc/fstab" \
        && sudo sed -e 's|/dev/mmcblk0|/dev/mmcblk0p|g' \
        -i "${INSTALL_ROOT}/etc/fstab" \
        || echo "ignored"

    sed \
        -e 's|^UUID.* / |/dev/mmcblk0p2 / |g' \
        -e 's|^UUID.* /boot |/dev/mmcblk0p1 /boot |g' \
        -i "${INSTALL_ROOT}/etc/fstab" \
        || echo "ignored"
fi

cat ${INSTALL_ROOT}/etc/fstab

fi
#} tizen-sunxi
%end

