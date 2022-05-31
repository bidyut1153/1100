#!/bin/bash
set -eu

show_help() {

	local cache_size
	cache_size=$(du -sh "$cache_dir" 2>/dev/null | cut -f1)

	echo 'Usage: pkg command [arguments]'
	echo
	echo '  clean                - Remove all packages from .deb package cache.'
	[ -n "$cache_size" ] && echo "                         Using $cache_size now."
	echo
	echo '  install <packages>   - Install specified packages.'
	echo
	echo '  list-installed       - List installed packages.'
	echo
	echo '  uninstall <packages> - Uninstall specified packages. Configuration files'
	echo '                         will be left intact.'
	exit 1
}

if [ $# = 0 ]; then
	show_help
fi

apta="apt install"
aptb="clean"
aptc="apt list -i"
aptd="apt remove"

CMD="$1"
shift 1

case "$CMD" in
	add|i*) $apta "$@";;
	cl*) $aptb;;
	list*) $aptc "$@";;
	un*|rem*|rm|del*) $aptd "$@";;
	*) echo "Unknown command: '$CMD' (run 'pkg help' for usage information)"; exit 1;;
esac
