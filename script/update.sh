cp /opt/buildroot/script/env.sh    /opt/buildroot/buildroot/output/target/etc/profile.d
cp /opt/buildroot/script/set_ip.sh    /opt/buildroot/buildroot/output/target/etc/profile.d
cp /opt/buildroot/external/fonts  /opt/buildroot/buildroot/output/target/usr/lib -rf
cp  -d /opt/buildroot/external/build_x64/libzmq/lib/lib*  /opt/buildroot/buildroot/output/target/usr/lib 
cp /opt/buildroot/script/sshd_config  /opt/buildroot/buildroot/output/target/etc/ssh/sshd_config
#rm /opt/buildroot/buildroot/output/target/etc/init.d/S50dropbear
cp /opt/buildroot/script/mdev.conf  /opt/buildroot/buildroot/output/target/etc/mdev.conf
cp /opt/buildroot/script/automounter.sh  /opt/buildroot/buildroot/output/target/etc/automounter.sh
