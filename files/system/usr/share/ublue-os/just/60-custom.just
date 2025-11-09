install-nix:
    #!/usr/bin/env bash
    set -euo pipefail
    if [ -d /nix ]; then
        echo "Nix is already installed!"
        exit 0
    fi
    echo "Installing Nix using Determinate Systems installer..."
    curl --proto '=https' --tlsv1.2 -sSf -L https://install.determinate.systems/nix | sh -s -- install
    echo ""
    echo "Nix installed successfully!"
    echo "Please log out and back in for changes to take effect."

upgrade-nix:
    sudo -i nix upgrade-nix

uninstall-nix:
    /nix/nix-installer uninstall
