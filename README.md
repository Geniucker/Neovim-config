# Geniucker's Neovim Config
This resp is created to backup and share my nvim config.
## Requirements
- Neovim (the latest one is recommended)
- Git
- Install the Packer.nvim(a package manager)  
  for Windows 
  ```
  powershell git clone --depth 1 https://github.com/wbthomason/packer.nvim "$env:LOCALAPPDATA\nvim-data\site\pack\packer\start\packer.nvim"
  ```
  for Unix, Linux
  ```
  git clone --depth 1 https://github.com/wbthomason/packer.nvim ~/.local/share/nvim/site/pack/packer/start/packer.nvim
  ```
 - A patched font  
  It's required by `kyazdani42/nvim-web-devicons`, which is  used to display some icons.  
  It can be downloaded from [NERD FONTS](https://www.nerdfonts.com/) and should be installed into your system. My choice is `Caskaydia`. Relevant info can be searched online.  
  **On Windows you'd better use `nvim` in Windows Terminal or use `nvim-qt.exe` as the fonts can't be correctly loaded in separate `cmd` or `powershell`.**  
  **If you use Windows Terminal on Windows, you need to set the font of Windows Terminal separately.** Here is a [reference](https://www.get-itsolutions.com/windows-terminal-change-font/) in English.
## Geting Started
- Meet the Requirements  
- Clone this repo  
  for Windows(please use **powershell**)  
  ```
  git clone --depth 1 https://gitlab.com/Geniucker/neovim-config.git ~/AppData/Local/nvim
  ```
  for Unix, Linux  
  ```
  git clone --depth 1 https://gitlab.com/Geniucker/neovim-config.git ~/.config/nvim
  ```
