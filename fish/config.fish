if status is-interactive
    # Commands to run in interactive sessions can go here
end

set -x PATH /home/shrish/.emacs.d/bin $PATH
set -x GPG_TTY (tty)

alias mountmac 'sudo apfs-fuse -o allow_other -v 6 /dev/sda2 /mnt/macdata'
alias umountmac 'sudo umount /dev/sda2'
