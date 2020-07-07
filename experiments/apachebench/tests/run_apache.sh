command=$(bash $1 "$APACHEBENCH_DIR/httpd/install/bin/httpd")

sudo kill -9 $(sudo lsof -t -i:80)

# Run httpd.
eval $command

# After httpd, run ab.
sudo $APACHEBENCH_DIR/httpd/install/bin/ab -t $APACHE_TIMEOUT -n $2 -c 10 -s 3600 localhost/
sudo kill -9 $(sudo lsof -t -i:80)
