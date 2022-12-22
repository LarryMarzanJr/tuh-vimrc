# Custom .vimrc by Larry Benedicto Marzan Jr.
   
## HOW TO INSTALL

Clone this git repo from home directory:
```bash
git clone https://github.com/LarryMarzanJr/tuh-vimrc.git ~/.tuh-vimrc
```
> For VIM:
Create symlink (shortcut) to your `.vimrc` file and .vim folder 
```bash
ln -s ~/.tuh-vimrc/.vimrc ~/.vimrc
ln -s ~/.tuh-vimrc/.vim ~/.vim
```

> For NVIM:
Create symlink (shortcut) to your `init.vim` file and .vim folder 
```bash
ln -s ~/.tuh-vimrc/.vimrc ~/.config/nvim/init.vim
ln -s ~/.tuh-vimrc/.vim ~/.vim
```
Install Plugin manager to enable Plug features:
```bash
curl -fLo ~/.local/share/nvim/site/autoload/plug.vim --create-dirs https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
```
