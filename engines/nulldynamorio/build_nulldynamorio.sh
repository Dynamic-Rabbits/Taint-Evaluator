cd $NULLDYNAMORIO_DIR

# Unpack DynamoRIO NULL and build
tar -zxvf dynamorio_null.tar.gz
cd dynamorio_null

mkdir build
cd build
cmake -DDynamoRIO_DIR=$DYNAMORIO_DIR/install/cmake/ -DDYNAMORIO_SOURCE_DIR=$DYNAMORIO_DIR/ ..
make -j 10
