cd $DRMEMORY_DIR

git clone https://github.com/DynamoRIO/drmemory.git
cd drmemory
git checkout 5b988e31

make/git/devsetup.sh

mkdir build
mkdir install
cd build

export CXXFLAGS=-m32
export CFLAGS=-m32
cmake -DCMAKE_INSTALL_PREFIX=`pwd`/../install -DCMAKE_BUILD_TYPE=RelWithDebInfo  ..
make
make install

