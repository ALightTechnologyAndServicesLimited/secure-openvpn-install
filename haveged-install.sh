apt-get install haveged
cp ./haveged.conf /etc/default/haveged # Setup DAEMON_ARGS="-w 1024"
update-rc.d haveged defaults
