mkdir $TAINT_EVALUATOR_DIR/results

rm -rf $TAINT_EVALUATOR_DIR/results/speccpu
mkdir $TAINT_EVALUATOR_DIR/results/speccpu
cd $TAINT_EVALUATOR_DIR/results/speccpu

echo "The spec path is $SPEC"

run_test(){
  mkdir $1
  cd $1

  dir=`pwd`

  bash $TAINT_EVALUATOR_DIR/experiments/speccpubench/tests/run_spec_cpu.sh $2
  mv  $TAINT_EVALUATOR_DIR/experiments/speccpubench/tests/result $dir/result

  cd $res_dir
  cd ..
}

run_experiment(){
  mkdir $1
  cd $1

  script="${1}_handler.sh"
  echo The script is $script

  run_test "spec_cpu" $TAINT_EVALUATOR_DIR/experiments/speccpubench/$script

  cd ..
}

#run_experiment nullpin3.7
#run_experiment "native"
#run_experiment "dytan"
#run_experiment "datatracker"
#run_experiment "libdft"
#run_experiment "nullpin"
#run_experiment "nulldynamorio"
#run_experiment "taintgrind"
#run_experiment "nullgrind"
#run_experiment "triton"
#run_experiment "drmemory"
#run_experiment "bap"
#run_experiment "datatracker_ewag"
#run_experiment "intr_cnt_cc"
#run_experiment "intr_cnt_in"

#run_experiment "taint_bunny_bitvect_cc_cache"
#run_experiment "taint_bunny_bitvect_raw_cache"
#run_experiment "taint_bunny_bitvect_cc_cache_fp"
#run_experiment "taint_bunny_bitvect_raw_cache_fp"

#run_experiment "taint_bunny_bitwise_cc_cache"
#run_experiment "taint_bunny_bitwise_raw_cache"
#run_experiment "taint_bunny_bitwise_simd_cache"
#run_experiment "taint_bunny_bitwise_cc_cache_fp"
#run_experiment "taint_bunny_bitwise_raw_cache_fp"
#run_experiment "taint_bunny_bitwise_simd_cache_fp"

#run_experiment "taint_bunny_id_cc_cache"
#run_experiment "taint_bunny_id_raw_cache"
#run_experiment "taint_bunny_id_simd_cache"
#run_experiment "taint_bunny_id_cc_cache_fp"
#run_experiment "taint_bunny_id_raw_cache_fp"
#run_experiment "taint_bunny_id_simd_cache_fp"

#run_experiment taint_bunny_bitvect_raw_sampler



