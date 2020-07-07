command=$(bash $1 "bzip2 -c $UTIL_DIR/my_file > dummy_file.bz2")

eval $command
