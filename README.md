# Imolai/nvchad-config

This is my custom config for [NvChad](https://nvchad.com) on [Neovim](https://neovim.io). Do check the <https://github.com/NvChad/nvcommunity>.

## Uninstallation

To uninstall NvChad or previous Neovim configuration, run the following command:

```bash
rm -fr ~/.config/nvim; rm -fr ~/.local/share/nvim; rm -fr ~/.local/state/nvim; rm -fr ~/.cache/nvim
```

## Installation

To install NvChad run the following command:

### [NvChad](https://nvchad.com/docs/quickstart/install)

```bash
git clone https://github.com/NvChad/NvChad ~/.config/nvim --depth 1
nvim
```

### nvchad-config

```bash
rm -fr ~/.config/nvim/lua/custom
git clone https://github.com/Imolai/nvchad-config.git ~/.config/nvim/lua/custom
```

## Update

To update NvChad run the following command:

```vim
:NvChadUpdate
```

