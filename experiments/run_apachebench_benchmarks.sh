mkdir $TAINT_EVALUATOR_DIR/results

rm -rf $TAINT_EVALUATOR_DIR/results/apachebench
mkdir $TAINT_EVALUATOR_DIR/results/apachebench
cd $TAINT_EVALUATOR_DIR/results/apachebench

run_test(){
  mkdir $1
  cd $1

  echo $2

  for i in `seq 1 $EXPERIMENT_ITERATIONS `;
  do
    bash $2 $3 > "${1}_time${i}.txt"
  done

  cd ..
}

run_experiment(){
  mkdir $1
  cd $1

  script="${1}_handler.sh"
  echo The script is $script
  script_path=$TAINT_EVALUATOR_DIR/experiments/apachebench/$script

  run_test "req_10000" "$TAINT_EVALUATOR_DIR/experiments/apachebench/tests/run_10000.sh" $script_path
  run_test "req_100000" "$TAINT_EVALUATOR_DIR/experiments/apachebench/tests/run_100000.sh" $script_path

  cd ..
}

#run_experiment "native"
#run_experiment "libdft"
#run_experiment "nullpin"
#run_experiment "nulldynamorio"
#run_experiment "datatracker"
#run_experiment "nullgrind"
#run_experiment "taintgrind"
#run_experiment "triton"
#run_experiment "datatracker_ewag"
#run_experiment "bap"
#run_experiment "dytan"
#run_experiment "drmemory"

#run_experiment "taint_bunny_id_cc_cache"
#run_experiment "taint_bunny_id_raw_cache"
#run_experiment "taint_bunny_id_simd_cache"
#run_experiment "taint_bunny_id_cc_cache_fp"
#run_experiment "taint_bunny_id_raw_cache_fp"
#run_experiment "taint_bunny_id_simd_cache_fp"

#run_experiment "taint_bunny_bitvect_cc_cache"
#run_experiment "taint_bunny_bitvect_raw_cache"
#run_experiment "taint_bunny_bitvect_cc_cache_fp"
#run_experiment "taint_bunny_bitvect_raw_cache_fp"

#run_experiment taint_bunny_bitvect_raw_sampler

