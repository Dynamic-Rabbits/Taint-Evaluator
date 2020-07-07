cd $UTIL_DIR

# Generate data for compression.
head -c 10000000 </dev/urandom > my_file

# Download and build libjpeg.
cd $UTIL_DIR
wget -nc -P ./ "https://www.ijg.org/files/jpegsrc.v9c.tar.gz"
tar -C ./ -xvzf jpegsrc.v9c.tar.gz
cd jpeg-9c
./configure --prefix=$UTIL_DIR/jpeg-9c/install
make
make install

# Download and build libjpeg-turbo.
cd $UTIL_DIR
git clone https://github.com/libjpeg-turbo/libjpeg-turbo.git
git checkout 166e34213e4f4e2363ce058a7bcc6
cd libjpeg-turbo
mkdir build
cd build
cmake -G"Unix Makefiles" -DCMAKE_INSTALL_PREFIX=`pwd`/../install ../
make
make install

