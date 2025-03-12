# source all files in conf.d
for file in $ZDOTDIR/conf.d/*.zsh; do
	source $file
done