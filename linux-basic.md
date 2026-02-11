# It contains information about commands that are frequently used and considered basic commands in Linux-based operating systems.
------

## Linux Command Structure

Linux commands are generally written in the following format:

```
<command> <option(s)> <parameter>
```

To get information about a command, the help parameter is usually used:

```
<command> --help
```

To make command output more readable for humans, the -h (human) parameter is often used:

```
<command> -h
```

To run commands sequentially, linked commands (&&) can be used:

```
<command1> && <command2>
```

------

### change directory
Used to navigate between directories. It has a wide range of usage.

```
cd
```

### print working directory
Shows the full path of the current directory from the root:

```
pwd
```

### list directory
Used to list directories and files. Accepts many options.

```
ls
```

To view the current permissions of a file:

```
ls -l <file>
```

### concatenate files
Used to read file contents:

```
cat <file>
```

### touch
Used to create files:

```
touch text.txt
```

### echo
Prints text or variables to the terminal:

```
echo "Egemen Akdeniz"
echo $PATH
```

### service
Used to manage running services:

Start a service:

```
service <service> start
```

Check service status:

```
service <service> status
```

Restart a service:

```
service <service> restart
```

Reload service settings:

```
service <service> reload
```

Stop a service:

```
service <service> stop
```

### top
Displays resource usage (CPU, memory, etc.) of running processes:

```
top
```

### ping
Used to check connectivity to a remote system:

```
ping www.egemenakdeniz.com.tr
```

### whatis
Displays a short description of a command:

```
whatis ping
```

### change file permissions
chmod is used in Linux and macOS to change the permissions of a file or directory.

rwx Permissions:

Each file has three user groups: owner (u), group (g), and others (o).  
Permissions: read (r), write (w), execute (x).

```
Example: -rwxr-xr--
```

```
- Owner: rwx → read, write, execute  
- Group: r-x → read, execute  
- Others: r-- → read only
```

### chmod Usage Examples

Symbolic Method:

```
chmod u+x script.sh      # Add execute permission for owner
chmod g-w file.txt       # Remove write permission for group
chmod o= file.txt        # Remove all permissions for others
chmod u=rw,g=rw,o=r file.txt  # Set owner & group rw, others r

chmod 754 file.txt       # Owner: rwx, Group: r-x, Others: r--
```