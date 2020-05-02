# ArtixWSL
Artix Linux on WSL (Windows 10 FCU or later)
based on [wsldl](https://github.com/yuk7/wsldl)


![screenshot](https://raw.githubusercontent.com/wiki/yuk7/wsldl/img/Arch_Alpine_Ubuntu.png)

[![Build Status](https://img.shields.io/travis/hdk5/ArtixWSL.svg?style=flat-square)](https://travis-ci.org/hdk5/ArtixWSL)
[![Github All Releases](https://img.shields.io/github/downloads/hdk5/ArtixWSL/total.svg?style=flat-square)](https://github.com/hdk5/ArtixWSL/releases/latest)
[![License](https://img.shields.io/github/license/hdk5/ArtixWSL.svg?style=flat-square)](https://choosealicense.com/licenses/mit/)

### [⬇Download](https://github.com/hdk5/ArtixWSL/releases/latest) | [📓ArchWSL Wiki](https://github.com/yuk7/ArchWSL/wiki)

## 💻Requirements
* Windows 10 1709 Fall Creators Update 64bit or later.
* Windows Subsystem for Linux feature is enabled.

## 💾Install
**[For details, please refer to the ArchWSL wiki](https://github.com/yuk7/ArchWSL/wiki/How-to-Setup)**
### 📁zip
#### 1. [Download](https://github.com/hdk5/ArtixWSL/releases/latest) installer zip

#### 2. Extract all files in zip file to same directory
Please extract to a folder that has full access permission.
For example 'Program Files' can not be used.

#### 3. Run Artix.exe to Extract rootfs and Register to WSL
Exe filename is using to the instance name to register.
If you rename it you can register with a different name and have multiple installs.

## 📝How-to-Use(for Installed Instance)
#### exe Usage
```dos
Usage :
    <no args>
      - Open a new shell with your default settings.

    run <command line>
      - Run the given command line in that distro. Inherit current directory.

    runp <command line (includes windows path)>
      - Run the path translated command line in that distro.

    config [setting [value]]
      - `--default-user <user>`: Set the default user for this distro to <user>
      - `--default-uid <uid>`: Set the default user uid for this distro to <uid>
      - `--append-path <on|off>`: Switch of Append Windows PATH to $PATH
      - `--mount-drive <on|off>`: Switch of Mount drives
      - `--default-term <default|wt|flute>`: Set default terminal window

    get [setting]
      - `--default-uid`: Get the default user uid in this distro
      - `--append-path`: Get on/off status of Append Windows PATH to $PATH
      - `--mount-drive`: Get on/off status of Mount drives
      - `--wsl-version`: Get WSL Version 1/2 for this distro
      - `--default-term`: Get Default Terminal for this distro launcher
      - `--lxguid`: Get WSL GUID key for this distro

    backup [contents]
      - `--tgz`: Output backup.tar.gz to the current directory using tar command
      - `--reg`: Output settings registry file to the current directory

    clean
      - Uninstall the distro.

    help
      - Print this usage message.
```

## ⬆️Update
### 📁zip
#### 1. [Download](https://github.com/yuk7/ArchWSL/releases/latest) installer zip
#### 2. Extract .exe and rootfs.tar.gz from .zip and overwrites existing ones.

## 🚫Known issues
Please see [ArchWSL Wiki](https://github.com/yuk7/ArchWSL/wiki).
