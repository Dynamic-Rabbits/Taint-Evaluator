export PIN_ROOT=$DATA_TRACKER_DIR/pin

echo "sudo $PIN_ROOT/pin -follow_execv -t $DATA_TRACKER_DIR/datatracker/support/libdft/tools/libdft.so -- $1"

