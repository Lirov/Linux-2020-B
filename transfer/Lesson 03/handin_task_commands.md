```bash
zev@zev-VirtualBox:~$ pwd
/home/zev
zev@zev-VirtualBox:~$ ls
Desktop    Downloads         Linux-2020  Pictures  snap       Videos
Documents  examples.desktop  Music       Public    Templates
zev@zev-VirtualBox:~$ cd Desktop/
zev@zev-VirtualBox:~/Desktop$ mkdir Practice03
zev@zev-VirtualBox:~/Desktop$ cd 
Linux-2020-master/ Practice03/        Practice03 old/    
zev@zev-VirtualBox:~/Desktop$ cd 
Linux-2020-master/ Practice03/        Practice03 old/    
zev@zev-VirtualBox:~/Desktop$ cd /Practiice03
bash: cd: /Practiice03: No such file or directory
zev@zev-VirtualBox:~/Desktop$ cd /Practice03
bash: cd: /Practice03: No such file or directory
zev@zev-VirtualBox:~/Desktop$ cd \Practice03
zev@zev-VirtualBox:~/Desktop/Practice03$ touch first.txt
zev@zev-VirtualBox:~/Desktop/Practice03$ chmod 777 first.txt 
zev@zev-VirtualBox:~/Desktop/Practice03$ whatis pc
pc: nothing appropriate.
zev@zev-VirtualBox:~/Desktop/Practice03$ whatis cp
cp (1)               - copy files and directories
zev@zev-VirtualBox:~/Desktop/Practice03$ cp first.txt second.txt
zev@zev-VirtualBox:~/Desktop/Practice03$ ls
first.txt  second.txt
zev@zev-VirtualBox:~/Desktop/Practice03$ mv first.txt one
zev@zev-VirtualBox:~/Desktop/Practice03$ mv one one.txt
zev@zev-VirtualBox:~/Desktop/Practice03$ ls
one.txt  second.txt
zev@zev-VirtualBox:~/Desktop/Practice03$ mv second.txt two.txt
zev@zev-VirtualBox:~/Desktop/Practice03$ ls
one.txt  two.txt
zev@zev-VirtualBox:~/Desktop/Practice03$ chmod 600 two.txt 
zev@zev-VirtualBox:~/Desktop/Practice03$ ls -l
total 0
-rwxrwxrwx 1 zev zev 0 Apr  1 12:55 one.txt
-rw------- 1 zev zev 0 Apr  1 13:03 two.txt
zev@zev-VirtualBox:~/Desktop/Practice03$ mkdir bash01
zev@zev-VirtualBox:~/Desktop/Practice03$ cat > first.sh
echo "Mission one complete!"
^C
zev@zev-VirtualBox:~/Desktop/Practice03$ sh first.sh
Mission one complete!
zev@zev-VirtualBox:~/Desktop/Practice03$ 
```
