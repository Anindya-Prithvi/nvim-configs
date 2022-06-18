Presenting my dotfiles for neovim. I made a few small scripts to reduce some time in CP. Not that I solve all ABCDEF in div1 but while using VSCode (another pog editor) the language services, completions, and a whole new electron window seems tooooooo bloaty. So, I decided to write my own bloat (jk). This configuration is stripped off from tree-sitters so do not expect to use it like an IDE out of the box. You might edit it for yourself.

# How to use?
- Get neovim from your package manager/obtain binary
- follow https://github.com/wbthomason/packer.nvim#quickstart to install Packer (a package manager for neovim plugins)
- open an nvim instance, in NORMAL mode type `:PackerSync`. Wait for some time. After it finished type `:COQdeps`. This will install initiliaze the autocompletions stuff.

I am running it on a WSL (ubuntu/One half dark) instance (there is a small override for a small colorscheme, but that's your choice how to set it up, if you want to look for anything installed by PackerSync, go to `~/.local/share/nvim/site/...`).

Here is a photu:
![Demonstration image](current-looks.png)

