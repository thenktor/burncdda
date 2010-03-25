#!/bin/sh
chown -R root:root $1
tar czf $1.tar.gz $1
chown -R thorsten:users $1
echo "Done"
