#source set_cur_pwd
if [ ! -d ../script ];then
      mkdir -p ../script
fi
cp ./script/*  ../script
if [  -d ../buildroot ];then
echo " ../buildroot already exist!!!"
exit 0
fi
cd ../
git clone git://git.buildroot.net/buildroot 
cd ./buildroot
cp ../script/tpst_hmi_defconfig ./configs/
make tpst_hmi_defconfig
make
