rm -r ~/.vim/autoload  
rm -r ~/.vim/config  
rm -r ~/.vim/plugin

cp -r ./autoload ~/.vim/
cp -r ./config ~/.vim/
cp -r ./colors ~/.vim/
cp -r ./plugin ~/.vim/

config_file=".vimrc"

cat /dev/null > $config_file
path="config"
files=$(ls $path)
for filename in $files
do
	echo "source ~/.vim/config/$filename" >> $config_file
done

cp ~/.vimrc ./vimrc_bk
cp .vimrc ~/.vimrc
rm .vimrc
