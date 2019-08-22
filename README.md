# buildroot_imx6ul
imx6ul 根文件制作工具。2019.08.22。
步骤：
1. cd /opt/buildroot
2. git clone 
1. 下载工具链
./down_toolchain.sh
2. 配置工具链
进入 ../toolchain,执行 mount_arm_gcc.sh
3. 构建文件系统
./build_rootfs.sh
