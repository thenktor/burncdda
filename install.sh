#!/bin/sh
#--------------------------------------------------------------
# This is the burnCDDA install script.
#
# burnCDDA is a shell script for burning Audio-CDs with cdrdao
# and cdrecord.
#
# (C) 2001 by Thorsten Muehlfelder <thenktor@gmx.de>
# burnCDDA comes with ABSOLUTELY NO WARRANTY.
# This is free software, and you are welcome to redistribute it
# under terms of the GNU General Public License (version 2)
# as published by the Free Software Foundation.
#--------------------------------------------------------------

echo "burnCDDA (C) 2001, by Thorsten Muehlfelder"
echo "burnCDDA comes with ABSOLUTELY NO WARRANTY;"
echo "This is free software, and you are welcome"
echo "to redistribute it under certain conditions."
echo "Take a look at LICENSE for more information!"
echo ""
case $1 in

	-bo)
	echo "Only installing the burncdda script!"
	if [ ! -d "${DESTDIR}/usr/bin/" ]; then
		mkdir -p -m 755 "${DESTDIR}/usr/bin/"
	fi
	install -m 755 burncdda "${DESTDIR}/usr/bin/"
	exit 0
	;;

	*)
	;;
	
esac

echo "Installing files..."
if [ ! -d "${DESTDIR}/usr/bin/" ]; then
	mkdir -p -m 755 "${DESTDIR}/usr/bin/"
fi
install -m 755 burncdda "${DESTDIR}/usr/bin/"

if [ ! -d "${DESTDIR}/usr/share/burncdda" ]; then
	mkdir -p -m 755 "${DESTDIR}/usr/share/burncdda"
fi
install -m 644 *.func "${DESTDIR}/usr/share/burncdda/"
install -m 644 burncdda.conf "${DESTDIR}/usr/share/burncdda/burncdda.conf.default"

if [ ! -d "${DESTDIR}/usr/man/man1/" ]; then
	mkdir -p -m 755 "${DESTDIR}/usr/man/man1/"
fi
install -m 644 burncdda.1 "${DESTDIR}/usr/man/man1"

if [ ! -d "${DESTDIR}/etc/" ]; then
	mkdir -p -m 755 "${DESTDIR}/etc/"
fi
if [ -e "${DESTDIR}/etc/burncdda.conf" ]; then
	install -m 644 burncdda.conf "${DESTDIR}/etc/burncdda.conf.new"
else
	install -m 644 burncdda.conf "${DESTDIR}/etc/"
fi
echo ""
echo "Looking for dialog (required):"
which dialog
echo ""
echo "It is recommended that you have these tools:"
echo "cdrecord cdrdao mplayer"
echo ""
echo "If you don't have mplayer you should have:"
echo "mpg123 oggdec mppdec flac"
echo ""
echo "Optional tools:"
echo "normalize sox mp3_check ogginfo"
echo ""
echo ""
echo "Please edit /etc/burncdda.conf now!"
echo ""
