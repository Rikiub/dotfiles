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
    fish: #{
        targets: #{
            "fish": "~/.config/fish",
            "starship.toml": "~/.config/starship.toml"
        },
        main_file: "fish/config.fish",
    },

    niri: #{
        targets: #{
            // Desktop Environment
            "niri": "~/.config/niri",
            "ignis": "~/.config/ignis",
            "swaylock": "~/.config/swaylock",

            // Darkman
            "+darkman/dark": "~/.local/share/dark-mode.d",
            "+darkman/light": "~/.local/share/light-mode.d",
        },
        main_file: "niri/config.kdl",
    },

    wayland_env: #{
        targets: "~/.config",
        strategy: "merge",
    },
};
