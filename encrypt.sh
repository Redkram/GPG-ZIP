#!/bin/bash
# Decrypted Desktop link to encrypt.sh

user='/'$USER
Path=$(pwd)
decryptedFolder='EncryptFolder'
decryptedFile='EncryptFolder.gpg'
decryptPath=$Path'/'$decryptedFolder
decryptPathFile=$Path'/'$decryptedFile

encryptedFolder='DecryptFolder'
encryptedFile='decrypt.sh'
encrypPathFile=$Path'/'$encryptedFile

decrypt() {
    icon=$user'/Desktop/Decrypt.desktop'
    echo '[Desktop Entry]'                  >> $icon
    echo 'Name[en_US]=Decrypt'              >> $icon
    echo 'Exec='$encrypPathFile             >> $icon
    echo 'Terminal=true'                    >> $icon
    echo 'Icon='$user'/Pictures/anon.png'   >> $icon
    echo 'Type=Application'                 >> $icon
    echo 'Categories=Development'           >> $icon
    chmod +x $icon
    echo $icon
    Decrypt='true'
}

fileDecrypt() {
# New Decrypted File 
    echo 'gpgtar -d '$decryptPathFile                                       >> $encrypPathFile
    echo 'mv '$decryptedFolder'_1_/'$decryptedFolder '../'$decryptedFolder  >> $encrypPathFile
    echo 'rm -rf '$decryptedFolder'_1_/'                                    >> $encrypPathFile
    echo 'ln -s '$decryptPath'/Lock.desktop '$user'/Desktop/Lock.desktop'   >> $encrypPathFile
    echo 'rm '$user'/Desktop/Lock.desktop'                                  >> $encrypPathFile
    FileDecrypt='true'
}
sqlmap() {
    #Restore sqlmap outputs XD
    echo 'cp -rl '$decryptPath'/SCANS/output '$user'/.sqlmap/'              >> $encrypPathFile
    echo 'rm -rf '$decryptPath'/SCANS/output'                               >> $encrypPathFile
    Sqlmap='true'
}
cache() {
    echo 'free && sync && echo 3 > /proc/sys/vm/drop_caches && free'        >> $encrypPathFile
    echo 'rm -rf '$encrypPathFile                                           >> $encrypPathFile
    Cache='true'
}
secretPermisions() {
    chmod +x $encrypPathFile
    SecretPermisions='true'
}
removeEncryptIcon() {
    #Remove Encrypt Link
    rm $user/Desktop/Lock.desktop
    RemoveEncryptIcon='true'
}
destroyLogs () {
    # Security +++
    cat /dev/null > ~/.bash_history
    dmesg -c
    cat /dev/null > ~/.mysql_history
    cat /dev/null > ~/.sqlmap_history
    cat /dev/null > ~/.nano_history
    cat /dev/null > /var/log/wtmp
    cat /dev/null > /var/run/utmp
    cat /dev/null > /var/log/lastlog
}
backupSQLMap() {
    # sqlmap outputs encrypt
    cp -rl $user/.sqlmap/output $decryptPath/SCANS/
    rm -rf $user/.sqlmap/output
    mkdir $user/.sqlmap/output
}
encryptFolder() {
    if [ -d $decryptPath ]; then
        if [ -f $decryptPathFile ]; then
            rm $decryptPathFile -rf
            echo "Delete GPG"
        fi
        #Encrypt Files folder
        
        gpgtar -e -o $decryptedFile -c $decryptedFolder
        if [ -f $decryptPathFile ]; then
            rm -rf $decryptPath
            echo "Created GPG"
            echo "Deleted "$decryptPath
        fi
    else
        if [ -f $decryptPathFile ]; then
            echo "File exist"
        else
            echo "lol!!! bye bye File... sry"
        fi
    fi
}
ACAB(){
    echo -n "Power Off?"
    while read -r -n 1 -s answer; do
        if [[ $answer=[SsYyNn] ]]; then
            [[ $answer=[Ss] ]] && retval=0
            [[ $answer=[Yy] ]] && retval=0
            [[ $answer=[Nn] ]] && retval=1
            break
        fi
    done
    return $retval
}
#free && sync && echo 3 > /proc/sys/vm/drop_caches && free
#sudo service privoxy restart
#sudo service tor restart
#sudo service postgresql restart
#if ACAB; then
#    #sudo poweroff
#fi
#ACAB
prepareDecrypt() {
    fileDecrypt
    sqlmap
    cache
    secretPermisions
    prepareEncrypt
}
prepareEncrypt() {
    destroyLogs
    backupSQLMap
    encryptFolder
    #ACAB
}
prepareDecrypt
