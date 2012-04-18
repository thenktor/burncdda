#!/bin/sh
#--------------------------------------------------------------
# This is the burnCDDA uninstall script.
#
# burnCDDA is a shell script for burning Audio-CDs with cdrdao
# and cdrecord.
#
# (C) 2001 by Thorsten Muehlfelder <~thenktor~at~gmail~dot~com~>
# burnCDDA comes with ABSOLUTELY NO WARRANTY.
# This is free software, and you are welcome to redistribute it
# under terms of the GNU General Public License (version 2)
# as published by the Free Software Foundation.
#--------------------------------------------------------------

echo "Removing burnCDDA files..."
rm -f /usr/bin/burncdda
rm -rf /usr/share/burncdda
rm -f /usr/man/man1/burncdda.1
rm -f /etc/burncdda.conf
rm -f /etc/burncdda.conf.old
rm -f /etc/burncdda.conf.new
echo "Done"
