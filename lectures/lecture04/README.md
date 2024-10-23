<<<<<<< HEAD
# A bit more interactive shell

### A little about wildcards/globbing

In the scripting component you just did, we used wildcards like so:

    ls PHOTO*.jpg

The `*` just represents any set of characters.
Thus this `ls` call just lists anything that starts with `PHOTO` and ends with `.jpg`.

Now it's your turn.
You can combine wildcards, using them for example for both directory and file names.
Try using a wildcard to list all of the `.md` files in `02-directories/purchase` directory one directory down.
(There is also a Python `glob` module which implements wildcards, if you need that at some point.)

[There are other symbols you can use if you want more precise control over your wildcard matches](http://www.linfo.org/wildcard.html) but `*` is a fine start.


### Hidden directories and files

The shell has a special way of hiding files that you don't want to see: any file or directory starting with a period (`.`) is hidden when you `ls`.
It's also not matched with `*`.
Try doing

    echo ~/*

which compactly lists all of the non-hidden files in your home directory (which is `~`).
Then try

    echo ~/.*

which shows all of the hidden files.

You can also use

    ls -a ~

which will list all of the files in `~`.


### Removing files

Removing files happens with

    rm FILENAMES

where `FILENAMES` can be one or more names.
Removing directories happens with

    rmdir DIRECTORYNAMES

where `DIRECTORYNAMES` is one or more directory names.
However, these directories need to be empty.
It is more common to use the less safe

    rm -r DIRECTORYNAMES

which recursively removes `DIRECTORYNAMES` and all of their contents.

BE CAREFUL!! Unlike "putting something in the trash" on a desktop OS, once linux removes a file, it's gone!


### Making directories

Making directories is done with

    mkdir DIRECTORY

which makes a directory called `DIRECTORY`.


### Copying and moving/renaming files

Copying files uses the `cp` command, like so:

    cp SOURCE DESTINATION

where `SOURCE` is an extant file, and `DESTINATION` is a place the file can go.
If `DESTINATION` is a file name, it will copy that file to have that new name.
If `DESTINATION` is a directory, it will copy the file with the same name into that directory.

You can also use the form

    cp SOURCES DIRECTORY

where `SOURCES` is a collection of files and `DIRECTORY` is a directory.

Moving/renaming files is just the same, except that you use the `mv` command rather than the `cp` command.

Now it's your turn.

* Copy this `README.md` file into `..`
* Rename it `../README.copy.md`
* Make a directory called `copies`
* Copy `../README.copy.md` and into `copies`
* Remove the `copies` directory

---

Congratulations!
You are done with the tutorial!
=======
# Lecture 04: First steps in the shell

**Melody Campbell ([@melodygcampbell](https://twitter.com/melodygcampbell), [campbelllab.org](http://campbelllab.org))**

This lesson introduces you to the command line (a.k.a. Unix shell), which is useful (and necessary) for automating tasks, working with files/directories, and using compute clusters.

In the first lecture, I will describe the history of and larger context for why we want to use the command line.
[The slides will be here](https://github.com/FredHutch/tfcb_2024/blob/main/lectures/lecture04/slides/2024oct08_MCB536_Lecture04.pdf), and if you missed the lecture [here is a similar recorded version from 2022](https://youtu.be/vUzns3Wk-_U). 

If you want a second opnion or want to learn clutser-based computing and paralleization, [here is a recorded version](https://www.youtube.com/watch?v=dzkacZ2BTjw) and [here are the slides](https://fredhutch.github.io/tfcb_2021/lectures/lecture03/slides/slides.html) covering related material by Erick Matsen in 2020.


## Learning objectives

After these two lectures, you should be able to:

- Navigate a file system in the shell (lecture 04)
- Run commands in the shell (lecture 04)
- Understand basic usage of redirection (lecture 04)
- Write a for loop (lecture 05)
- Edit a file using vim (lecture 05)
- Write a basic shell script (lecture 05)

## Class materials

- All instructions for this lesson are links or are available in this repository.
  - See the Tutorial section in the next lecture to get started with the exercises.
  - The recorded lecture and introductory slides are linked to above.
  
## Setup: Accessing a Command Line

This material requires access to a [unix shell](https://fredhutch.github.io/tfcb_2021/software/#unix-command-line-shell). Different "flavors" of shell have slight variations in commands available so don't be surprised if some of the commands and options are slightly different (especially on OS X).
  
- **Use a Command Line via Visual Studio Code (recommended)**
  - [Install using these instructions](https://github.com/FredHutch/tfcb_2024/blob/main/software/README.md)
  - Adjust the view options in the upper right corner to toggle view and maximize the "Terminal" tab
  
- **Use a Command Line on Mac OS X**
  - Macintosh operating systems are built on Unix, so many of the tools you’ll need are pre-installed on your computer. You can access the command line through an application called Terminal. You can either search for this in Finder, or use the Go drop-down menu to locate it in the Utilities folder.
  
- **Use a Command Line on Windows 10**
  - Windows 10 comes with a new feature called Windows Subsystem for Linux (WSL) that allows you to access Unix tools on your computer. Please install WSL with the instructions [here](https://learn.microsoft.com/en-us/windows/wsl/install).


## Reminders

- Homework 2 (command line) will be available [here](https://fredhutch.github.io/tfcb_2023/homeworks/homework02) on October 12th; it may be useful to reference these questions as you work through material in the second class.

## Further references

* [Software Carpentry's shell introduction](https://swcarpentry.github.io/shell-novice/)
* [Software Carpentry's shell topics](https://carpentries-incubator.github.io/shell-extras/)
* [MIT Computer Science "Missing Semester"](https://missing.csail.mit.edu/)
>>>>>>> 7dbbdb75ffb944d60c892ea22813b9094b169033
