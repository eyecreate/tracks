Tracks
======

Tracks is a web-based application to help you implement David Allens Getting Things Done™ methodology. It was built using Ruby on Rails.

This is the easy way getting up and running with Tracks, which is one of the greatest software implementations of the GTD™ methodology.

This builds main parts are:

 - Ubuntu 14.04 
 - Tracks 2.2.3
 - Apache 2 (Passenger)
 - Sqlite3
 - Dockerize (Utility to simplify running applications in docker containers)

It utilizes mostly native Ubuntu 14.04 packages, thus rebuilding it will provide the latest updates.

For production use it is highly recommended to update the `site.yml.template` within the build repo, rename it to `site.yml` then rebuild the container.

Setting these docker environment variables will allow you to substitute at runtime without using the template:

TRACKS_TOKEN
TRACKS_SALT
TRACKS_DB

Example on how to run the Tracks container:

     docker run -d --name=tracks -p 80:80 staannoe/tracks:stable

There are two versions available:
 
 - devel 	= v2.3RC1
 - stable 	= v2.2.3

References:
http://www.getontracks.org/
