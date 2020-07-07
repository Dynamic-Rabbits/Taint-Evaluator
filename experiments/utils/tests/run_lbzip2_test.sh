command=$(bash $1 "lbzip2 -c $UTIL_DIR/my_file > dummy_file.bz2")

eval $command
