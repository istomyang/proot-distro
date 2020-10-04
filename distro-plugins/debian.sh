##
## Plug-in for installing Ubuntu Focal.
##

DISTRO_NAME="Debian"

# Returns download URL.
get_download_url() {
	case "$(uname -m)" in
		aarch64)
			echo "https://raw.githubusercontent.com/EXALAB/Anlinux-Resources/master/Rootfs/Debian/arm64/debian-rootfs-arm64.tar.xz"
			;;
		armv7l|armv8l)
			echo "https://raw.githubusercontent.com/EXALAB/Anlinux-Resources/master/Rootfs/Debian/armhf/debian-rootfs-armhf.tar.xz"
			;;
		i686)
			# Ubuntu Focal does not provide tarballs for x86 32bit.
			;;
		x86_64)
			echo "https://raw.githubusercontent.com/EXALAB/Anlinux-Resources/master/Rootfs/Debian/amd64/debian-rootfs-amd64.tar.xz"
			;;
	esac
}

# Define here additional steps which should be executed
# for configuration.
distro_setup() {
	# Hint: $PWD is the distribution rootfs directory.
	#echo "hello world" > ./etc/motd

	# Run command within proot'ed environment with
	# run_proot_cmd function.
	# Uncomment this to do system upgrade during installation.
	#run_proot_cmd apt update
	#run_proot_cmd apt upgrade -yq
	:
}
