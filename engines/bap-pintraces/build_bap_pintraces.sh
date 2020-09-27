cd $BAP_PIN_TRACES_DIR

export PIN_ROOT=$(pwd)/pin
wget -nc http://software.intel.com/sites/landingpage/pintool/downloads/pin-2.14-71313-gcc.4.4.7-linux.tar.gz
tar -zxvf pin-2.14-71313-gcc.4.4.7-linux.tar.gz
ln -s $(pwd)/pin-2.14-71313-gcc.4.4.7-linux $(pwd)/pin

# Download and build bap-pintraces
git clone https://github.com/BinaryAnalysisPlatform/bap-frames.git

cd bap-frames/libtrace
git checkout c9f957492c13106171b04914dab4badc9ff5bcad

./autogen.sh
./configure
make

tar -zxvf ../../bap-pintraces_no_log.tar.gz
cd bap-pintraces
make

