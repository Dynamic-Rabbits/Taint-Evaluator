mkdir $TAINT_EVALUATOR_DIR/results

rm -rf $TAINT_EVALUATOR_DIR/results/util
mkdir $TAINT_EVALUATOR_DIR/results/util
cd $TAINT_EVALUATOR_DIR/results/util

run_test(){
  mkdir $1
  cd $1

  # Clean
  bash $4

  for i in `seq 1 $EXPERIMENT_ITERATIONS `;
  do
      /usr/bin/time -o ${1}_time${i}.txt -f %e $2 $3
      bash $4
  done

  cd ..
}

run_experiment(){
  mkdir $1
  cd $1

  script="${1}_handler.sh"
  echo The script is $script
  script_path="$TAINT_EVALUATOR_DIR/experiments/utils/$script"

  run_test "libjpeg_djpeg" "bash $TAINT_EVALUATOR_DIR/experiments/utils/tests/run_libjpeg_djpeg_test.sh" $script_path "$TAINT_EVALUATOR_DIR/experiments/utils/tests/clean_djpeg_test.sh"
  run_test "libjpeg-turbo_djpeg" "bash $TAINT_EVALUATOR_DIR/experiments/utils/tests/run_libjpeg-turbo_djpeg_test.sh" $script_path "$TAINT_EVALUATOR_DIR/experiments/utils/tests/clean_djpeg_test.sh"
  run_test "gif2png" "bash $TAINT_EVALUATOR_DIR/experiments/utils/tests/run_gif2png_test.sh" $script_path "$TAINT_EVALUATOR_DIR/experiments/utils/tests/clean_gif2png_test.sh"
  run_test "bzip" "bash $TAINT_EVALUATOR_DIR/experiments/utils/tests/run_bzip_test.sh" $script_path "$TAINT_EVALUATOR_DIR/experiments/utils/tests/clean_bzip_test.sh"
  run_test "gzip" "bash $TAINT_EVALUATOR_DIR/experiments/utils/tests/run_gzip_test.sh" $script_path "$TAINT_EVALUATOR_DIR/experiments/utils/tests/clean_gzip_test.sh"
  run_test "pxz" "bash $TAINT_EVALUATOR_DIR/experiments/utils/tests/run_pxz_test.sh" $script_path "$TAINT_EVALUATOR_DIR/experiments/utils/tests/clean_pxz_test.sh"
  run_test "pigz" "bash $TAINT_EVALUATOR_DIR/experiments/utils/tests/run_pigz_test.sh" $script_path "$TAINT_EVALUATOR_DIR/experiments/utils/tests/clean_pigz_test.sh"

  cd ..
}

#run_experiment "nullpin3.7"
#run_experiment "dytan"
#run_experiment "native"
#run_experiment "datatracker"
#run_experiment "libdft"
#run_experiment "nullpin"
#run_experiment "nulldynamorio"
#run_experiment "taintgrind"
#run_experiment "nullgrind"
#run_experiment "taint_bunny_bitwise_cc"
#run_experiment "taint_bunny_bitwise_in"
#run_experiment "drmemory"
#run_experiment "bap"
#run_experiment "datatracker_ewag"
#run_experiment "triton"

#run_experiment "taint_bunny_bitvect_cc_cache"
#run_experiment "taint_bunny_bitvect_raw_cache"
#run_experiment "taint_bunny_bitvect_cc_cache_fp"
#run_experiment "taint_bunny_bitvect_raw_cache_fp"

#run_experiment "taint_bunny_id_cc_cache"
#run_experiment "taint_bunny_id_raw_cache"
#run_experiment "taint_bunny_id_simd_cache"
#run_experiment "taint_bunny_id_cc_cache_fp"
#run_experiment "taint_bunny_id_raw_cache_fp"
#run_experiment "taint_bunny_id_simd_cache_fp"

#run_experiment taint_bunny_bitvect_raw_sampler

