export PIN_ROOT=$DYTAN_DIR/pin

cp $TAINT_EVALUATOR_DIR/experiments/config.xml .

echo "$PIN_ROOT/pin -follow_execv -t $DYTAN_DIR/Dytan/obj-ia32/dytan.so -- $1"

