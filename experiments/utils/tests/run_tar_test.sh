command=$(bash $1 "tar -cf archive.tar.gz $UTIL_DIR/my_file")

eval $command
