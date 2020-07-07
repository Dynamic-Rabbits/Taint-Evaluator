# sudo apt-get install libapr1-dev libaprutil1-dev

cd $APACHEBENCH_DIR

wget -nc -P ./ "http://archive.apache.org/dist/httpd/httpd-2.4.33.tar.gz"
tar -C ./ -xvzf httpd-2.4.33.tar.gz
mv  httpd-2.4.33 httpd
rm -rf httpd-2.4.33.tar.gz
rm -rf httpd-2.4.33

cd httpd
./configure --prefix=`pwd`/install
make
make install
