cd $TAINTGRIND_DIR

# Download valgrind
wget -nc -P ./  "ftp://sourceware.org/pub/valgrind/valgrind-3.13.0.tar.bz2"
tar jxvf valgrind-3.13.0.tar.bz2

# Install valgrind
cd valgrind-3.13.0
./autogen.sh
./configure --prefix=`pwd`/inst
make -j 10
make install

# Download taintgrind
git clone http://github.com/wmkhoo/taintgrind.git

# Build taintgrind
cd taintgrind
git checkout 96ed4b23108fc
../autogen.sh
./configure --prefix=`pwd`/../inst
make -j 10
make install

