cd $BUNNIES_DIR

git clone "https://github.com/Dynamic-Rabbits/Dynamic-Rabbits.git"

cd Dynamic-Rabbits
git checkout 56f9e2b9e8ec68252ab2f1141f5aa3ca499fee31
source set_paths.sh
./build_all.sh x86_32 Release
