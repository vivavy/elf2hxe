if [ "$EUID" -ne 0 ]; then
    echo "This script must be run as root"
    exit 1
fi

if [ ! -f /usr/bin/elf2hxe ]; then
    echo "Installing elf2hxe"
    cp elf2hxe /usr/bin/elf2hxe
    cp hxeinfo /usr/bin/hxeinfo
    chmod +x /usr/bin/elf2hxe
    chmod +x /usr/bin/hxeinfo
    echo "Done"
fi
