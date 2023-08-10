# iZack's Neovim Configs
```
 ██▓▒███████▒ ▄▄▄       ▄████▄   ██ ▄█▀  ██████     ███▄    █ ██▒   █▓ ██▓ ███▄ ▄███▓    ▄████▄   ▒█████   ███▄    █   █████▒██▓  ▄████   ██████ 
▓██▒▒ ▒ ▒ ▄▀░▒████▄    ▒██▀ ▀█   ██▄█▒ ▒██    ▒     ██ ▀█   █▓██░   █▒▓██▒▓██▒▀█▀ ██▒   ▒██▀ ▀█  ▒██▒  ██▒ ██ ▀█   █ ▓██   ▒▓██▒ ██▒ ▀█▒▒██    ▒ 
▒██▒░ ▒ ▄▀▒░ ▒██  ▀█▄  ▒▓█    ▄ ▓███▄░ ░ ▓██▄      ▓██  ▀█ ██▒▓██  █▒░▒██▒▓██    ▓██░   ▒▓█    ▄ ▒██░  ██▒▓██  ▀█ ██▒▒████ ░▒██▒▒██░▄▄▄░░ ▓██▄   
░██░  ▄▀▒   ░░██▄▄▄▄██ ▒▓▓▄ ▄██▒▓██ █▄   ▒   ██▒   ▓██▒  ▐▌██▒ ▒██ █░░░██░▒██    ▒██    ▒▓▓▄ ▄██▒▒██   ██░▓██▒  ▐▌██▒░▓█▒  ░░██░░▓█  ██▓  ▒   ██▒
░██░▒███████▒ ▓█   ▓██▒▒ ▓███▀ ░▒██▒ █▄▒██████▒▒   ▒██░   ▓██░  ▒▀█░  ░██░▒██▒   ░██▒   ▒ ▓███▀ ░░ ████▓▒░▒██░   ▓██░░▒█░   ░██░░▒▓███▀▒▒██████▒▒
░▓  ░▒▒ ▓░▒░▒ ▒▒   ▓▒█░░ ░▒ ▒  ░▒ ▒▒ ▓▒▒ ▒▓▒ ▒ ░   ░ ▒░   ▒ ▒   ░ ▐░  ░▓  ░ ▒░   ░  ░   ░ ░▒ ▒  ░░ ▒░▒░▒░ ░ ▒░   ▒ ▒  ▒ ░   ░▓   ░▒   ▒ ▒ ▒▓▒ ▒ ░
 ▒ ░░░▒ ▒ ░ ▒  ▒   ▒▒ ░  ░  ▒   ░ ░▒ ▒░░ ░▒  ░ ░   ░ ░░   ░ ▒░  ░ ░░   ▒ ░░  ░      ░     ░  ▒     ░ ▒ ▒░ ░ ░░   ░ ▒░ ░      ▒ ░  ░   ░ ░ ░▒  ░ ░
 ▒ ░░ ░ ░ ░ ░  ░   ▒   ░        ░ ░░ ░ ░  ░  ░        ░   ░ ░     ░░   ▒ ░░      ░      ░        ░ ░ ░ ▒     ░   ░ ░  ░ ░    ▒ ░░ ░   ░ ░  ░  ░  
 ░    ░ ░          ░  ░░ ░      ░  ░         ░              ░      ░   ░         ░      ░ ░          ░ ░           ░         ░        ░       ░  
    ░                  ░                                          ░                     ░                                                        

```
This are my Neovim configs for arch linux.

## How to install:
To get started with my Neovim configuration, follow these steps:

* Install Neovim in your system
* Install Packer in your system: Packer is used to manage plugins in Neovim. Install it on your system.
* Clone this repo in your `~/.config` folder

```sh
git clone https://github.com/iZackk26/nvim ~/.config/nvim
```

## How to use it and configure it:
This configs are divided in several folder with follow this order:
```
---lua
------plugins
---plugin
```
- `lua/lsp`: This folder contains configuration for Language Server Protocols (LSPs), enabling powerful code analysis and auto-completion.
- `lua/keymaps`: Here, you'll find all the keybindings and shortcuts I've set up to streamline my workflow.
- `lua/init`: The initialization script that handles requirements, settings, and plugin configurations.
- `lua/plugin/init`: This folder handles importing plugins, themes, and additional extensions.

## License:
This project is licensed under the **MIT License**
