
#编译流程: C文件 -> .o文件 -> elf文件 -> bin文件
CC = arm-linux-gcc
LD = arm-linux-ld
OBJCOPY = arm-linux-objcopy

obj_c =

obj_S = startup.S

target_prefix = startup

all:
	$(CC) -c -o $(target_prefix).o $(obj_S)
	$(LD) -Ttext 0 $(target_prefix).o -o $(target_prefix).elf
	$(OBJCOPY) -O binary -S $(target_prefix).elf $(target_prefix).bin

clean:
	rm *.bin *.o *.elf

