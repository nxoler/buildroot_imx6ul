#!/bin/sh

destdir=/udisk

my_umount()
{
	if grep -qs "^/dev/$1 " /proc/mounts ; then
		umount "${destdir}";
	fi

	[ -d "${destdir}" ] && rmdir "${destdir}"
}

my_mount()
{
	mkdir -p "${destdir}" || exit 1

	if ! mount -t auto -o sync "/dev/$1" "${destdir}"; then
		# failed to mount, clean up mountpoint
		rmdir "${destdir}"
		exit 1
	fi
}

case "${ACTION}" in
add|"")
	my_umount ${MDEV}
	my_mount ${MDEV}
	;;
remove)
	my_umount ${MDEV}
	;;
esac
