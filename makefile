obj=main/src/hello.c \
	main/inc/

FLAGS = -g -DDEBUG -W -Wall -fPIC

#先生成.o的动态链接库
hello.o:$(obj)
	echo $(obj)
	gcc -c $(FLAGS) -I main/inc/ $<

#执行连接操作，生成可执行文件
main:main/main.c hello.o
	gcc main/main.c hello.o -I main/inc/ -o main
clean:
	rm -rf *.o *.exe