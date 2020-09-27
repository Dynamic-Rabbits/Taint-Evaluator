DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"

echo "The spec is $SPEC"


command=$(bash $1 '$command')

echo $command


cp  $DIR/gcc-linux-x86.cfg $DIR/config.cfg

sed -i "s|@COM@@AND|$command|g" $DIR/config.cfg

cd $SPEC/bin
./runcpu --config=$DIR/config.cfg rateint_base

mv ../result $DIR/.

cd $DIR/

rm -rf config.cfg.*

