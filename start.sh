#!/bin/sh
#if vars are set, replace them
if [ ${TRACKS_DB+_} ]; then
  sed -i 's/tracks.sqlite3.db/'"$TRACKS_DB"'/g' /var/www/tracks/config/database.yml
fi
if [ ${TRACKS_SALT+_} ]; then
  sed -i 's/dsdwe543r3q_!!2dsdgfshdfh*gsdfasdfrasdfckjadfapfAaskdAdeUJNH/'"$TRACKS_SALT"'/g' /var/www/tracks/config/site.yml
fi
if [ ${TRACKS_TOKEN+_} ]; then
  sed -i 's/dwfIJdsdjwej54wrtgws0azfhbjij>ok<okfsdRGFDsdffgshf/'"$TRACKS_TOKEN"'/g' /var/www/tracks/config/site.yml
fi

dockerize -stdout=/var/log/apache2/access.log -stdout=/var/www/tracks/log/production.log -stderr=/var/log/apache2/error.log /usr/sbin/apache2ctl -D FOREGROUND
