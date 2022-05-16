# TO

Create (touch) and open a file

## Usage
```sh
to [-c] [-e extension] [filename]
```

-  `-c`: Create the file at current directory. Default directory is `~/Desktop`
-  `-e`: Specify the file extenson. Default extention is `txt`
-  `filename`: Specify the filename. Default filename is `untitled`. If duplicated, the default filename is `untitled-{numbers}`.  
   If filename contains file extension, the `-e` flag will be ignored.

## Installation
1. Clone the repo
    ```
    git clone https://github.com/dingyiyi0226/to.git ~/.to
    ```

2. Modify `.bashrc`
    ```
    echo "source ~/.to/to" >> ~/.bashrc
    ```

3. Restart the shell
    ```
    exec $SHELL
    ```

## Examples
```sh
to                 # create and open ~/Desktop/untitled.txt
to note            # create and open ~/Desktop/note.txt
to -e md           # create and open ~/Desktop/untitled.md
to note.md         # create and open ~/Desktop/note.md
to -c test.cpp     # create and open <current directory>/test.cpp
```
