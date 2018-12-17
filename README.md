# TPAnimation

git clone https://github.com/Reveillark/TPAnimation

cd TPAnimation

git submodule update --init --recursive

mkdir build

./run.exe

Si le script run.exe ne fonctionne pas :

cd build

cmake ..

make -j4 && cd ../Bundle-GNU/Debug/bin/ && ./main-app

