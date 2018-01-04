# Cross compilation Makefile for ARM
KERN_SRC=~/Desktop/labs/lab3/linux-3.16.49/
obj-m = memory.o uart-driver.o
 
all: 
	make -C $(KERN_SRC) ARCH=arm CROSS_COMPILE=arm-linux-gnueabi-  M=$(PWD) modules
	cp ~/Desktop/labs/lab6/memory.ko ~/Desktop/labs/lab3/busybox-1.27.2/_install/home/manikanta/memory.ko
	cp ~/Desktop/labs/lab6/uart-driver.ko ~/Desktop/labs/lab3/busybox-1.27.2/_install/home/manikanta/uart-driver.ko	

clean:
	make -C $(KERN_SRC) ARCH=arm CROSS_COMPILE=arm-linux-gnueabi-  M=$(PWD) clean




