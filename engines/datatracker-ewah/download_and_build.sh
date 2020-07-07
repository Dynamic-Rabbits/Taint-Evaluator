cd $DATA_TRACKER_EWAH_DIR

tar xvzf vuzzer_no_log.tar.gz

cd vuzzer

export PIN_ROOT=$(pwd)/pin
wget -nc http://software.intel.com/sites/landingpage/pintool/downloads/pin-2.14-71313-gcc.4.4.7-linux.tar.gz
tar -zxvf pin-2.14-71313-gcc.4.4.7-linux.tar.gz
ln -s $(pwd)/pin-2.14-71313-gcc.4.4.7-linux $(pwd)/pin

cd support/libdft/src
make clean
cd ../../../

export HOST_ARCH=ia32
make support-libdft
make
make -f mymakefile


