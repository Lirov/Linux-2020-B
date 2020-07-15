 - # commands

## Lesson 02

##### PWD - current working directory
##### Man - manual reference about commands 
##### whatis - one line explanation about a command
##### Clear - clears screen
##### Top - task manager
##### df -h - shows directory & folders usage stats
##### LS - shows current folder content 

`ls -a` - shows all content include hidden files .
`ls -l` - shows all data about files (like permissions)
`ls -la` - shows both permissions and all files

##### cd - change directory
##### sudo apt update - superUser do - package update/upgrade
##### tree - an add-on that shows you in a visual presentation the directory tree

## Lesson 03

##### Mkdir - make directory
##### Touch  - updating time stamp (will create file if not existed) 
##### Rmdir - remove directory (cannot remove directory with files)
##### Rm - remove file 
`Rm -r` - removing all directory (even empty) and files
##### Mv - renaming files



##### Chmod - change mode (permissions)

<div style="text-align:center">

|file/folder| User |Group|Other|
|-----------|------|-----|-----|
|   (D/F)   |7 |6|4|
| | read-write-execute|read-write|read|

|number|permission|
|------|----------|
0|none|
1|execute|
2|write|
3|execute+write|
4|read|
5|execute+read|
6|write+read|
7|execute+write+read|
</div>

## Lesson 04

##### whoami - what current user am i?
##### useradd - add a new user
##### passwd - change user password

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

##### sudo useradd -u 555 paul - add and define user id
```

* in `/etc/passwd` we can see that the `UID` is 555 
```bash
paul:x:555:1003::/home/paul:/bin/sh
```
##### Userdel - delete a user
##### Cat - concatenate files (shows what's in the file) From end to beginning.
`cat > b.txt` ">" - create a file and override previous data
`cat -n b.txt` - numbering lines
`cat a.txt b.txt` - will show both files
`cat >> b.txt`  ">>" - will concatenate data to the end of the file
##### Nano - text editor
`--version` - nano's version

## Lesson 05

##### Less - Show large files in nice window. (From beginning to end)
`Less -n` - format display with number lines
` less +(number)` - display from a specific line number
##### PIPE - `|` - redirect output from first command to the second
##### wc - word counter
`wc -l` - lines
`wc -w` - words
`wc -c` - characters include SPACE
##### Grep - find
`grep L a.txt` - look for words that include the letter "L"
`grep "Speech Dispatcher" /etc/passwd` - look for a specific string in a specific directory (more than one word)
`grep -v User a.txt` - invert match - find anything except 
`ps awx | grep update` - find update in other command outputs
`grep -r [Pattern][name_of_folder]` - find pattern in directories
`grep -l [*.c]` - output file name (all .C files)
`grep -rl "Hello world" secondC/secondDir` - find specific string in all directories and output file name
`grep -i "Hello world" file02.c` - Case insensitive search
`grep -nwc ubuntu a.txt` - shows line number, only the specific word and count number of matches

## Regular expression
`grep -E`
1. `^` - match start of a string
2. `$` - match end of a string
3. `*` - match up zero or more times the preceding character.
4. `.` - replace any character

Lesson 6

##### Echo
`echo -n` - do not output in a new line
`echo -e` - enable interpretation of backslash escapes (\n ,\t)
`echo $?` - shows exit code of last command (successful command return code 0 )
`echo $PATH` 
```bash
/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/games:/usr/local/games:/snap/bin
```

`echo *` - returns file/folder names in a given directory 
`echo D*s` - return all files/folders that starts with "D" and ends with "s"

### Variable
`$var_name` = 
echo $var_name - 5

##### read - scanf
`read -p "printf()" num1` - read and print

## Arithmetic operations in bash
`$` - declaration of a Variabl
 First way: `$[ ]`
```bash
echo 'n1 * n2 =' $[$n1*$n2]
echo 'n1 / n2 =' $[$n1/$n2]
echo 'n1 % n2 =' $[$n1%$n2]
```

 Second way: `$(( ))`

```bash
echo 'n1 * n2 =' $(($n1*$n2))
echo 'n1 / n2 =' $(($n1/$n2))
echo 'n1 % n2 =' $(($n1%$n2))
```
 third way: `$(expr )`

 ```bash
echo 'n1 + n2 = ' $(expr $n1 + $n2)
echo 'n1 - n2 = ' $(expr $n1 - $n2)
echo 'n1 * n2 = ' $(expr $n1 \* $n2) # canceling the regex "all" sign
echo 'n1 / n2 = ' $(expr $n1 / $n2)
echo 'n1 % n2 = ' $(expr $n1 % $n2)

# Boolean expressions with `expr`:

echo 'n1==n2: ' $(expr $n1 = $n2)
echo 'n1!=n2: ' $(expr $n1 != $n2)
echo 'n1>=n2: ' $(expr $n1 \>= $n2) # canceling the regex "angle brackets" sign
echo 'n1>n2 : '  $(expr $n1 \> $n2) # canceling the regex "angle brackets" sign
echo 'n1<=n2: ' $(expr $n1 \<= $n2) # canceling the regex "angle brackets" sign
echo 'n1<n2 : '  $(expr $n1 \< $n2) # canceling the regex "angle brackets" sign

```

##### Inc & Dec (++) && (--)
```bash
num=1
echo $num # 1

num=$(expr $num + 1) # 1+1
echo $num # 2

((num++)) 
echo $num # 3

echo $((num++)) #3
echo $num  #4

echo $[num++]   # 4
echo $num	# 5

num=2

((++num))
echo $num 	# 3

echo $((++num)) # 4
echo $num	# 4

echo $[++num]   # 5
echo $num	# 5
```

## bash - "Bourne Again Shell"

```bash
./file_name.sh
```

# Lesson 07

`-f` = file,
`-d` = directory,
`-e` = file or directory

```bash
if [[ -(?) <file> ]]
then
	echo "<file or directory> exists as a file or directory!"
fi
```

* Short check:
```bash

if [[ -f "/etc/passwd" ]] && echo "/etc/passwd - exists as a file!"

if [ -f "/etc/passwd" ] && echo "/etc/passwd - exists as a file!"

```
```bash
[ ! -f $File1 ] && echo "file does not exists"
```

#### If statement

If statement gives a condition - that returns only boolean value - true / false.

##### Numbers:

- `-gt` - greater than (>)
- `-ge` - greater equal (>=)
- `-lt` - less than (<)
- `-le` - less equal (<=)
- `-ne` - not equal (!=)
- `-eq` - equal (==)

##### Strings

- `=` - equal
- `==` - equal (use with pattern matching command [[ ]] )
- `!=` - not equal
- `>` - greater than
- `<` - smaller than
```bash
if [ "Hello world" = "hello world" ]
then
	echo "Hello world" = "Hello world"
fi
```
```bash

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

#### While

```bash

while [ "$counter" -lt 4 ] # <
do
	echo "Round number: $counter"
	counter=`expr $counter + 1`
done

echo "Finished while loop: counter =  $counter"
```


## Lesson 08

#### seq - sequence

* default start number: `1`

* Use 1 number: `[end]` returns all the nubmers from 1 - the number.

* Use 2 numbers: `[start] [end]` returns all the numbers from num1 to num2 (including both).

* Use 3 numbers: `[start] [range] [end]`. returns all the numbers from start number to end number - in range of the middle number.

- `seq -s` - allows to determine which separator will be between the values.

```bash
raya@raya-VirtualBox:~$ seq -s " " 10
1 2 3 4 5 6 7 8 9 10
raya@raya-VirtualBox:~$ seq -s ", " 10
1, 2, 3, 4, 5, 6, 7, 8, 9, 10
```

- `seq -w` - adds padding to the numbers with 0 prefix.

#### Arrays - מערכים

* 1. Print a list of 5 lessons with their number in for-in loop:

```bash
# for-in: goes on value:

i=1

for Lesson in Linux Cyber HTML JavaScript MySql
do
	echo "Lesson $i : $Lesson"
	((i++))
done
```

```bash
for num in `seq 10`
do
	echo -n " $num"
done
```

```bash
for num in {1..10}
do
	echo -n " $num"
done
```

* For loop with files: `LinuxDistros.txt`

	> 1 : Ubuntu
2 : Kali
3 : Tails
4 : Parrot
5 : Mint
6 : ElementaryOS


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

### elif - else if


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


## While