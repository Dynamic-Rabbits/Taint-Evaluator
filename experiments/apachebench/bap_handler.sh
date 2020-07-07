export PIN_ROOT=BAP_PIN_TRACES_DIR/pin-2.14-71313-gcc.4.4.7-linux

echo "$PIN_ROOT/pin -injection child -t $BAP_PIN_TRACES_DIR/bap-frames/libtrace/bap-pintraces/obj-ia32/gentrace.so -taint-args 1 -- $1"
