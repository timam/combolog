find /var/log/dokku/ -type d | while read directory; do
  for folder in $directory; do
    find  $directory/supervisor.log -type f | while read file; do
      touch "${file}_temp"
      awk -v x=$directory  '$0=x "  "$0'  $directory/supervisor.log  > "${file}_temp"
    done
  done
done

find /var/log/dokku/ -type d | while read directory; do
  for folder in $directory; do
    find  $directory/supervisor.log_temp -type f | while read file; do
      cat $directory/supervisor.log_temp >> /var/log/dokku/combine.log
    done
  done
done

find /var/log/dokku/ -type d | while read directory; do
  for folder in $directory; do
    find  $directory/supervisor.log -type f | while read file; do
    > $directory/supervisor.log
    done
  done
done