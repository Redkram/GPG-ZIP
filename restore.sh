#!/bin/bash
# Decrypted Desktop link to Secret.sh
echo '[Desktop Entry]' >> /root/Desktop/Unlock.desktop
echo 'Name[en_US]=Unlock' >> /root/Desktop/Unlock.desktop
echo 'Exec=/root/Files_TMP/Secret.sh' >> /root/Desktop/Unlock.desktop
echo 'Terminal=true' >> /root/Desktop/Unlock.desktop
echo 'Icon=/root/Pictures/anon.png' >> /root/Desktop/Unlock.desktop
echo 'Type=Application' >> /root/Desktop/Unlock.desktop
echo 'Categories=Development' >> /root/Desktop/Unlock.desktop
chmod +x /root/Desktop/Unlock.desktop
# New folder_tmp
mkdir /root/Files_TMP
# New Decrypted File 
echo 'gpg-zip -d /root/Files.gpg' >> /root/Files_TMP/Secret.sh
echo 'ln -s /root/Files/Lock.desktop /root/Desktop/Lock.desktop' >> /root/Files_TMP/Secret.sh
echo 'rm /root/Files_TMP/ -rf' >> /root/Files_TMP/Secret.sh
echo 'rm /root/Desktop/Unlock.desktop' >> /root/Files_TMP/Secret.sh
# Restore sqlmap outputs XD
echo 'cp -rl /root/Files/SCANS/output /root/.sqlmap/' >> /root/Files_TMP/Secret.sh
echo 'rm -rf /root/Files/SCANS/output' >> /root/Files_TMP/Secret.sh
# ...
echo 'free && sync && echo 3 > /proc/sys/vm/drop_caches && free' >> /root/Files_TMP/Secret.sh
chmod +x /root/Files_TMP/Secret.sh
#Remove Encrypt Link
rm /root/Desktop/Lock.desktop
# Security +++
cat /dev/null > ~/.bash_history && history -c && dmesg -c
cat /dev/null > ~/.mysql_history
cat /dev/null > ~/.sqlmap_history
cat /dev/null > ~/.nano_history
cat /dev/null > /var/log/wtmp
cat /dev/null > /var/run/utmp
cat /dev/null > /var/log/lastlog
# sqlmap outputs encrypt
cp -rl /root/.sqlmap/output /root/Files/SCANS/
rm -rf /root/.sqlmap/output
mkdir /root/.sqlmap/output
#Remove old gpg file
if [ -d /root/Files ]; then
 if [ -f /root/Files.gpg ]; then
  rm /root/Files.gpg -rf
  echo "Delete GPG"
 fi
 #Encrypt Files folder
 gpg-zip -c -o Files.gpg Files
 if [ -f /root/Files.gpg ]; then
  rm -rf /root/Files
  echo "Created GPG"
  echo "Deleted /root/Files"
 fi
else
 if [ -f /root/Files.gpg ]; then
  echo "File exist"
 else
  echo "lol!!! bye bye File... sry"
 fi
fi
free && sync && echo 3 > /proc/sys/vm/drop_caches && free
ACAB(){
 echo -n "Power Off?"
 while read -r -n 1 -s answer; do
  if [[ $answer = [SsYyNn] ]]; then
   [[ $answer = [Ss] ]] && retval=0
   [[ $answer = [Yy] ]] && retval=0
   [[ $answer = [Nn] ]] && retval=1
  break
 fi
 done
 return $retval
}
 sudo service privoxy restart
 sudo service tor restart
 sudo service postgresql restart
if ACAB; then
    sudo poweroff
fi