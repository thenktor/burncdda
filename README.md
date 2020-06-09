# burnCDDA
burnCDDA is a console frontend to cdrdao, cdrecord, MPlayer, mpg321, oggdec, mppdec, flac, normalize, and mp3_check. It can be used to create Audio-CDs from an M3U playlist or from files inside a directory. It supports MP3, OGG Vorbis, Musepack, FLAC, WMA, M4A and WAV files, and it might be the easiest way to copy an audio CD. 

## Installation
* Install cdrkit, cdrdao and MPlayer from your distributions repository
* Run install.sh as root

## Permissions
If you have permission errors when attempting to burn a cdrom or dvd image, such as the following:
```
/usr/bin/cdrecord: Operation not permitted. Cannot send SCSI cmd via ioctl
```
  
then cdrecord almost certainly needs root privileges to work correctly. One potential solution is to make the cdrecord and cdrdao binaries suid root, but this has possible security implications. The safest way to do that is to make those binaries suid root, owned by a specific group, and executable by only root and members of that group. For most people, the example below will be sufficient (but adjust as desired depending on your specific needs):
```
chown root:cdrom /usr/bin/cdrecord /usr/bin/cdrdao
chmod 4750 /usr/bin/cdrecord /usr/bin/cdrdao
```
If you don't want all members of the 'cdrom' group to be able to execute the two suid binaries, then create a special group (such as 'burning' which is recommended by k3b), use it instead of 'cdrom' in the line above, and add to it only the users you wish to have access to cdrecord and cdrdao.
