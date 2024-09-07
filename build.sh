#!/bin/bash

set -ouex pipefail

RELEASE="$(rpm -E %fedora)"

# Install earlyoom
rpm-ostree install earlyoom
systemctl enable earlyoom
