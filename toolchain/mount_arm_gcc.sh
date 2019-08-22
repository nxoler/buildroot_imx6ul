#check mount dir
if [ ! -d  /usr/local/arm_gcc/ ]; then
    mkdir  /usr/local/arm_gcc/
fi
#set env 
result=$( grep "arm_gcc" ~/.bashrc )
echo $result
if [ -z  "$result" ] ; then
    echo "export PATH=\$PATH:/usr/local/arm_gcc/bin" >> ~/.bashrc
fi
#mount 
insmod ./aufs.ko
mount -t aufs -o br=./gcc-linaro-6.3.1-2017.02-x86_64_arm-linux-gnueabihf=ro none  /usr/local/arm_gcc/

arm-linux-gnueabihf-gcc -v
