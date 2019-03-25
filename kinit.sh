while true; do
	kinit `cat /keytab/username` -kt /keytab/password
	sleep 24h
done
