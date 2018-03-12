find /var/log/dokku/ -type d | while read directory; do
  for folder in $directory; do
    find  $directory/supervisor.log -type f | while read file; do
      touch "${file}_temp"
      awk -v x=$directory  '$0=x "  "$0'  $directory/supervisor.log  > "${file}_temp"
    done
  done
done
