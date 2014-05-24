Subject: tizen-sunxi
URL: https://wiki.tizen.org/wiki/ARM
Contact: https://wiki.tizen.org/wiki/User:Pcoval
Description: Tizen Common arm port (WIP)


# USAGE #

log as root:tizen (using SSH or UART)


export XDG_RUNTIME_DIR=/tmp
export backend=fbdev-backend.so
export log=/tmp/weston.log
openvt -s -- weston --log=$log --backend=$backend ;

sleep 2

tz-launcher  /usr/share/applications/tizen/ &

weston-terminal &

screen
ifconfig

ssh -Ct $h screen -rx

export ELM_ENGINE=wayland_shm
elementary_test


zypper se -s | less

zypper install weston-rdp

cd ~ ;  winpr-makecert -rdp ; ls  #  tizen.crt  tizen.key

export XDG_RUNTIME_DIR=/tmp/
killall weston
openvt -s -- weston --log=$log --backend=rdp-backend.so  --rdp-tls-cert=/root/tizen.crt --rdp-tls-key=/root/tizen.key   --width=1024 --height=768

...
