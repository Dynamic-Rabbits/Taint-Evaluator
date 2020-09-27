cd $TRITON_DIR

# Download PIN
wget -nc -P ./  "http://software.intel.com/sites/landingpage/pintool/downloads/pin-2.14-71313-gcc.4.4.7-linux.tar.gz"
tar -C ./ -xvzf $TRITON_DIR/pin-2.14-71313-gcc.4.4.7-linux.tar.gz

# Download Triton
cd pin-2.14-71313-gcc.4.4.7-linux/source/tools/
git clone https://github.com/JonathanSalwan/Triton.git

# Build Triton
cd Triton
git checkout db520a9da012b28f
mkdir build
cd build
cmake -DPINTOOL=on ..
make
