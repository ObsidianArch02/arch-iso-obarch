# fix for screen readers
if grep -Fq 'accessibility=' /proc/cmdline &> /dev/null; then
    setopt SINGLE_LINE_ZLE
fi

~/.automated_script.sh

systemctl start NetworkManager

if [ "$(tty)" = "/dev/tty1" ]
then
    exec startx
    exit
fi
