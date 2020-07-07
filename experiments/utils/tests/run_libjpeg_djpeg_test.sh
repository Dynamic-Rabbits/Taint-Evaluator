command=$(bash $1 "$UTIL_DIR/jpeg-9c/install/bin/djpeg -outfile $UTIL_DIR/compressed_rabbit $UTIL_DIR/white_rabbit.jpg")

eval $command
