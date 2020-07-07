command=$(bash $1 "file $UTIL_DIR/my_file")

eval $command

rm -rf my_copy
