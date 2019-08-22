if [  -d ../toolchain ];then
echo "../toolchain already exist !"
      exit 0
fi
mkdir -p ../toolchain
cp ./toolchain/* ../toolchain

cd ../toolchain
#wget http://releases.linaro.org/components/toolchain/binaries/6.3-2017.02/arm-linux-gnueabihf/gcc-linaro-6.3.1-2017.02-x86_64_arm-linux-gnueabihf.tar.xz
echo "down gcc over..."
xz -d ./gcc-linaro-6.3.1-2017.02-x86_64_arm-linux-gnueabihf.tar.xz
tar xvf ./gcc-linaro-6.3.1-2017.02-x86_64_arm-linux-gnueabihf.tar
#tar xvJf  ./gcc-linaro-6.3.1-2017.02-x86_64_arm-linux-gnueabihf.tar.xz
#wget http://download.qt.io/archive/qt/5.6/5.6.3/qt-opensource-linux-x64-5.6.3.run
#echo "down qt5 over..."


