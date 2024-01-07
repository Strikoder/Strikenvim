# kickstart.Strikenvim

https://github.com/kdheepak/kickstart.nvim/assets/1813121/f3ff9a2b-c31f-44df-a4fa-8a0d7b17cf7b

### Introduction

A starting point for Neovim that is:

* Small
* Single-file (with examples of moving to multi-file)
* Documented
* Modular

This repo is meant to be used by **YOU** to begin your Neovim journey; remove the things you don't use and add what you miss.

Kickstart.nvim targets *only* the latest ['stable'](https://github.com/neovim/neovim/releases/tag/stable) and latest ['nightly'](https://github.com/neovim/neovim/releases/tag/nightly) of Neovim. If you are experiencing issues, please make sure you have the latest versions.

Distribution Alternatives:
- [LazyVim](https://www.lazyvim.org/): A delightful distribution maintained by @folke (the author of lazy.nvim, the package manager used here)

### Installation

> **NOTE** 
> [Backup](#FAQ) your previous configuration (if any exists)

Requirements:
* Make sure to review the readmes of the plugins if you are experiencing errors. In particular:
  * [ripgrep](https://github.com/BurntSushi/ripgrep#installation) is required for multiple [telescope](https://github.com/nvim-telescope/telescope.nvim#suggested-dependencies) pickers.
* See [Windows Installation](#Windows-Installation) if you have trouble with `telescope-fzf-native`

Neovim's configurations are located under the following paths, depending on your OS:

| OS | PATH |
| :- | :--- |
| Linux | `$XDG_CONFIG_HOME/nvim`, `~/.config/nvim` |
| MacOS | `$XDG_CONFIG_HOME/nvim`, `~/.config/nvim` |
| Windows (cmd)| `%userprofile%\AppData\Local\nvim\` |
| Windows (powershell)| `$env:USERPROFILE\AppData\Local\nvim\` |

Clone kickstart.nvim:

- on Linux and Mac
```sh
git clone https://github.com/nvim-lua/kickstart.nvim.git "${XDG_CONFIG_HOME:-$HOME/.config}"/nvim
```

### Post Installation

Start Neovim

```sh
nvim
```

The `Lazy` plugin manager will start automatically on the first run and install the configured plugins - as can be seen in the introduction video. After the installation is complete you can press `q` to close the `Lazy` UI and **you are ready to go**! Next time you run nvim `Lazy` will no longer show up.

If you would prefer to hide this step and run the plugin sync from the command line, you can use:

```sh
nvim --headless "+Lazy! sync" +qa
```


This will install the tree plugin and add the command `:Neotree` for you. You can explore the documentation at [neo-tree.nvim](https://github.com/nvim-neo-tree/neo-tree.nvim) for more information.


### FAQ

* What should I do if I already have a pre-existing neovim configuration?
  * You should back it up, then delete all files associated with it.
  * This includes your existing init.lua and the neovim files in `~/.local` which can be deleted with `rm -rf ~/.local/share/nvim/`
  * You may also want to look at the [migration guide for lazy.nvim](https://github.com/folke/lazy.nvim#-migration-guide)
* Can I keep my existing configuration in parallel to kickstart?
  * Yes! You can use [NVIM_APPNAME](https://neovim.io/doc/user/starting.html#%24NVIM_APPNAME)`=nvim-NAME` to maintain multiple configurations. For example you can install the kickstart configuration in `~/.config/nvim-kickstart` and create an alias:
    ```
    alias nvim-kickstart='NVIM_APPNAME="nvim-kickstart" nvim'
    ```
    When you run Neovim using `nvim-kickstart` alias it will use the alternative config directory and the matching local directory `~/.local/share/nvim-kickstart`. You can apply this approach to any Neovim distribution that you would like to try out.
* What if I want to "uninstall" this configuration:
  * See [lazy.nvim uninstall](https://github.com/folke/lazy.nvim#-uninstalling) information
* Why is the kickstart `init.lua` a single file? Wouldn't it make sense to split it into multiple files?
  * The main purpose of kickstart is to serve as a teaching tool and a reference
    configuration that someone can easily `git clone` as a basis for their own.
    As you progress in learning Neovim and Lua, you might consider splitting `init.lua`
    into smaller parts. A fork of kickstart that does this while maintaining the exact
    same functionality is available here:
    * [kickstart-modular.nvim](https://github.com/dam9000/kickstart-modular.nvim)
  * Discussions on this topic can be found here:
    * [Restructure the configuration](https://github.com/nvim-lua/kickstart.nvim/issues/218)
    * [Reorganize init.lua into a multi-file setup](https://github.com/nvim-lua/kickstart.nvim/pull/473)


