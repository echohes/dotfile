# dotfiles

## Package for install
- [ ] [Neovim](https://github.com/neovim/neovim/wiki/Installing-Neovim)
- [ ] [Sway](https://github.com/swaywm/sway)
- [ ] [Waybar](https://github.com/Alexays/Waybar)


### Neovim Lsp servers:
- [ ] [Golang](https://github.com/golang/tools/tree/master/gopls)
- [ ] [Python](https://github.com/microsoft/pyright)
- [ ] [Lua](https://github.com/sumneko/lua-language-server)

#### Neovim setup:

##### 1) Install lsp server from script in install_lsp

##### 2) Install neovim plugins:
```
nvim +PackerSync
```

#### For the correct image of the icons, you need to install nerd fonts. In scripts nerd_fonts_install.sh, example install DejaVuSansMono. After install, you need change fonts in your terminal.

- [ ] [More Nerd Fonts](https://www.nerdfonts.com/font-downloads)

## HotKeys
### Sway: 
##### Actions
```
Mod + Enter New terminal
Mod + F Make current window fullscreen
Mod + Shift + Q Quit program
Mod + Shift + E Exit Sway
Mod + Shift + C Reload Sway configuration
Mod + Shift + - Move window to scratchpad
Mod + - Show scratchpad
```
##### Workspaces keys
```
Mod + 0..9 Change current workspace
Mod + Shift + 0..9 Move current window to designated workspace
Mod + B Horizontal layout
Mod + V Vertical layout
Mod + S Stacking layout
Mod + E Toggle split layout
Mod + W Tabbed layout
Mod + A Focus on parent container
Mod + Space Swap focus between tiling and floating
Mod + Shift + Space Toggle floating mode
Mod + Tab Next workspace
Mod + Shift + Tab Previous workspace
Mod + Left/Right/Up/Down Move focus of the window
Mod + Shift + Left/Right/Up/Down Move the focused window in the workspace
```
##### Resize window
```
Mod + R, and use Left/Right/Up/Down keys, 
Press enter or escape to return to default mode.
```

