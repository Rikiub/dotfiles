export let eggs = #{

    // Apps
    "user/apps": #{
        targets: "~/.config",
        strategy: "merge",
    },
    "user/scripts": #{
        targets: "~/.local/bin",
        strategy: "merge",
    },
    
    // Shell
    "shell/nushell": #{
        targets: "~/.config/nushell",
        main_file: "config.nu",
        enabled: true,  
    },

    "shell/fish": #{
        targets: #{
            "config": "~/.config/fish",
            "fish_history": "~/.local/share/fish/fish_history",
        },
        main_file: "config.fish",
        enabled: false,
    },
    
    "shell/shared": #{
        targets: #{
            "zoxide": "~/.local/share/zoxide",
            "starship.toml": "~/.config/starship.toml",
        },
    },

    // Desktop Enviroment
    "desktop/quickshell": #{
        targets: "~/.config",
        strategy: "merge",
        enabled: true,
    },
    
    "desktop/ignis": #{
        targets: #{
            // Desktop Environment
            "niri": "~/.config/niri",
            "ignis": "~/.config/ignis",
            "matugen": "~/.config/matugen",
            "swaylock": "~/.config/swaylock",
            
            // Darkman
            "+darkman/dark": "~/.local/share/dark-mode.d",
            "+darkman/light": "~/.local/share/light-mode.d",
        },
        main_file: "niri/config.kdl",
        enabled: false
    },

    // Wayland
    "wayland": #{
        targets: "~/.config",
        strategy: "merge",
        enabled: true,
    },
};
