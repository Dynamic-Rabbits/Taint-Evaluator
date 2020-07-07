cd $DYTAN_DIR

export PIN_ROOT=$(pwd)/pin
wget -nc http://software.intel.com/sites/landingpage/pintool/downloads/pin-2.14-71313-gcc.4.4.7-linux.tar.gz
tar -zxvf pin-2.14-71313-gcc.4.4.7-linux.tar.gz
ln -s $(pwd)/pin-2.14-71313-gcc.4.4.7-linux $(pwd)/pin

tar xvzf dytan.tar.gz

cd Dytan
make
