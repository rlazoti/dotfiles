dotfiles
========

This repository contains all my dot files used in both Linux and Mac.

It contains definitions for:

* zsh
* git
* tmux
* aliases
* oh-my-zsh
* tmux-powerline
* environment variables (AKA $PATH and others)


Installation
=============

### Prerequisites

Install **zsh** and define it as you default shell.


### Install

Clone this repo into your home directory as .terminal:

```sh
$ git clone https://github.com/rlazoti/dotfiles ~/.terminal
```

Edit the file *~/.terminal/home*, and add your current home directory (Ex: /home/rlazoti).

Then run this script to create all symbolic links and install its dependencies:

```sh
$ ~/.terminal/install.zsh
```
