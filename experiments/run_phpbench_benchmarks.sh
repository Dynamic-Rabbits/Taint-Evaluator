mkdir $TAINT_EVALUATOR_DIR/results

rm -rf $TAINT_EVALUATOR_DIR/results/phpbench
mkdir $TAINT_EVALUATOR_DIR/results/phpbench
cd $TAINT_EVALUATOR_DIR/results/phpbench

run_test(){
  mkdir $1
  cd $1

  for i in `seq 1 $EXPERIMENT_ITERATIONS `;
  do
    /usr/bin/time -o ${1}_time${i}.txt -f %e bash $2 $TAINT_EVALUATOR_DIR/experiments/phpbench/$3
  done

  cd ..
}

run_experiment(){
  mkdir $1
  cd $1

  script="${1}_handler.sh"

  echo The script is $script

  run_test "containerbench" "$TAINT_EVALUATOR_DIR/experiments/phpbench/tests/containerbench.sh" $script
  run_test "hashingbench" "$TAINT_EVALUATOR_DIR/experiments/phpbench/tests/hashingbench.sh" $script
  run_test "kdebench" "$TAINT_EVALUATOR_DIR/experiments/phpbench/tests/kdebench.sh" $script
  run_test "statisticsbench" "$TAINT_EVALUATOR_DIR/experiments/phpbench/tests/statisticsbench.sh" $script

  cd ..
}

#run_experiment "native"
#run_experiment "libdft"
#run_experiment "nullpin"
#run_experiment "nulldynamorio"
#run_experiment "datatracker"
#run_experiment "taintgrind"
#run_experiment "nullgrind"
#run_experiment "triton"
#run_experiment "drmemory"
#run_experiment "datatracker_ewag"
#run_experiment "bap"
#run_experiment "dytan"

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

#run_experiment "taint_bunny_bitvect_raw_sampler"

