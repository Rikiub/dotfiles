$env.config = {
	show_banner: false
	rm: {
		always_trash: true  
	}
}

load-env {
	EDITOR: "micro"
	PAGER: "bat --paging=always"
	MANPAGER: "bat -l man -p"
}

# Run yazi and change pwd on exit
def --env yazicd [...commands: string] {
	let tempfile = mktemp -t yazi-cwd.XXXXXX
	yazi ...$commands --cwd-file=($tempfile)
	let dir: string = open $tempfile
	
	if $dir != pwd { cd $dir }

	rm -f $tempfile
}
