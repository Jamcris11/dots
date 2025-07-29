if [ -e $(realpath $HOME/.bashrc) ] ; then
	echo "Skipping $HOME/.bashrc, already exists!"
else
	ln -s $(realpath .bashrc) $HOME/.bashrc
fi

cd .config/

for f in * ; do
	if [ -e $(realpath $HOME/.config/$f) ] ; then
		echo "Skipping $f, already exists!"
	else 
		ln -s $(realpath "$f") $HOME/.config/$f && echo "Linked -" $f
	fi
done
