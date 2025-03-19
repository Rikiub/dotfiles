export let eggs = #{
    scripts: #{
        targets: "~/.local/bin",
        strategy: "merge",
    },
    apps: #{
        targets: "~/.config",
        strategy: "merge",
    },
    helix: #{
        targets: "~/.config/helix",
        main_file: "config.toml",  
    },

    shell_fish: #{
        targets: #{
            "config": "~/.config/fish",
            "fish_history": "~/.local/share/fish/fish_history",
        },
        main_file: "config.fish",
        enabled: false,
    },
    shell_nu: #{
        targets: "~/.config/nushell",
        main_file: "config.nu",
        enabled: true,  
    },
    shell_shared: #{
        targets: #{
            "zoxide": "~/.local/share/zoxide",
            "starship.toml": "~/.config/starship.toml",
        },
    },

    nomix: #{
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
        enabled: true
    },

    wayland_env: #{
        targets: "~/.config",
        strategy: "merge",
    },
};
