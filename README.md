# buildroot_imx6ul
imx6ul 根文件制作工具。2019.08.22。

步骤：

1. cd /opt/buildroot

2. git clone https://github.com/nxoler/buildroot_imx6ul.git

3. 下载工具链

cd ./buildroot_imx6ul

./down_toolchain.sh

4. 配置工具链
cd ../toolchain

./mount_arm_gcc.sh

5. 构建文件系统
cd ../buildroot
./build_rootfs.sh
