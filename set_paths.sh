: ${SPEC?"Warning need to set SPEC to refer to SPEC CPU 2017 Installation directory! Taint Evaluator does not have rights to provide SPEC CPU 2017."}

export TAINT_EVALUATOR_DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"

# Engines
export PIN3_DIR=$TAINT_EVALUATOR_DIR/engines/pin3.7
export DRMEMORY_DIR=$TAINT_EVALUATOR_DIR/engines/drmemory
export BUNNIES_DIR=$TAINT_EVALUATOR_DIR/engines/dynamic_bunnies
export LIBDFT_DIR=$TAINT_EVALUATOR_DIR/engines/libdft
export PIN_HOME=$TAINT_EVALUATOR_DIR/engines/libdft/pin
export DATA_TRACKER_DIR=$TAINT_EVALUATOR_DIR/engines/datatracker
export PIN_ROOT=$DATA_TRACKER_DIR/pin
export TRITON_DIR=$TAINT_EVALUATOR_DIR/engines/triton
export NULLDYNAMORIO_DIR=$TAINT_EVALUATOR_DIR/engines/nulldynamorio
export TAINTGRIND_DIR=$TAINT_EVALUATOR_DIR/engines/taintgrind
export BAP_PIN_TRACES_DIR=$TAINT_EVALUATOR_DIR/engines/bap-pintraces
export DATA_TRACKER_EWAH_DIR=$TAINT_EVALUATOR_DIR/engines/datatracker-ewah
export DYTAN_DIR=$TAINT_EVALUATOR_DIR/engines/dytan

# Performance Benchmarks
export UTIL_DIR=$TAINT_EVALUATOR_DIR/benchmarks/util
export PHPBENCH_DIR=$TAINT_EVALUATOR_DIR/benchmarks/phpbench
export APACHEBENCH_DIR=$TAINT_EVALUATOR_DIR/benchmarks/apachebench

# Other Params
export APACHE_TIMEOUT=10800
export EXPERIMENT_ITERATIONS=3

echo "Success - paths set"
