echo "Adding local configuration files..."
mydir="${0%/*}"

# vim configuration
curl -fLo ~/.vim/autoload/plug.vim --create-dirs \
    https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
cp $mydir/.vimrc ~/.vimrc

# bash configuration
cat $mydir/.bashrc >> ~/.bashrc


