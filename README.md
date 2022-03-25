<h1 align="center">🔵 .dotfiles</h1>

<h1>📄 Description 📄</h1>

A place where all of my dotfiles are.
Thanks to the power of friendship, I have been told a solution to avoid having a repository per dotfile.

To resolve this issue, we are using [stow](https://linux.die.net/man/8/stow).
`stow` will help use by creating symbolic links in the parent directory of the directory we are standing in.
Therefore, to make our configurations work properly, we are going to put this repo in our HOME directory (for instance: ~/.dotfiles/) and we are going to `stow`.



# 🔥 How to use the project ? 🔥

The project has been setup for linux machines exclusively yet.

Before trying to install anything, check whether you have the `stow` command on your system and if not, install it.
As stated in 'Description', you'll have to clone the repo in your HOME directory, then enter it via `cd`.

This project works with a Makefile which contains different rules:

| Command | Result |
| ------- | ------ |
| `make` | Installs the configuration. |
| `make install` | Installs the configuration. |
| `make uninstall` | Uninstalls the configuration by removing generated files. |
| `make re` | Calls `make uninstall` and then `make install`. |
