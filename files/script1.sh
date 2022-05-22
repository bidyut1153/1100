#!/bin/bash

echo "The script starts now. "
echo "Hi, $USER "
echo
echo "Currenly logged on: "
if [ -x /system/bin ];then
	echo "w is not avaliable in termux"
else
	w
fi
echo "I am setting two variables now:"
echo

function two_var () {
	local COLOR="black"
	local TEMP="${TMPDIR}"
	echo "This color is $COLOR and tmp dir is $TEMP"
}

two_var

export DPKGVERSION=`dpkg --version | grep dpkg | tail -c 18 | head -c 6`
echo
echo "Download dpkg version [ $DPKGVERSION ]"
curl --fail -o dpkg.deb http://ftp.debian.org/debian/pool/main/d/dpkg/dpkg_$DPKGVERSION.tar.xz
echo
if [ -f dpkg.tar.xz ];then
	echo "Completed download http://ftp.debian.org/debian/pool/main/d/dpkg/dpkg_$DPKGVERSION.tar.xz"
else
	echo "Fail to download http://ftp.debian.org/debian/pool/main/d/dpkg/dpkg_$DPKGVERSION.tar.xz"
	exit 1
fi

echo "Ends now."
exit 0
