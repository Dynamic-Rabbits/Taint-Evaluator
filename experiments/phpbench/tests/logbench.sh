command=$(bash $1 "$PHPBENCH_DIR/phpbench/bin/phpbench run $PHPBENCH_DIR/phpbench/benchmarks/Macro/LogBench.php --report=aggregate --revs=10000 --iterations=1 --config=$PHPBENCH_DIR/phpbench/phpbench.json.dist --php-binary=\"php\"")

eval $command
