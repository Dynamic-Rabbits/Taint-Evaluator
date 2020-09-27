command=$(bash $1 "pigz --best -k $UTIL_DIR/my_file")

eval $command
