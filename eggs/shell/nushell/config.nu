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
def  lsg [path?: string, ...rest] {
    let target = if $path != null { $path } else { "." }
    
    ls $target -s ...$rest
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
