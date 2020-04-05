```bash
zev@Zev-Desktop:~$ ls
zev@Zev-Desktop:~$ pwd
/home/zev
zev@Zev-Desktop:~$ mkdir Desktop
zev@Zev-Desktop:~$ ls
Desktop
zev@Zev-Desktop:~$ cd Desktop/
zev@Zev-Desktop:~/Desktop$ mkdir Practice03
zev@Zev-Desktop:~/Desktop$ cd Practice03/
zev@Zev-Desktop:~/Desktop/Practice03$ touch first.txt
zev@Zev-Desktop:~/Desktop/Practice03$ chmod 666 first.txt
zev@Zev-Desktop:~/Desktop/Practice03$ mv first.txt one.txt
zev@Zev-Desktop:~/Desktop/Practice03$ ls
one.txt
zev@Zev-Desktop:~/Desktop/Practice03$ chmod 600 one.txt
zev@Zev-Desktop:~/Desktop/Practice03$ ls -l
total 0
-rw------- 1 zev zev 0 Apr  5 08:52 one.txt
zev@Zev-Desktop:~/Desktop/Practice03$ mkdir FolderToDelete
zev@Zev-Desktop:~/Desktop/Practice03$ cd FolderToDelete/
zev@Zev-Desktop:~/Desktop/Practice03/FolderToDelete$ touch a.txt
zev@Zev-Desktop:~/Desktop/Practice03/FolderToDelete$ touch b.txt
zev@Zev-Desktop:~/Desktop/Practice03/FolderToDelete$ touch c.txt
zev@Zev-Desktop:~/Desktop/Practice03/FolderToDelete$ cd ..
zev@Zev-Desktop:~/Desktop/Practice03$ rm -r FolderToDelete/
zev@Zev-Desktop:~/Desktop/Practice03$ ls -l
one.txt
```
