rm -r ~/.vim/autoload  
rm -r ~/.vim/config  
rm -r ~/.vim/plugin

cp -r ./autoload ~/.vim/
cp -r ./config ~/.vim/
cp -r ./colors ~/.vim/
cp -r ./plugin ~/.vim/

config_file=".vimrc"
config_list=$(find ./config -type f -print | xargs)

cat /dev/null > $config_file
for i in ${config_list[@]}
do
	echo "source $i" >> $config_file
done

cp ~/.vimrc ./vimrc_bk
cp .vimrc ~/.vimrc
rm .vimrc
