# Linux-2020

## Lesson 01:
* Intro to linux OS. 
* Installation of VM
* Installation of Linux machine: Ubuntu, Parrot, Kali etc..

## Lesson 02:
* Full screen of VM. 
* Linux File system
* Command - line introduction
  * pwd
  * Man
  * whatis
  * Clear
  * Top
  * df -h
  * ls
  * cd
  * tree


## Lesson 03:
* Permissions
  * user
  * group
  * other
  * read
  * write
  * execute
* Commands
  * Mkdir
  * Touch
  * Rmdir
  * Rm
  * mv

## Lesson 04:
* User
  * whoami
  * adduser
  * passwd
  * usedel
* Structure of `/etc/passwd` file
* Structure of `/etc/shadow` file
* sudo -i
* cat
* nano

## Lesson 05:
* Less
* Wc
* Grep
* Egrep
* Regular expressions
  * `^`
  * `$`
  * `*`
  * `.`

## Lesson 06:
* Echo command
* Exit code
* Variables
* Operations:
  * expr
  * []
  * [[]]
* Increment & Decrement
* Run bash file

## Lesson 07:
* File or Directory
* If statement
* Short if statement
* Numbers vs Strings comparison
* read - input
* Programs: 
  * Max number
  * Median number
 
## Lesson 08:
* seq
* Lists
* For loop
* Mested for loop
* While loop
* Infinite loop
* Programs:
  * Check all files in directory
  * Pyramid
 
## Lesson 09:
* Until loop
* Programs:
   * Swap two numbers
   * Fibonacci series
   * Palindrome 
* String length
* Functions
* Functions with parameters
* Nested functions
* Null in function

## Lesson 10:
* shuf - random
* **Rock, Paper, Scissors game.** 

## Lesson 11:
* I/O redirections:
 * stdin
 * stdout
 * stderr
* Test preparation
___

# Lesson 1

## Why use Linux?

* Faster, Secure, Stable
    * it helps that developers from all over the world contribute, instead of just a single company
* Highly configurable
* Suitable for both single/multiuser environment
* Well defined hierarchy and permissions to allow networking across different groups and sites
* Strong set of commands to automate repetitive manual tasks

___
# Lesson 02

## Command line introduction


### PWD 
`pwd` - print name of current/working directory

```sh
raya@raya-VirtualBox:/$ pwd 
/
```

### Man
man - an interface to the on-line reference manuals
press `q` to quit. 
```sh
man man 
```

### whatis
whatis - display one-line manual page descriptions
```sh
raya@raya-VirtualBox:/$ whatis clear
clear (1)            - clear the terminal screen
```

### Clear
clear - clear the terminal screen
`clear` is similar to `cls` in windows. 
```sh
raya@raya-VirtualBox:/$ clear
```

### Top
`top` - display Linux processes

### df -h
`df` - report file system disk space usage

### LS
`ls` - list directory contents
```sh
raya@raya-VirtualBox:/$ pwd
/
raya@raya-VirtualBox:/$ ls
bin   cdrom  etc   initrd.img      lib    lost+found  mnt  proc  run   snap  swapfile  tmp  var
boot  dev    home  initrd.img.old  lib64  media       opt  root  sbin  srv   sys       usr  vmlinuz

```
##### Show hidden files
`ls -a`, `ls -all` : do not ignore entries starting with .
```sh
raya@raya-VirtualBox:~$ ls -a
.              .config           .ICEauthority  Public                       .vboxclient-seamless.pid
..             Desktop           .local         .sudo_as_admin_successful    Videos
.bash_history  Documents         .mozilla       Templates
.bash_logout   Downloads         Music          .vboxclient-clipboard.pid
.bashrc        examples.desktop  Pictures       .vboxclient-display.pid
.cache         .gnupg            .profile       .vboxclient-draganddrop.pid

```
`ls -l`     use a long listing format

* `d`rwxr-xr-x = directory (תקייה)
```sh
drwxr-xr-x 3 raya raya 4096 Mar 25 11:34 Desktop
```
* `-`rw-r--r-- is file
```sh
-rw-r--r-- 1 raya raya 8980 Mar 22 00:46 examples.desktop
```
```sh
raya@raya-VirtualBox:~$ ls -l
total 44
drwxr-xr-x 3 raya raya 4096 Mar 25 11:34 Desktop
drwxr-xr-x 2 raya raya 4096 Mar 22 00:57 Documents
drwxr-xr-x 2 raya raya 4096 Mar 22 00:57 Downloads
-rw-r--r-- 1 raya raya 8980 Mar 22 00:46 examples.desktop
drwxr-xr-x 2 raya raya 4096 Mar 22 00:57 Music
drwxr-xr-x 2 raya raya 4096 Mar 22 00:57 Pictures
drwxr-xr-x 2 raya raya 4096 Mar 22 00:57 Public
drwxr-xr-x 2 raya raya 4096 Mar 22 00:57 Templates
drwxr-xr-x 2 raya raya 4096 Mar 22 00:57 Videos

```
##### Combine the two commands: 
```sh
raya@raya-VirtualBox:~$ ls -la
drwxr-xr-x 1 zev  zev  4096 Apr 27 09:02 .
drwxr-xr-x 1 root root 4096 Mar 18 11:12 ..
-rw------- 1 zev  zev  2184 Jun 29 09:15 .bash_history
-rw-r--r-- 1 zev  zev   220 Mar 18 11:12 .bash_logout
-rw-r--r-- 1 zev  zev  3771 Mar 18 11:12 .bashrc
drwxrwxrwx 1 zev  zev  4096 Mar 18 11:12 .cache
drwx------ 1 zev  zev  4096 Mar 18 11:12 .config
-rw-r--r-- 1 zev  zev   807 Mar 18 11:12 .profile
-rw-r--r-- 1 zev  zev     0 Mar 25 11:42 .sudo_as_admin_successful
drwxrwxrwx 1 zev  zev  4096 Apr 27 09:02 .vscode-server
drwxrwxrwx 1 zev  zev  4096 Apr  5 08:52 Desktop
```

## cd 
cd - change direcory. 
```sh
raya@raya-VirtualBox:~$ ls
Desktop  Documents  Downloads  examples.desktop  Music  Pictures  Public  Templates  Videos
raya@raya-VirtualBox:~$ cd Desktop/
raya@raya-VirtualBox:~/Desktop$ 
```
Go back: 
```sh
raya@raya-VirtualBox:~/Desktop$ pwd
/home/raya/Desktop
raya@raya-VirtualBox:~/Desktop$ cd ..
raya@raya-VirtualBox:~$ pwd
/home/raya
```


#### Update packages:
Sudo - Super User. 
```sh
raya@raya-VirtualBox:/$ sudo apt update
[sudo] password for raya: 
```

### tree
tree - list contents of directories in a tree-like format.

```sh
raya@raya-VirtualBox:/$ sudo apt-get install tree
```
```sh
raya@raya-VirtualBox:~$ tree
.
├── Desktop
│   └── 02
├── Documents
├── Downloads
├── examples.desktop
├── Music
├── Pictures
├── Public
├── Templates
└── Videos

9 directories, 1 file
```

## Linux file system

## Linux file system
<img src="https://www.rs-online.com/designspark/rel-assets/dsauto/temp/uploaded/linux-filesystem.png?w=815"/>

1. The entire Linux directory structure starting at the top (/) root directory.

2. In linux, everything is represented by a file or a folder!

## /bin
The /bin directory contains user executable files.

## /boot	
Contains the static bootloader and kernel executable and configuration files required to boot a Linux computer.

## /dev
This directory contains the device files for every hardware device attached to the system. These are not device drivers, rather they are files that represent each device on the computer and facilitate access to those devices.

## /etc	
Contains the local system configuration files for the host computer.

## /home	
Home directory storage for user files. Each user has a subdirectory in /home.

## /lib	
Contains shared library files that are required to boot the system.

## /media	
A place to mount external removable media devices such as USB thumb drives that may be connected to the host.

## /mnt	
A temporary mountpoint for regular filesystems (as in not removable media) that can be used while the administrator is repairing or working on a filesystem.

## /opt	
Optional files such as vendor supplied application programs should be located here.

## /root	
This is not the root (/) filesystem. It is the home directory for the root user.
## /sbin	
System binary files. These are executables used for system administration.
## /tmp	
Temporary directory. Used by the operating system and many programs to store temporary files. Users may also store files here temporarily. Note that files stored here may be deleted at any time without prior notice.
## /usr	
These are shareable, read-only files, including executable binaries and libraries, man files, and other types of documentation.
## /var	
Variable data files are stored here. This can include things like log files, MySQL, and other database files, web server data files, email inboxes, and much more.

## Absolute and Relative paths

>An **absolute or full path** points to the same location in a file system regardless of the current working directory. To do that, it must contain the root directory.

>By contrast, a **relative path** starts from some given working directory, avoiding the need to provide the full absolute path. A filename can be considered as a relative path based at the current working directory. If the working directory is not the file's parent directory, a file not found error will result if the file is addressed by its name.

* `/home/learnbyexample` absolute path
* `../design` relative path

___
# Lesson 03
___


### Mkdir
mkdir (1) - make directories
```
mkdir [name of folder]
```
```bash
raya@raya-VirtualBox:~/Desktop$ mkdir Dir01
raya@raya-VirtualBox:~/Desktop$ cd Dir01/
```

### Touch 
touch (1) - change file timestamps
```
touch [name of file]
```

```bash
raya@raya-VirtualBox:~/Desktop/Dir01$ touch a.txt
raya@raya-VirtualBox:~/Desktop/Dir01$ ls
a.txt
```

### Rmdir 
rmdir (1)  - remove empty directories
```bash
raya@raya-VirtualBox:~/Desktop$ mkdir stam
raya@raya-VirtualBox:~/Desktop$ rmdir stam/
```
If we try to delete not an empty folder: 
```bash
raya@raya-VirtualBox:~/Desktop$ rmdir Lesson\ 03/
rmdir: failed to remove 'Lesson 03/': Directory not empty
```
### Rm
rm (1) - remove files or directories
```bash
raya@raya-VirtualBox:~/Desktop$ cd Dir01/
raya@raya-VirtualBox:~/Desktop/Dir01$ ls
a.txt  b.txt
raya@raya-VirtualBox:~/Desktop/Dir01$ rm a.txt 
raya@raya-VirtualBox:~/Desktop/Dir01$ ls
b.txt
raya@raya-VirtualBox:~/Desktop/Dir01$ touch a.txt
raya@raya-VirtualBox:~/Desktop/Dir01$ ls
a.txt  b.txt
raya@raya-VirtualBox:~/Desktop/Dir01$ rm a.txt b.txt 
raya@raya-VirtualBox:~/Desktop/Dir01$ ls
raya@raya-VirtualBox:~/Desktop/Dir01$ 
```

* Delete a folder that is not empty:
`-r` : recursively 
```bash
rm -r [name of folder]
```

```bash
raya@raya-VirtualBox:~/Desktop/Dir01$ ls
raya@raya-VirtualBox:~/Desktop/Dir01$ touch a.txt b.txt 
raya@raya-VirtualBox:~/Desktop/Dir01$ ls
a.txt  b.txt
raya@raya-VirtualBox:~/Desktop/Dir01$ cd ..
raya@raya-VirtualBox:~/Desktop$ ls
 02   Dir01  'Lesson 03'
raya@raya-VirtualBox:~/Desktop$ rmdir Dir01/
rmdir: failed to remove 'Dir01/': Directory not empty
raya@raya-VirtualBox:~/Desktop$ rm -r Dir01/
raya@raya-VirtualBox:~/Desktop$ ls
'Lesson 03'
```

### Mv
mv (1) - move (rename) files

```bash
raya@raya-VirtualBox:~/Desktop/newFolder$ ls
b.txt  newA.txt
raya@raya-VirtualBox:~/Desktop/newFolder$ mv b.txt newB.txt
raya@raya-VirtualBox:~/Desktop/newFolder$ ls
newA.txt  newB.txt
```


## Permissions - הרשאות 

<img src="https://www.guru99.com/images/PermissionsConcept.png"/>

## Ownership of Linux files
Every file and directory on your Unix/Linux system is assigned 3 types of owner, given below.

#### User
A user is the owner of the file. By default, the person who created a file becomes its owner. Hence, a user is also sometimes called an owner.

#### Group
A user- group can contain multiple users. All users belonging to a group will have the same access permissions to the file. Suppose you have a project where a number of people require access to a file. Instead of manually assigning permissions to each user, you could add all users to a group, and assign group permission to file such that only this group members and no one else can read or modify the files.

#### Other
Any other user who has access to a file. This person has neither created the file, nor he belongs to a usergroup who could own the file. Practically, it means everybody else. Hence, when you set the permission for others, it is also referred as set permissions for the world.

----
## Permissions

<img src="https://www.guru99.com/images/permission(1).png">

Every file and directory in your UNIX/Linux system has following 3 permissions defined for all the 3 owners discussed above.


<img src='https://qph.fs.quoracdn.net/main-qimg-0f76c00cf97852795a234a730bf9e4fd' height=250/>



### Example:
<img src='https://www.guru99.com/images/FilePermissions(1).png'>

'764' absolute code says the following:

* Owner can read, write and execute
* Usergroup can read and write
* World can only read
This is shown as -rwx rw- r--

### Chmod

#### example:
```sh
chmod o+rwx b.txt 

or: chmod u=rwx
chmod u+rwx
chmod 147
```
___
# Lesson 04
___

### User in linux

### whoami
whoami - print effective userid

```bash
raya@raya-VirtualBox:~$ whoami
raya
```

### Sudo -i / su / sudo su
`sudo -i` will change the user to a `root` user.

That will give us the permissions of a super-user (Similar to Administrator in windows)

sudo, sudoedit — execute a command as another user
```bash
raya@raya-VirtualBox:~$ sudo -i
[sudo] password for raya: 
root@raya-VirtualBox:~# whoami
root
```
---
## Add a new user:
### useradd
* Try to add a user to the system, but we have no permissions: 
```bash
raya@raya-VirtualBox:~$ useradd john
useradd: Permission denied.
useradd: cannot lock /etc/passwd; try again later.
```
* Use `sudo` before a command, and we can add a user. 
```bash
raya@raya-VirtualBox:~$ sudo useradd john
[sudo] password for raya: 
```
### passwd
passwd - change user password

```
raya@raya-VirtualBox:~$ sudo passwd john
Enter new UNIX password: 
Retype new UNIX password: 
passwd: password updated successfully
```
##### see the user in `/etc/passwd` file. 

```sh
passwd (1ssl)        - compute password hashes
```
* Open the file `/etc/passwd`
```bash
cat /etc/passwd
```
* This is the output from `/etc/passwd` for user `john`
```bash
john:x:1002:1002::/home/john:/bin/sh
```
```sh
root:x:0:0:root:/root:/bin/bash
```
#### Structure of `/etc/passwd`
We have 7 columns, and each one has a meaning:
* **Username** - user login name used to login into a system. It could be between 1 to 32 character long. 
* **Password** - User password (or x character) stored in `/etc/shadow` file in encrypted format
* **User ID (UID)** - every user must have UID. By default UID 0 is reserved for `root` user
* **Group ID (GID)** - The primary gorup id is stored in `/etc/group` file
* **User info** - this field is optional and allow you to define extra information about the user. For example: user full name. 
* **Home directory** - The absolute path to the user's home direcory
* **Shell** - The absolute location of a user's shell. `/bin/sh`

---

#### Add user with specific `UID`

```bash
raya@raya-VirtualBox:~$ man useradd

 -u, --uid UID
           The numerical value of the user's ID. This value must be unique, unless the -o option is used. The value must be non-negative. The default
           is to use the smallest ID value greater than or equal to UID_MIN and greater than every other user.

```
* The command:
```bash
sudo useradd -u 555 paul
```

* in `/etc/passwd` we can see that the `UID` is 555 
```bash
paul:x:555:1003::/home/paul:/bin/sh
```

### Userdel
userdel - delete a user account and related files

```bash
sudo userdel paul 
[sudo] password for raya: 
```

## Structure of `/etc/shadow` file
`/etc/shadow` file stores the actuall passwords in encrypted format. (The hash of a password). 

```bash
raya:$6$oloCWpfW$q4beNkhVne7Bzy67kt8dkC83JfPG2LjauphiIWFFTz8q58QYsDq//e8psyTdjJhHsV8kTDjqPIkzp6I5N6QRv0:18342:0:99999:7:::
```
* **Username** - it is the login name of a user. 
* **Password** - it is the encrypted password. The password should be minimum 8-12 digits(there are other linux distributions that allow less than 8 digits)
Usually password format is set to `$id$salt$hashed`. 

    the `id`:
    
        1. `$1$` is MD5
        
        2. `$2a$`, `$2y$` is Blowfish
        
        3. `$5$` is SHA-256
        
        4. `$6$` is SHA-512

```
$6$oloCWpfW$q4beNkhVne7Bzy67kt8dkC83JfPG2LjauphiIWFFTz8q58QYsDq//e8psyTdjJhHsV8kTDjqPIkzp6I5N6QRv0
```

## Cat

cat - concatenate files and print on the standard output

`Cat` can open the data in a file. 

### 1. Display the file content using `cat`
```bash
cat /etc/passwd
```
* Create folder `Lesson04`, enter the folder, create file `a.txt`, insert data to it manually. See the data in `a.txt`
```bash
raya@raya-VirtualBox:~/Desktop$ mkdir Lesson04
raya@raya-VirtualBox:~/Desktop$ cd Lesson04/
raya@raya-VirtualBox:~/Desktop/Lesson04$ touch a.txt
raya@raya-VirtualBox:~/Desktop/Lesson04$ ls
a.txt
raya@raya-VirtualBox:~/Desktop/Lesson04$ cat a.txt 
Hello new users in linux
```

## 2. Create a file using `cat` command
```bash
cat > b.txt
```
```bash
raya@raya-VirtualBox:~$ cd Desktop/Lesson04/
raya@raya-VirtualBox:~/Desktop/Lesson04$ ls
a.txt
raya@raya-VirtualBox:~/Desktop/Lesson04$ cat > b.txt
This is a wondeful world
raya@raya-VirtualBox:~/Desktop/Lesson04$ ls
a.txt  b.txt
```
> note: to close the file: `ctrl + d`

## Display line numbers in a file
With `-n` option we can see the line numbers of the file `theRoadNotTaken.txt ` in the output terminal
```bash
raya@raya-VirtualBox:~/Desktop/Lesson04$ cat -n theRoadNotTaken.txt 
     1	 The Road Not Taken
     2	By Robert Frost
     3	Two roads diverged in a yellow wood,
     4	And sorry I could not travel both
     5	And be one traveler, long I stood
     6	And looked down one as far as I could
     7	To where it bent in the undergrowth;
```

## Concatenate output
We can show the data inside 2 files at the same time: 
```bash
raya@raya-VirtualBox:~/Desktop/Lesson04$ cat a.txt 
Hello dear students!
raya@raya-VirtualBox:~/Desktop/Lesson04$ cat b.txt 
This is a wondeful world

raya@raya-VirtualBox:~/Desktop/Lesson04$ cat a.txt b.txt 
Hello dear students!
This is a wondeful world
```

## Add concatenated data to end of file
If we use `>` - it will override the previous data. 
if we use `>>` - it will concatenate data to the end of the file
```bash
raya@raya-VirtualBox:~/Desktop/Lesson04$ cat a.txt 
Hello dear students!
raya@raya-VirtualBox:~/Desktop/Lesson04$ cat > a.txt 
This is a
raya@raya-VirtualBox:~/Desktop/Lesson04$ cat a.txt 
This is a
raya@raya-VirtualBox:~/Desktop/Lesson04$ cat >> a.txt 
Hello dear students! I am concatenated
raya@raya-VirtualBox:~/Desktop/Lesson04$ cat a.txt 
This is a
Hello dear students! I am concatenated
```

## Nano

nano - Nano's ANOther editor, an enhanced free Pico clone

Nano is a text editor

#### 1. `nano --version` will output the current version of nano. 
```bash
raya@raya-VirtualBox:~/Desktop/Lesson04$ nano --version
 GNU nano, version 2.9.3
 (C) 1999-2011, 2013-2018 Free Software Foundation, Inc.
 (C) 2014-2018 the contributors to nano
 Email: nano@nano-editor.org	Web: https://nano-editor.org/
 Compiled options: --disable-libmagic --disable-wrapping-as-root --enable-utf8
```

#### 2. Edit file with nano

```bash
raya@raya-VirtualBox:~/Desktop/Lesson04$ cat a.txt 
This is a
Hello dear students! I am concatenated
raya@raya-VirtualBox:~/Desktop/Lesson04$ nano a.txt 
raya@raya-VirtualBox:~/Desktop/Lesson04$ cat a.txt 
This is a
Hello dear students! I am concatenated

This line was added by nano
```

> save & exit: press `ctrl + o`(save changes), press enter, press `ctrl + x`(exit)


___
# Lesson 05
___

## Less

Show large files in nice window. (From begining to end, and not the oopsite).

> Less  is  a  program similar to more, but it has many more features.

- Enter the folder:

```bash
cd /usr/share/common-licenses/
```

- Show the content of `GPL-3`

```bash
cat GPL-3
```

- Show the content using `less` command

```bash
less GPL-3
```

- Simple way:

```bash
less /usr/share/common-licenses/GPL-3
```

### PIPE - `|`

Pipe - can redirect the output from the first command to the second command.

```bash
[Command 1] | [Command 2]
```

- `ps aux` will output all the proceses. we redirect the output to the command `less`, so we can see the output in a better way.

```bash
ps aux | less
```

### less -N

- Show the output with line numbers.

```bash
less -N /usr/share/common-licenses/GPL-3
```

### less +(number)

This command will start the output from the requsted line. (in this example: 10).

```bash
less -N +10 /usr/share/common-licenses/GPL-3
```



## wc - word counter

> wc - print newline, word, and byte counts for each file
* **l** - lines
* **w** - words
* **c** - counts of bytes (letters)

## Example 1
* Create new folder `Lesson05`, and enter the folder:
```bash
raya@raya-VirtualBox:~/Desktop$ mkdir Lesson05
raya@raya-VirtualBox:~/Desktop$ cd Lesson05
```
* Create file `a.txt`, and insert some data. (one time in regular mode, second time with concatination)
```
raya@raya-VirtualBox:~/Desktop/Lesson05$ cat > a.txt
Bob
Alice
Root
User
raya@raya-VirtualBox:~/Desktop/Lesson05$ cat a.txt
Bob
Alice
Root
User
raya@raya-VirtualBox:~/Desktop/Lesson05$ wc a.txt
 4  4 20 a.txt
raya@raya-VirtualBox:~/Desktop/Lesson05$ cat >> a.txt
Linux is great
raya@raya-VirtualBox:~/Desktop/Lesson05$ cat a.txt
Bob
Alice
Root
User
Linux is great
```
* Show the `wc` for `a.txt`
```
raya@raya-VirtualBox:~/Desktop/Lesson05$ wc a.txt
5  7 35 a.txt
```
## Example 2
* Return the number of **lines** for `a.txt`
```bash
raya@raya-VirtualBox:~/Desktop/Lesson05$ wc -l a.txt 
5 a.txt
```
* Return the number of **words** for `a.txt`
```bash
raya@raya-VirtualBox:~/Desktop/Lesson05$ wc -w a.txt 
7 a.txt
```
* Return the number of **letters** for `a.txt`
```bash
raya@raya-VirtualBox:~/Desktop/Lesson05$ wc -c a.txt 
35 a.txt
```

## Grep

> grep, egrep, fgrep, rgrep - print lines matching a pattern
> grep searches for PATTERN in each FILE. A FILE of “-” stands for standard input.

```
grep [OPTIONS] pattern [FILE...]
```

### Simple grep

- Search for `L` in `a.txt`.

```bash
raya@raya-VirtualBox:~/Desktop/Lesson05$ cat a.txt
Bob
Alice
Root
User
Linux is great
raya@raya-VirtualBox:~/Desktop/Lesson05$ grep L a.txt
Linux is great
```

- Search for `root` in file `/etc/passwd`

```bash
raya@raya-VirtualBox:~/Desktop/Lesson05$ grep root /etc/passwd
root:x:0:0:root:/root:/bin/bash
```

- Search for more than one word - we must add `""`

```bash
raya@raya-VirtualBox:~/Desktop/Lesson05$ grep "Speech Dispatcher" /etc/passwd
speech-dispatcher:x:111:29:Speech Dispatcher,,,:/var/run/speech-dispatcher:/bin/false
```

### invert match (exclude)

> **-v** or **--invert-match**

display lnes that do not match a pattern.

```bash
raya@raya-VirtualBox:~/Desktop/Lesson05$ cat a.txt
Bob
Alice
Root
User
Linux is great
raya@raya-VirtualBox:~/Desktop/Lesson05$ grep -v User  a.txt
Bob
Alice
Root
Linux is great

raya@raya-VirtualBox:~/Desktop/Lesson05\$ grep --invert-match User a.txt
Bob
Alice
Root
Linux is great
```
### Search for a pattern using pipe

```bash
raya@raya-VirtualBox:~/Desktop/Lesson05$ ps awx | grep update
 2243 tty1     Sl+    0:00 update-notifier
 6081 tty1     SNl+   0:09 /usr/bin/python3 /usr/bin/update-manager --no-update --no-focus-on-map
 6260 pts/0    S+     0:00 grep --color=auto update
raya@raya-VirtualBox:~/Desktop/Lesson05$ ps awx | grep root
  618 ?        S      0:00 avahi-daemon: chroot helper
 6262 pts/0    S+     0:00 grep --color=auto root
 raya@raya-VirtualBox:~/Desktop/Lesson05$ ps awx | grep root | grep avahi
  618 ?        S      0:00 avahi-daemon: chroot helper

```

### Recursive search

> grep -r [Pattern][name_of_folder]

```
-r, --recursive
 Read all files under each directory, recursively, following symbolic links only if they are on the
 command line. Note that if no file operand is given, grep searches the working directory. This is
 equivalent to the -d recurse option.
```

Search for each folder and file in a chosen folder.
note: here we search for `passwd` in `/usr/bin` folder. Binary files cannot show their content. only one file had a match.

```bash
raya@raya-VirtualBox:/usr/bin$ grep -r passwd /usr/bin
Binary file /usr/bin/ubuntu-report matches
/usr/bin/migrate-pubring-from-classic-gpg:GHD=${GNUPGHOME:-${HOME:-$(getent passwd "$(id -u)" | cut -f6 -d:)}/.gnupg}
```

## Show only file name

> -l

- Create 3 files of `c` extention. In two of then "Hello world", and in one of them: "hello world".

```bash
raya@raya-VirtualBox:~/Desktop/Lesson05/c$ cat file01.c
#include <stdio.h>
void main(){
	printf("Hello world");
}
```

- Search for some patterns:

```bash
raya@raya-VirtualBox:~/Desktop/Lesson05/c$ grep Hello file01.c
	printf("Hello world");
raya@raya-VirtualBox:~/Desktop/Lesson05/c$ grep "Hello world" file01.c
	printf("Hello world");
```

- `*.c` - search for each file that ends with `.c`.

```bash
raya@raya-VirtualBox:~/Desktop/Lesson05/c$ grep "Hello world" *.c
file01.c:	printf("Hello world");
file03.c:	printf("Hello world");
```

- `-l` - returns only the file name.

```bash
raya@raya-VirtualBox:~/Desktop/Lesson05/c$ grep -l "Hello world" *.c
file01.c
file03.c
raya@raya-VirtualBox:~/Desktop/Lesson05/c$ grep -l "hello world" *.c
file02.c
```

- Search recursively in the folder `c` and all the subfolders.

```bash
raya@raya-VirtualBox:~/Desktop/Lesson05/c$ grep -rl "Hello world"
secondC/secondDir.c
file01.c
file03.c
```

## Case insensitive search

> -i

- Search for "Hello world" both for uppercase and lowecase in file `file02.c`

```bash
raya@raya-VirtualBox:~/Desktop/Lesson05/c$ grep -i "Hello world" file02.c
	printf("hello world");
```

## Search for full words

> -w (word)

- Select the pattern only when it is not inside another word.

```bash
raya@raya-VirtualBox:~/Desktop/Lesson05$ cat a.txt
ubuntu
Ubuntu
Linuxubuntu
GNUubuntulinux
ubu
linux
raya@raya-VirtualBox:~/Desktop/Lesson05$ grep ubuntu a.txt
ubuntu
Linuxubuntu
GNUubuntulinux
raya@raya-VirtualBox:~/Desktop/Lesson05$ grep -w ubuntu a.txt
ubuntu
```

## Show line numbers

> -n (number)

- Select all the lines that math the pattern `ubuntu`, and show the line numbers.

```bash
raya@raya-VirtualBox:~/Desktop/Lesson05$ cat a.txt
ubuntu
Ubuntu
Linuxubuntu
GNUubuntulinux
ubu
linux

raya@raya-VirtualBox:~/Desktop/Lesson05$ grep -n ubuntu a.txt
1:ubuntu
3:Linuxubuntu
4:GNUubuntulinux
```
## Count matches
> -c --count 

* Select the amount of matches `ubuntu` has in `a.txt`
```bash
raya@raya-VirtualBox:~/Desktop/Lesson05$ grep -c ubuntu a.txt 
3
```


## Regular expression

Regular expressions are special characters which help search data, matching complex patterns.
Regular expressions are shortened as `regexp` or `regex`

> Note: we can use `grep -E` instead of `egrep`

### Basic Regular expressions

1. `^` - match start of a string

```bash
raya@raya-VirtualBox:~/Desktop/Lesson05$ cat a.txt | egrep ^u
ubuntu
ubu
```

2. `$` - match end of a string

```bash
raya@raya-VirtualBox:~/Desktop/Lesson05$ cat a.txt | egrep u$
Ubuntu
Linuxubuntu
ubu
```

3. `*` - match up zero or more times the preciding character.

```bash
raya@raya-VirtualBox:~/Desktop/Lesson05/c$ grep "Hello world" *.c
file01.c:	printf("Hello world");
file03.c:	printf("Hello world");
```

4. `.` - replace any character

```bash
raya@raya-VirtualBox:~/Desktop/Lesson05$ cat a.txt | egrep "l.n"
GNUubuntulinux
linux
lanox
```
___
# Lesson 06
___

## Echo - הד

**echo - display a line of text**

```bash
echo [OPTION]... [STRING]...
```

```bash
raya@raya-VirtualBox:~$ echo hello students
hello students
raya@raya-VirtualBox:~$ echo "hello students"
hello students
raya@raya-VirtualBox:~$ echo some text #this is a comment
some text
```

- Create `.sh` file, and run it in the terminal:

```bash
echo "Hello students # a comment"
echo 'Hello students # a comment'
echo Hello stundets # a comment
echo Hello students \# a comment


# Result:
# -------------------------
# Hello students # a comment
# Hello students # a comment
# Hello stundets
# Hello students # a comment
```

### echo -n

> -n do not output the trailing newline

```bash
raya@raya-VirtualBox:~$ echo "Hello"
Hello
raya@raya-VirtualBox:~$ echo -n 'Hello'
Helloraya@raya-VirtualBox:~$
```

### echo -e

> -e enable interpretation of backslash escapes

```bash
raya@raya-VirtualBox:~$ echo "This is a \tnice day"
This is a \tnice day
raya@raya-VirtualBox:~$ echo -e "This is a \tnice day"
This is a 	nice day
raya@raya-VirtualBox:~$ echo "This is a \nbeautiful day"
This is a \nbeautiful day
raya@raya-VirtualBox:~$ echo -e "This is a \nbeautiful day"
This is a
beautiful day
```

### Exit code: `$?`

show the exit code of the last command. If last command was successful - it will be 0.

```bash
raya@raya-VirtualBox:~/Desktop/Lesson06$ dfkljs
dfkljs: command not found
raya@raya-VirtualBox:~/Desktop/Lesson06$ echo $?
127
raya@raya-VirtualBox:~/Desktop/Lesson06$ echo hello
hello
raya@raya-VirtualBox:~/Desktop/Lesson06$ echo $?
0
```

### Path

```bash
raya@raya-VirtualBox:~/Desktop/Lesson06$ echo $PATH
/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/games:/usr/local/games:/snap/bin
```

### echo as ls
echo can be used as `ls` command:
```bash
raya@raya-VirtualBox:~$ ls
Desktop    Downloads         Music     Public     Videos
Documents  examples.desktop  Pictures  Templates
raya@raya-VirtualBox:~$ echo *
Desktop Documents Downloads examples.desktop Music Pictures Public Templates Videos
raya@raya-VirtualBox:~$ echo D*s
Documents Downloads
```

## Basic characters


### Variables

We can create variables in the terminal.
Access the data inside a variable: `$var_name`

```bash
raya@raya-VirtualBox:~/Desktop/Lesson06$ a=5
raya@raya-VirtualBox:~/Desktop/Lesson06$ echo a
a
raya@raya-VirtualBox:~/Desktop/Lesson06$ echo $a
5
```

- Variables can be off any type: string, number, etc...

```bash
raya@raya-VirtualBox:~/Desktop/Lesson06$ name="Bob"
raya@raya-VirtualBox:~/Desktop/Lesson06$ lastName="Levi"
raya@raya-VirtualBox:~/Desktop/Lesson06$ echo name lastName
name lastName
raya@raya-VirtualBox:~/Desktop/Lesson06$ echo $name $lastName
Bob Levi
```

## Arithmetic operations in bash

### First way: `[ ]`

```bash
#! /bin/bash

echo Enter num1
read n1 = 5

echo Enter num2
read n2 = 7

echo "The numbers are:"
echo n1 = $n1
echo n2 = $n2

# Arithmetic first way:
echo 'n1 + n2 =' $[$n1+$n2]
echo 'n1 - n2 =' $[$n1-$n2]
echo 'n1 * n2 =' $[$n1*$n2]
echo 'n1 / n2 =' $[$n1/$n2]
echo 'n1 % n2 =' $[$n1%$n2]
```

- Result:

```bash
Enter num1
5
Enter num2
7
The numbers are:
n1 = 5
n2 = 7
n1 + n2 = 12
n1 - n2 = -2
n1 * n2 = 35
n1 / n2 = 0
n1 % n2 = 5
```

### Second way: `(( ))`

```bash
#! /bin/bash

echo Enter num1
read n1

echo Enter num2
read n2

echo "The numbers are:"
echo n1 = $n1
echo n2 = $n2


echo -e "\nArithmetic operations:"
# Arithmetic second way:
echo 'n1 + n2 =' $(($n1+$n2))
echo 'n1 - n2 =' $(($n1-$n2))
echo 'n1 * n2 =' $(($n1*$n2))
echo 'n1 / n2 =' $(($n1/$n2))
echo 'n1 % n2 =' $(($n1%$n2))

```

- Boolean expressions:

```bash
#! /bin/bash

echo Enter num1
read n1

echo Enter num2
read n2

echo "The numbers are:"
echo n1 = $n1
echo n2 = $n2

echo -e "\nBoolean operations:"

echo 'n1==n2: ' $(($n1==$n2))
echo 'n1!=n2: ' $(($n1!=$n2))
echo 'n1>=n2: ' $(($n1>=$n2))
echo 'n1>n2: '  $(($n1>$n2))
echo 'n1<=n2: ' $(($n1<=$n2))
echo 'n1<n2: '  $(($n1<$n2))
```

### third way: `expr`

> expr (1) - evaluate expressions

```bash
#! /bin/bash

echo Enter num1
read n1

echo Enter num2
read n2

echo "The numbers are:"
echo n1 = $n1
echo n2 = $n2

echo -e "\nexpr operations:"

echo 'n1 + n2 = ' $(expr $n1 + $n2)
echo 'n1 - n2 = ' $(expr $n1 - $n2)
echo 'n1 * n2 = ' $(expr $n1 \* $n2)
echo 'n1 / n2 = ' $(expr $n1 / $n2)
echo 'n1 % n2 = ' $(expr $n1 % $n2)

```
* Boolean expressions with `expr`:
```bash
#! /bin/bash

echo Enter num1
read n1

echo Enter num2
read n2

echo "The numbers are:"
echo n1 = $n1
echo n2 = $n2

echo -e "\nBoolean operations:"

echo 'n1==n2: ' $(expr $n1 = $n2)
echo 'n1!=n2: ' $(expr $n1 != $n2)
echo 'n1>=n2: ' $(expr $n1 \>= $n2)
echo 'n1>n2 : '  $(expr $n1 \> $n2)
echo 'n1<=n2: ' $(expr $n1 \<= $n2)
echo 'n1<n2 : '  $(expr $n1 \< $n2)
```

## Inc & Dec
 
## Increment value

#### Post increment:

Post increment will change the value of the variable only after the line finished executing.

```
x = 1
print(x++) # 1
print(x)   # 2
```

#### Pre increment:

Pre increment will change the value of the variable, and after that, will execute the entire line.

```
x = 1
print(++x) # 2
print(x)   # 2
```

- Example in bash:

```bash
#! /bin/bash

num=1

echo $num 	# 1

num=$(expr $num + 1)
echo $num 	# 2

echo '------- post increment----------'
((num++))
echo $num 	# 3

echo $((num++)) # 3
echo $num 	# 4

echo $[num++]   # 4
echo $num	# 5

echo '------- pre increment-----------'
num=2
((++num))
echo $num 	# 3

echo $((++num)) # 4
echo $num	# 4

echo $[++num]   # 5
echo $num	# 5

```

## Decrement value

#### Post decrement:

Post decrement will change the value of the variable only after the line finished executing.

```
x = 5
print(x--) # 5
print(x)   # 4
```

#### Pre decrement:

Pre increment will change the value of the variable, and after that, will execute the entire line.

```
x = 5
print(--x) # 4
print(x)   # 4
```

- Example in bash:

```bash
#! /bin/bash

num=10

echo $num 	# 10

echo '------- expr: ----------'

num=$(expr $num - 1)
echo $num 	# 9

echo '------- post decrement----------'
((num--))
echo $num 	# 8

echo $((num--)) # 8
echo $num 	# 7

echo $[num--]   # 7
echo $num	# 6

echo '------- pre decrement-----------'
num=8
((--num))
echo $num 	# 7

echo $((--num)) # 6
echo $num	# 6

echo $[--num]   # 5
echo $num	# 5
```

## Bash - "Bourne Again Shell"

- Developed for GNU project.
- Bash is compatible with **Bourne Shell** - is the original standard for UNIX shell.
- Shell scripts are interpeted - line by line.
- Security: in linux, bash / shell files don't have execution permissions by default.

* If we want to execute file directly - use `chmod` command:

```bash
chmod +x file_name.sh
# or
chmod 777 file_name.sh
```

- run the executable file:

```bash
./file_name.sh
```


___
# Lesson 07
___

## File or directory:

#### `-f` = file, `-d` = directory, `-e` = file or directory

- Syntax:

```bash
if [[ -f <file> ]]
then
	echo "<file> exists as a file!"
fi
```

- Check if "/etc/passwd" exists, and a file:

```bash
#! /bin/bash

if [[ -f "/etc/passwd" ]] # return boolean value
then
	echo "/etc/passwd - exists as a file!"
fi

```

- Short check:

```bash
#! /bin/bash

[[ -f "/etc/passwd" ]] && echo "/etc/passwd - exists as a file!"

[ -f "/etc/passwd" ]   && echo "/etc/passwd - exists as a file!"

```

- Check multiple files:

```bash
#! /bin/bash

File1="check1.txt"
File2="check2.txt"

if [ -f $File1 ] && [ -f $File2 ]
then
	echo "Both exists and are files"
fi
```

- Check with `not` gate = !

```bash
#! /bin/bash


# Check multiple files:

File1="check1.txt"
File2="check2.txt"

if [ ! -f $File1 ] && [ ! -f $File2 ]
then
	echo "Both do not exist!"
fi


[ ! -f $File1 ] && echo "file does not exists"
```

- Check for directories

```bash
#! /bin/bash

# Check if a file exists, and a directory:

D1="/etc"

if [ -d $D1 ]
then
	echo "$D1 exists and a directory"
fi


D2="/home"
[ -d $D2 ] && echo "$D2 exists and a directory"
```

- `-e` - check if file or folder exists:

```bash
#! /bin/bash

File="/home"

if [ -e $File ]
then
	echo "Exists! can be both file and dir."
fi
```

## If statement

If statement gives a condition - that returns only boolean value - true / false.

### Numbers:

- `-gt` - greater than
- `-ge` - greater equal
- `-lt` - less than
- `-le` - less equal
- `-ne` - not equal
- `-eq` - equal

```bash
#! /bin/bash

Num1=10

if [ $Num1 -ge 10 ]
then
	echo "Num1: $Num1 is greater than 10"
fi
```

### Strings

- `=` - equal
- `!=` - not equal
- `>` - greater than
- `<` - smaller than

```bash
#! /bin/bash


if [ "Hello world" = "hello world" ]
then
	echo "Hello world" = "Hello world"
fi

```
## While

- loop over counter 4 times, and increment the conuter in 1 each round, using `expr` - to convert the conuter to a number:

```bash
#! /bin/bash

counter=0

while [ "$counter" -lt 4 ] # <
do
	echo "Round number: $counter"
	counter=`expr $counter + 1`
done

echo "Finished while loop: counter =  $counter"

# Round number: 0
# Round number: 1
# Round number: 2
# Round number: 3
# Finished while loop: counter =  4
```

## Compare strings

- `=` - equal (use with test command [ ] )
- `==` - equal (use with pattern matching command [[ ]] )
- `!=` - not equal
- `>` - greater than
- `<` - smaller than

```bash
#! /bin/bash

str1="Hello"
str2="Hello user"

if [ "$str1" = "$str2" ]; then
	echo "Equal"
else
	echo "Not equal"
fi
```

```bash
#! /bin/bash

read -p "Enter first string: " str1
read -p "Enter second string: " str2

if [[ "$str1" == "$str2" ]]; then
	echo "Equal"
else
	echo "Not equal"
fi
```

- This code will be short check to compare two strings:

```bash
#! /bin/bash

read -p "Enter first string: " str1
read -p "Enter second string: " str2

# Shorter if:
[[ $str1 == $str2 ]] && echo "Equal" || echo "Not equal"

# true && true  -> true.
# false && true -> false
# false || true -> true
```

## Class task

### 1. Median number:

- Get three variables from the user, and find the median amoung the 3.
  example: 1,5,8: we get 5

```bash
#! /bin/bash

read -p "enter num1 : " num1 # num1 = 5
read -p "enter num2 : " num2 # num2 = 7
read -p "enter num3 : " num3 # num3 = 3

echo "$num1, $num2, $num3"

if [ $num1 -gt $num2 ] && [ $num1 -lt $num3] && echo $num1

if [ $num2 -gt $num1 ] && [ $num2 -lt $num3] && echo $num2

if [ $num3 -gt $num1 ] && [ $num3 -lt $num2] && echo $num3





# get num1 if it is the middle number:
if [ $num1 -gt $num2 ] && [ $num1 -lt $num3 ]
then
	echo "Num1 = $num1 is the middle number"
fi

if [ $num1 -gt $num3 ] && [ $num1 -lt $num2 ]
then
	echo "Num1 = $num1 is the middle number"
fi
```

### 2. Biggest number:

- Get three variables from the user, and find the biggest amoung the 3.
  example: 1,5,8: we get 8.

```bash
#! /bin/bash

echo "Enter num1:"
read num1

echo "Enter num2:"
read num2

echo "Enter num3:"
read num3

echo "$num1, $num2, $num3"

# num1 = 10, num2 = 7, num3 = 3

# get num1 if max:
if [ $num1 -gt $num2 ] && [ $num1 -gt $num3 ]
then
	echo "Num1 = $num1 is max"
fi
```

___
# Lesson 08
___

## seq - sequence

seq - print a sequence of numbers

- Use 1 number: `[end]` returns all the nubmers from 1 - the number.

* default start number: `1`

```bash
raya@raya-VirtualBox:~$ seq 3
1
2
3
```

- Use 2 numbers: `[start] [end]` returns all the numbers from num1 to num2 (including both).

```bash
raya@raya-VirtualBox:~$ seq 2 5
2
3
4
5

```

- Use 3 numbers: `[start] [range] [end]`. returns all the numbers from start number to end number - in range of the middle number.

```bash
raya@raya-VirtualBox:~$ seq 0 5 50
0
5
10
15
20
25
30
35
40
45
50
```

- `seq -s` - allows to determine which separator will be between the values.

```bash
raya@raya-VirtualBox:~$ seq -s " " 10
1 2 3 4 5 6 7 8 9 10
raya@raya-VirtualBox:~$ seq -s ", " 10
1, 2, 3, 4, 5, 6, 7, 8, 9, 10
```

- `seq -w` - adds padding to the numbers with 0 prefix.

```bash
raya@raya-VirtualBox:~$ seq -w 5 10
05
06
07
08
09
10
```

## For loop

## Arrays - מערכים

array is a list of many items:
shoppingList = bottle, wine, juice, milk

shoppingList = [bottle, wine, juice, milk]
shoppingList[0] = bottle
shoppingList[1] = wine

Memory: the arrays are stored in the heap, and the address of the first element is stored in the stack.

## Syntax:

```bash
for arg in [list]
do
    commands...
done
```

## Examples:

## 1. Print a list of 5 lessons with their number in for-in loop:

```bash
#! /bin/bash

# for-in: goes on value:

i=1

for Lesson in Linux Cyber HTML JavaScript MySql
do
	echo "Lesson $i : $Lesson"
	((i++))
done
```

res:

```bash
raya@raya-VirtualBox:~/Desktop/Lesson8$ ./a.bash
Lesson 1 : Linux
Lesson 2 : Cyber
Lesson 3 : HTML
Lesson 4 : JavaScript
Lesson 5 : MySql
```

## 2. Multiple ways to count up to 10:

```bash
#! /bin/bash

# for-in: goes on value:
## ---------- standard syntax ---------------

echo

for num in 1 2 3 4 5 6 7 8 9 10
do
	echo -n " $num"
done

echo
echo

## ---------- count with seq ---------------

echo

for num in `seq 10`
do
	echo -n " $num"
done

echo
echo

## ---------- count with brace expansion ---------------

echo

for num in {1..10}
do
	echo -n " $num"
done

echo
echo

## ---------- C-like syntax ---------------

LIMIT=10

for ((a=1; a <= LIMIT ; a++))
do
	echo -n $a
done

echo
```

- res:

```bash
raya@raya-VirtualBox:~/Desktop/Lesson8$ ./a.bash

 1 2 3 4 5 6 7 8 9 10

```

- Use two values in for-loop:

```bash
#! /bin/bash

## ---------- C-like syntax ---------------

LIMIT=10

for ((a=1, b=1; a <= LIMIT ; a++, b++))
do
	echo -n " $a-$b "
done

echo

# Output:
# 1-1  2-2  3-3  4-4  5-5  6-6  7-7  8-8  9-9  10-10
```

- Print power of numbers from 1 to 10:

```bash
#! /bin/bash

## ---------- C-like syntax ---------------

LIMIT=10

for ((a=1; a <= LIMIT ; a++))
do
	echo -n $(($a*$a)) " "
done

echo

# Output:
# 1  4  9  16  25  36  49  64  81  100
```

## For loop with files:

```bash
#! /bin/bash

i=1

for distro in `cat LinuxDistros.txt`
do
	echo "$i : $distro"
	((i++))
done

echo
```

- res:

```bash
raya@raya-VirtualBox:~/Desktop/Lesson8$ ./a.bash
1 : Ubuntu
2 : Kali
3 : Tails
4 : Parrot
5 : Mint
6 : ElementaryOS


```

## Check for files or directories:

```bash
#! /bin/bash
## ---------- for loop with files ---------------

FILES="
/usr/sbin/accept
/usr/sbin/rmt
/usr/sbin
/usr/sbin
/home/raya/Desktop/Lesson8/LinuxDistros.txt
"
for file in $FILES
do
	if [ -f $file ]
	then
	echo "file: $file"; echo
	# elif - else if
	elif [ -d $file ]
	then
	echo "dir : $file"; echo
	fi
done

exit 0

# echo $?
```

## Check a folder - to see which files in it are files or folders:

```bash
#! /bin/bash

for file in /home/raya/Desktop/Lesson8/*
do
	if [ -f $file ]
	then
	echo "file: $file"; echo
	# elif - else if
	elif [ -d $file ]
	then
	echo "dir : $file"; echo
	fi
done

exit 0

# echo $?

```

## Pyramid:

```bash
#! /bin/bash

# nested for loop:

# *
# * *
# * * *
# * * * *
# * * * * *
# * * * * * *
# * * * * * * *
# * * * * * * * *

LIMIT=8 # constant number

for ((row=1; row<=LIMIT; row++))
do
	for ((col=1; col<=row; col++))
	do
		echo -n "* "
	done
	echo
done
```

## While

### Basic while

- loop over counter 4 times, and increment the conuter in 1 each round, using `expr` - to convert the conuter to a number:

```bash
#! /bin/bash

counter=0

while [ "$counter" -lt 4 ]
do
	echo "Round number: $counter"
	counter=`expr $counter + 1`
done

echo "Finished while loop: counter =  $counter"

# Round number: 0
# Round number: 1
# Round number: 2
# Round number: 3
# Finished while loop: counter =  4
```

### Multiplication table (for a given number):

```bash
#! /bin/bash

read -p "Enter a number: " number

i=0

while [ $i -le 10 ] #10
do
	echo "$number * $i =  " $((number*i))
	((i++))
done
```

- res

```
raya@raya-VirtualBox:~/Desktop/Lesson8$ ./a.bash
Enter a number: 3
3 * 0 =   0
3 * 1 =   3
3 * 2 =   6
3 * 3 =   9
3 * 4 =   12
3 * 5 =   15
3 * 6 =   18
3 * 7 =   21
3 * 8 =   24
3 * 9 =   27
3 * 10 =   30
```

### run while loop with command:

```bash
#! /bin/bash

# can be installed: sudo apt-get install xterm

i=0

while [ $i -lt 3 ]
do
	xterm & ((i++))
done

# Open 3 x terminals.


i=0

while [ $i -lt 3 ]
do
	touch $i.txt & ((i++))
done

# Result:
# 0.txt  1.txt  2.txt
```

### User writes many words, end to exit:

```bash
#! /bin/bash



while [ "$var" != "end" ]
do
	echo "Write something (end to exit) "
	read var
	echo "variable: $var"
	echo
done

exit 0
```

- res

```bash
raya@raya-VirtualBox:~/Desktop/Lesson8$ ./a.bash
Write something (end to exit)
banana
variable: banana

Write something (end to exit)
computer
variable: computer

Write something (end to exit)
end
variable: end

```

### Program to create endless images(until we stop the execution):

```bash
#! /bin/bash

# %s - seconds since 1970-01-01 00:00:00 UTC


while true # infinity - endless loop
do
	touch image-`date +%s`.jpg
	sleep 3
done

exit 0
```

- res:

```
raya@raya-VirtualBox:~/Desktop/Lesson8$ ls
a.bash                image-1590578328.jpg  image-1590578343.jpg
image-1590578316.jpg  image-1590578331.jpg  image-1590578346.jpg
image-1590578319.jpg  image-1590578334.jpg  image-1590578349.jpg
image-1590578322.jpg  image-1590578337.jpg
image-1590578325.jpg  image-1590578340.jpg

```

___
# Lesson 09
___

## until loop

**Until** loop is the oppsite of **while** loop.
As long as the condition is false - the loop will continue running.

### Syntax

```bash
until [ condition ]
do
    # commands to execute
done
```

#### Example:

```bash
#! /bin/bash

read -p "Enter a number: " num

i=0

until [ $i -eq 11 ]
do
	echo "$num * $i = $((num*i))"
	i=$((i+1))
done

echo "i = $i"

```

- output

```bash
raya@raya-VirtualBox:~/Desktop/Lesson09$ ./a.bash
Enter a number: 4
4 * 0 = 0
4 * 1 = 4
4 * 2 = 8
4 * 3 = 12
4 * 4 = 16
4 * 5 = 20
4 * 6 = 24
4 * 7 = 28
4 * 8 = 32
4 * 9 = 36
4 * 10 = 40
i = 11
```

## Exercises

### Program to swap two numbers:

```bash
#! /bin/bash

# swapping of two numbers:

read -p "Enter num1: " num1
read -p "Enter num2: " num2

echo "Before swap: num1: $num1, num2: $num2"

# num1 = 5, num2 = 7

temp=$num1	# num1 = 5, num2 = 7, temp = 5
num1=$num2	# num1 = 7, num2 = 7, temp = 5
num2=$temp      # num1 = 7, num2 = 5, temp = 5

echo "After  swap: num1: $num1, num2: $num2"

```

- output:

```bash
raya@raya-VirtualBox:~/Desktop/Lesson09$ ./a.bash
Enter num1: 5
Enter num2: 7
Before swap: num1: 5, num2: 7
After swap: num1: 7, num2: 5
```

### Palindrome

```bash
#! /bin/bash

# Palindrome - 12321, 1221

num=12345
remainder=0
revNum=""

temp=$num # here: num=373, temp=373

while [ $num -gt 0 ]
do
	remainder=$(( $num % 10 ))
	num=$(( $num / 10 ))
	revNum=$( echo ${revNum}${remainder} )
done

if [ $temp -eq $revNum ]
then
	echo "Number is palindrome!"
else
	echo "Number is not palindrome!"
fi
```

## Fibonacci series:

<img height=400 src="https://i.pinimg.com/originals/98/82/d5/9882d569f7e0b5665fe3b2edd5069b06.png"/>

```bash
#! /bin/bash

# Fibonacci series -
# * the two first numbers are always 1.
# * ask from the user the limit digits to print.
# * use a for loop (optional)

# 1 1 2 3 5 8 13

LIMIT=10

a=0
b=1

echo "Fibonacci series: "

for (( i=0; i<LIMIT; i++ ))
do
	fib=$((a+b))
	a=$b
	b=$fib
	echo -n "$a "
done
echo

```

- output:

```bash
raya@raya-VirtualBox:~/Desktop/Lesson09$ ./a.bash
Fibonacci series:
1 1 2 3 5 8 13 21 34 55
```

- Repeat password:

```bash
#! /bin/bash

# enter a password twice, and check if equal.

read -p "Enter your password:    " pass1
read -p "Repeat password:    " pass2

echo

if [ $pass1 == $pass2 ]
then
	echo "Success!"
else
	echo "Fail!"
fi
```

- Output:

```bash
raya@raya-VirtualBox:~/Desktop/Lesson09$ ./a.bash
Enter your password:    1234
Repeat password:    1234

Success!
```

## string length

```bash
#! /bin/bash

# string length:

str="This is a linux course"

len=${#str}

echo "str: $str, len: $len"
```

- Use `expr`:

```bash
#! /bin/bash

str="This is a linux course"

len=`expr length "$str"`

echo "str: $str, len: $len"
```

## Functions in bash

why use functions?

- Avoid code repetition.

### Syntax

```bash
function func_name{

}

# or:
func_name(){

}
```

## Examples:

```bash
#! /bin/bash

func(){
	echo
	echo "This is my first func()"
	echo
}

func
```

#### Call function before declaration:

```bash
#! /bin/bash


func1(){
	echo "I am func1"
	func2
}

func1 #- error!

func2(){
	echo "I am func2"
}

func1

```

- Output:

```bash
raya@raya-VirtualBox:~/Desktop/Lesson09$ ./a.bash
I am func1
./a.bash: line 6: func2: command not found
I am func1
I am func2
```

#### Function parameters:

```bash
#! /bin/bash


func1(){
	echo "I am func1"
	echo "My variables: $1"
}

func1 123

# -------------------------------

func2(){
	echo "I am func2"
	echo "Person: $2 is $1 years old"
}

AGE=40
NAME="Bob"

func2 $AGE $NAME
```

- Output:

```bash
raya@raya-VirtualBox:~/Desktop/Lesson09$ ./a.bash
I am func1
My variables: 123

I am func2
Person: Bob is 40 years old
```

#### empty functions

```bash
#! /bin/bash

# empty functions - functions cannot be empty

empty(){}

# ./a.bash: line 5: syntax error near unexpected token `{}'
# ./a.bash: line 5: `empty(){}'

```

- a function with only comments is empty

```bash
#! /bin/bash

# empty functions - functions cannot be empty

empty()
{
	# comment1
	# comment2
	# comment3
}

```

- Use **:** as Null value:

```bash
#! /bin/bash

# empty functions - functions cannot be empty

hasNull()
{
	: # null command
}

hasNull
```

- call nested functions:

```bash
#! /bin/bash

# empty functions - functions cannot be empty

n1()
{
	n2()
	{
		echo "I am n2"
	}
}

# n1 is defined globally. known to all the page.
# n2 is defined locally. known only inside n1()

# n2 - error message.

n1 # empty function.
n2 # I am n2
```

___
# Lesson 10
___

## Shuf

> shuf - generate random permutations

- Basic random with `a.txt` file:

```bash
raya@raya-VirtualBox:~/Desktop/Lesson10$ cat > a.txt
Hello
Students
Byte
Bye
Linux
OS
raya@raya-VirtualBox:~/Desktop/Lesson10$ shuf a.txt
Bye
Students
OS
Byte
Linux
Hello
```

### shuf -n

> -n, --head-count=COUNT
> output at most COUNT lines

- select three lines randomally from a file:

```bash
raya@raya-VirtualBox:~/Desktop/Lesson10$ shuf -n 3  a.txt
OS
Byte
Students
raya@raya-VirtualBox:~/Desktop/Lesson10$ shuf -n 3  a.txt
Bye
Students
Hello
```

- select one line randomally from a file:

```bash
raya@raya-VirtualBox:~/Desktop/Lesson10$ shuf -n 1  a.txt
Bye
raya@raya-VirtualBox:~/Desktop/Lesson10$ shuf -n 1  a.txt
Linux
raya@raya-VirtualBox:~/Desktop/Lesson10$ shuf -n 1  a.txt
Students

```

### shuf -e

> -e, --echo
> treat each ARG as an input line

- `shuf -e` gets parameters and use the random on them.

```bash
raya@raya-VirtualBox:~/Desktop/Lesson10$ shuf -e A B C D
B
D
C
A
raya@raya-VirtualBox:~/Desktop/Lesson10$ shuf -e A B C D
D
A
C
B
```

- Use both `shuf -n` and `shuf -e`: insert parameters with the command, and show only one random item from them each time.

```bash
raya@raya-VirtualBox:~/Desktop/Lesson10$ shuf -e one two three -n 1
one
raya@raya-VirtualBox:~/Desktop/Lesson10$ shuf -e one two three -n 1
two
raya@raya-VirtualBox:~/Desktop/Lesson10$ shuf -e one two three -n 1
two
```

## Rock Paper scissors - אבן נייר ומספריים

Create the game:

1. Ask the user how many rounds he wants to play.
2. Validate the input from the user. (must be above 0, and a number).

3. Let the computer to select a random choice: `Rock Paper scissors`
4. Ask the user to select the choice: `Rock Paper scissors`. (input).
5. Check for winning (computer or person).
6. if both comupter and person entered the same choice - its an equal point.

7. In the end of the game: show the winner.

___
# Lesson 11
___

___
# Lesson 12
___

## I/O redirection

<img height=300 src="Untitled.png"/>

Every program has 3 types that are connected to it:

1. **STDIN(0)** - standard input.
2. **STDOUT(1)** - standard output.
3. **STDERR(2)** - standard error.

- Redirect **STDOUT(1)** to a file:

```bash
raya@raya-VirtualBox:~/Desktop/Lesson10$ ls
a.txt  try.bash
raya@raya-VirtualBox:~/Desktop/Lesson10$ ls > MyOutput
raya@raya-VirtualBox:~/Desktop/Lesson10$ echo "Hello user!" > SecOutput
```

- Append the **STDOUT(1)** to the file. (if exists).

```bash
ls >> SecOutput
```

1. `command 1>filename` - redirect the **STDOUT(1)** to the file.

2. `command 1>>filename` - redirect the **STDOUT(1)** to the file, and append to the end of the file.

3. `command-error 1>filename` - that will print the error to the terminal.

4. `command-error 2>filename` - redirects the **STDERR(2)** to filename.

5. `command-error 2>>filename` - redirects the **STDERR(2)** to filename, and append to the end of the file.

6. `jgdlsgk &>file` - redirect both **STDOUT(1)** and **STDERR(2)** to file. 

___