export PIN_ROOT=$DYTAN_DIR/pin

cp $TAINT_EVALUATOR_DIR/experiments/config.xml .

echo "$1 --php-wrapper=\"$PIN_ROOT/pin -injection child -t $DYTAN_DIR/Dytan/obj-ia32/dytan.so --\""

