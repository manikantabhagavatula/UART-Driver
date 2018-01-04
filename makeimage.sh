#!/bin/sh

make
cp ~/Desktop/labs/lab6/mem_test ~/Desktop/labs/lab3/busybox-1.27.2/_install/home/manikanta/mem_test
cp ~/Desktop/labs/lab6/uart_test ~/Desktop/labs/lab3/busybox-1.27.2/_install/home/manikanta/uart_test
cd ~/Desktop/labs/lab3/busybox-1.27.2/_install
find . | cpio -o --format=newc > ../rootfs.img
cd ..
gzip -c rootfs.img > rootfs.img.gz

