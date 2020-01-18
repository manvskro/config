echo "Configuration du terminal"
sudo cp bash/.bashrc ~/
if [ ! -f "~/.cdefault" ]
    then echo "/home/martin/" ~/.cdefault
fi
source ~/.bashrc

echo "Configuration de l'éditeur Vim"
sudo cp vim/.vimrc ~/

echo "Installation des packages:"
cat packages/list.txt
sudo apt-get install packages/list.txt
