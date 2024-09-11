#!/bin/bash

set -ouex pipefail

RELEASE="$(rpm -E %fedora)"

# Install nice to haves
rpm-ostree install screen

# Install earlyoom
rpm-ostree install earlyoom
systemctl enable earlyoom

# Remove unnecessary packages
rpm-ostree cleanup -m

# Remove temporary files and caches
rm -rf /var/cache/dnf /var/lib/dnf /tmp/* /var/tmp/*
