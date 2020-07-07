cd $LIBDFT_DIR

wget -nc -P ./  "http://www.cs.columbia.edu/~vpk/research/libdft/libdft-3.1415alpha.tar.gz"
tar -C ./ -xvzf $LIBDFT_DIR/libdft-3.1415alpha.tar.gz
mv libdft-3.1415alpha libdft

git clone "https://github.com/johnfxgalea/pintools.git" pin

cd libdft/libdft_linux-i386/src
make -f Makefile.old
cd ../tools

bash -e "#include <unistd.h>\n" | cat - libdft-dta.c > temp && mv temp libdft-dta.c
make -f Makefile.old
