# mybible
Command line Shell scripts for displaying Bibles from MyBible modules in the terminal

# dependencies: 
- sqlite

## dependency installation: 
```sh
sudo pacman -S sqlite
```

# ntpt sctipt:

This script displays new testament patriarchal text to the terminal

## usage:
```sh
ntpt  # displays contents of that module
ntpt [book_number] #displays contents of the whole book
ntpt [substring of short_name or long_name] # displays contents of the whole book
ntpt [book] [chapter_number] # displays one chapter of that [book]
```

# Installation:
To install these scripts on your machine, you have to put them into the PATH. For example if your PATH variable includes the path ~/.local/bin/ , then you have to copy them into this directory:
```sh
cp bin/* ~/.local/bin/
```

# configuration:

The configuration is done by editing these scripts directly:

Edit MODULE_DIR (MODULES_DIR for ntpt-eob) variable to point to the directory which contains the
modules. Modules can be one of MyBible Android app's sqlite database file. Examples are in the modules directory you should copy them to the path which points MODULE_DIR:
```sh 
mkdir -p ~/.local/share/mybible/
cp modules/* ~/.local/share/mybible/
```

scripts name and database name match because if you symlink your script to different modules name, symlinked new command will point to a module in MODULE_DIR directory so make sure that you name modules the same name your newly created symlinks are called. For example: in the repo there is a module named eob.SQLite3 and wnen you symlink ntpt to eob:
```sh
ln -sr ~/.local/bin/ntpt ~/.local/bin/eob
```

and run:
```sh
eob mat 3
```
it will work


# ntpt-eob script:

The script has same usage as ntpt but displays both translations of the Bible side by side. It determines modules to use based its name so if you want to make kjv-eob script just symlink ntpt-eob to kjv-eob and (change MODULE_DIR variable accordingly if you want different storage path for modules) and provide in that path both kjv.SQLite3 and eob.SQlite3 module files.
