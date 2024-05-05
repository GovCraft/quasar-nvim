


                                   000000                      000000              
                                   000000                      000000              
                                   000000                      000000              
                                   000000                      000000              
                                   000000                      000000              
                                                
                                   000000               000000               000000
                                   000000               000000               000000
                                   000000               000000               000000
                                   000000               000000               000000
                                   000000               000000               000000
                                                
                                   000000                                    000000
                                   000000                                    000000
                                   000000                                    000000
                                   000000                                    000000
                                   000000                                    000000
                                                
                                   000000               000000 000000        000000
                                   000000               000000 000000        000000
                                   000000               000000 000000        000000
                                   000000               000000 000000        000000
                                   000000               000000 000000        000000



# Quasar Colorscheme for Neovim

Quasar is a high-contrast, visually appealing colorscheme for Neovim, designed specifically to enhance the development experience for Rust projects at Govcraft. Built to integrate seamlessly with the Rust Language Server Protocol (LSP), Quasar provides an optimized coding environment for the Quasar Actor Framework.

![Quasar Screenshot](path_to_screenshot.png)

## Features

- **Rust-centric design**: Tailored to improve readability and highlight syntax specific to Rust, making it ideal for extensive coding sessions.
- **Full LSP support**: Optimized to work with Neovim's built-in LSP, ensuring that all features such as diagnostics and code completion are visually integrated.
- **High Contrast**: Carefully chosen color palette to reduce eye strain and improve focus.

## Installation

### Via Plugin Manager

If you are using a plugin manager (e.g., vim-plug, dein, packer, or Lazy), add the following lines to your `init.vim` or `init.lua`:

#### For vim-plug

```vim
Plug 'GovCraft/quasar-nvim'
```
#### For packer.nvim

use {'GovCraft/quasar-nvim'}

#### For Lazy.nvim

```lua
require('lazy').setup {
    {'GovCraft/quasar-nvim'}
}
```
After adding the plugin, run `:PlugInstall`, `:PackerSync`, or the corresponding command for your plugin manager to install Quasar.

#### Manual Installation

1. Clone the repository:
`git clone https://github.com/GovCraft/quasar-nvim.git ~/.config/nvim/colors/`

2. Add the following to your init.vim:
`colorscheme quasar`

### Configuration
To get the most out of Quasar, ensure your init.vim is configured to use Neovim's built-in LSP client with Rust Analyzer. Here is a basic example:
```lua
lua << EOF
require'lspconfig'.rust_analyzer.setup{}
EOF
```
Set termguicolors to enable true color support:

`set termguicolors`

## License

Quasar is open-sourced under the MIT License. See the [LICENSE](https://github.com/GovCraft/quasar-nvim/blob/main/LICENSE) for more details.

## Contributing

Contributions to Quasar are welcome! Please refer to the [CONTRIBUTING.md](https://github.com/GovCraft/quasar-nvim/blob/main/CONTRIBUTING.md) for more information on how to submit pull requests, file issues, or start discussions.

## About Govcraft

Govcraft is dedicated to building state-of-the-art software solutions for the public sector, leveraging cutting-edge technology and innovative practices. Learn more about us at [our website](https://govcraft.ai).
