command=$(bash $1 "gzip -c $UTIL_DIR/my_file > dummy_file.tar.gz")

eval $command

