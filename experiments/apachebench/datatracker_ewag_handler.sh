export PIN_ROOT=$DATA_TRACKER_EWAH_DIR/vuzzer/pin

echo "$PIN_ROOT/pin -follow_execv -t $DATA_TRACKER_EWAH_DIR/vuzzer/obj-ia32/dtracker.so -- $1"

