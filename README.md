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

## configuration:

The configuration is done by editing this script directly:

Edit MODULE_DIR variable to point to the directory which contains the
modules. Modules can be one of MyBible Android app's sqlite database file.

Originally MODULE_DIR points to the same directory where scripts are located so you have to run scripts from the project location.
so if you decide to put scripts to your PATH don't forget to point 
MODULE_DIR variable to the directory where modules are located.

scripts name and database name match because if you symlink your script to different modules name, symlinked new command will point to a module in MODULE_DIR directory so make sure that you name modules the same name your newly created symlinks are called. For example: in the repo there is a ntpt scripts symlink called eob and there is also module named eob.SQLite3 and wnen you run './eob 470 4' it will work.

so if you have module named kjv.SQLite3 you should do:
```sh
ln -sr ntpt kjv
```

# ntpt-eob script:

The script has same usage as ntpt but displays both translations of the Bible side by side. It determines modules to use based its name so if you want to make kjv-eob script just symlink ntpt-eob to kjv-eob and change MODULE_DIR variable accordingly and provide in that path both kjv.SQLite3 and eob.SQlite3 module files.
