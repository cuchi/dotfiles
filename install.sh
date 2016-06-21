#!/usr/bin/env bash

# Location of the cloned dotfiles repository
DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"

# Backup old files
backup_dir=$HOME/.dotfiles_backup
[ -d $backup_dir ] || mkdir $backup_dir || exit 1

files_to_backup=(
    .vimrc
    .zshrc
    .i3*
    .dunstrc
    .xinitrc
    .Xresources
)

for file in ${files_to_backup[@]}; do
    echo -n "Making backup for old $file... "
    mv $HOME/$file $backup_dir 2> /dev/null && echo "done!" || echo "not found, skipping..."
done

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

echo "Done!"
exit 0
