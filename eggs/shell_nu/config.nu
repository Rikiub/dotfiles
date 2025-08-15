$env.config = {
    show_banner: false
    rm: {
      always_trash: true  
    }
}

load-env {
    EDITOR: "helix"
}

# List the filenames as grid
def lsg [...commands: string] {
    ls -s
    | sort-by type
    | grid --icons --color
}

# Run yazi and change pwd on exit
def --env y [...commands: string] {
    let tempfile = mktemp -t yazi-cwd.XXXXXX
    yazi ...$commands --cwd-file=($tempfile)
    let dir: string = open $tempfile
    
    if $dir != pwd { cd $dir }

    rm -f $tempfile
}
