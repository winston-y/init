
# must debian 10


echo "are you set the apt proxy ?"
pause

# ------- ------- ------- 
# Install the openmediavault keyring manually:

apt-get install --yes gnupg
wget -O "/etc/apt/trusted.gpg.d/openmediavault-archive-keyring.asc" https://packages.openmediavault.org/public/archive.key
apt-key add "/etc/apt/trusted.gpg.d/openmediavault-archive-keyring.asc"

# ------- ------- ------- 
# Add the package repositories:


cat <<EOF >> /etc/apt/sources.list.d/openmediavault.list
deb https://packages.openmediavault.org/public usul main
# deb https://downloads.sourceforge.net/project/openmediavault/packages usul main
## Uncomment the following line to add software from the proposed repository.
# deb https://packages.openmediavault.org/public usul-proposed main
# deb https://downloads.sourceforge.net/project/openmediavault/packages usul-proposed main
## This software is not part of OpenMediaVault, but is offered by third-party
## developers as a service to OpenMediaVault users.
# deb https://packages.openmediavault.org/public usul partner
# deb https://downloads.sourceforge.net/project/openmediavault/packages usul partner
EOF

# ------- ------- ------- 
# Install the openmediavault package:

export LANG=C.UTF-8
export DEBIAN_FRONTEND=noninteractive
export APT_LISTCHANGES_FRONTEND=none
wget -O "/etc/apt/trusted.gpg.d/openmediavault-archive-keyring.asc" https://packages.openmediavault.org/public/archive.key
apt-key add "/etc/apt/trusted.gpg.d/openmediavault-archive-keyring.asc"
apt-get update
apt-get --yes --auto-remove --show-upgraded \
    --allow-downgrades --allow-change-held-packages \
    --no-install-recommends \
    --option Dpkg::Options::="--force-confdef" \
    --option DPkg::Options::="--force-confold" \
    install openmediavault-keyring openmediavault

omv-confdbadm populate
