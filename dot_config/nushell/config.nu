$env.config = {
	show_banner: false
	rm: {
		always_trash: true  
	}
}

load-env {
	EDITOR: "micro"
}

# List files as grid
def lsg [...rest] {
	let rest = if $rest == [] { ["."] } else { $rest }
	
	ls -s ...$rest
	| sort-by type
	| grid --icons --color
}

# Run yazi and change pwd on exit
def --env yazicd [...commands: string] {
	let tempfile = mktemp -t yazi-cwd.XXXXXX
	yazi ...$commands --cwd-file=($tempfile)
	let dir: string = open $tempfile
	
	if $dir != pwd { cd $dir }

	rm -f $tempfile
}
