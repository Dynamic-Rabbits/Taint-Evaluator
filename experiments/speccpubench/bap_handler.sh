export PIN_ROOT=$BAP_PIN_TRACES_DIR/pin

echo "$PIN_ROOT/pin -injection child -t $BAP_PIN_TRACES_DIR/bap-frames/libtrace/bap-pintraces/obj-ia32/gentrace.so -activate_on_start 1 -- $1"
