#!/usr/bin/env bash

# Location of the cloned dotfiles repository
DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"

# Backup old files
backup_dir=$HOME/.dotfiles_backup
[ -d $backup_dir ] || mkdir $backup_dir || exit 1

files_to_backup=(
    .vim*
    .zsh*
    .i3*
    .dunstrc
    .xinitrc
    .Xresources
)

for file in ${files_to_backup[@]}; do
    echo -n "Doing backup for $file... "
    mv $HOME/$file $backup_dir 2> /dev/null && echo "done!" || echo "not found, skipping..."
done

### Dependencies
# Vundle for vim
git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim
# Tamzen powerline font for xTerm
git clone https://github.com/sunaku/tamzen-font.git ~/.fonts/tamzen-font
# Oh my Zsh for zsh, of course
sh -c "$(curl -fsSL https://raw.githubusercontent.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"

# Copying new dotfiles
files_to_copy=(
    vimrc
    zshrc
    i3*
    dunstrc
    xinitrc
    Xresources
)

for file in ${files_to_copy[@]}; do
    cp $DIR/$file $HOME/.$file -rv
done

# Installing Vundle plugins
vim +PluginInstall +qall
# Not using zsh yet? let me change that for you!
[ $SHELL = /bin/zsh ] || chsh -s /bin/zsh

echo "Everything is set, enjoy!"

exit 0
