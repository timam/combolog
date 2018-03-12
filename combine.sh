find /var/log/dokku/ -type d | while read directory; do
  for folder in $directory; do
    find  $directory/supervisor.log_temp -type f | while read file; do
      cat $directory/supervisor.log_temp >> /var/log/dokku/combine.log
    done
  done
done
