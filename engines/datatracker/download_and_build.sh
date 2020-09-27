cd $DATA_TRACKER_DIR

git clone "https://github.com/johnfxgalea/pintools.git" pin
export PIN_ROOT=`pwd`/pin

mkdir datatracker
cd datatracker
git init

git remote add -f origin https://github.com/m000/dtracker.git
git config core.sparseCheckout true
echo "support/" >> .git/info/sparse-checkout

git pull origin master

cd support
tar xvzf ../../libdft.tar.gz

make -f makefile.libdft

cd libdft/tools
make

