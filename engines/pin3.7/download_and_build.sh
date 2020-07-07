cd $PIN3_DIR

export PIN_ROOT=`pwd`/pin3.7

# Download PIN
wget -nc -P ./  "https://software.intel.com/sites/landingpage/pintool/downloads/pin-3.7-97619-g0d0c92f4f-gcc-linux.tar.gz"
tar -C ./ -xvzf $PIN3_DIR/pin-3.7-97619-g0d0c92f4f-gcc-linux.tar.gz
mv pin-3.7-97619-g0d0c92f4f-gcc-linux pin3.7

# Build PIN
cd PinNull
make
