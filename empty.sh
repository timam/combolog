find /var/log/dokku/ -type d | while read directory; do
  for folder in $directory; do
    find  $directory/supervisor.log -type f | while read file; do
    > $directory/supervisor.log
    done
  done
done
