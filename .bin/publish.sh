#!/bin/bash
set -x
set -euo pipefail

# Add SSH Key
eval $(ssh-agent -s)
ssh-agent -a /tmp/ssh_agent.sock > /dev/null
echo "$AUR_SSH_PRIVATE_KEY" | tr -d '\r' | ssh-add - > /dev/null
mkdir -p ~/.ssh && echo "StrictHostKeyChecking no" >> ~/.ssh/config

# Git Config
git config --global user.email "bot@souptik.dev"
git config --global user.name "GitHub Publish"

# Clone AUR Repo
git clone --single-branch --branch $AUR_GIT_BRANCH $AUR_GIT_REPOSITORY $HOME/aur-publish --depth 1
cd $HOME/aur-publish

# Copy PKGBUILD.
rm -rf PKGBUILD
cp -r $GITHUB_WORKSPACE/PKGBUILD ./PKGBUILD

# Build the source info.
rm -rf .SRCINFO
cp -r $GITHUB_WORKSPACE/.SRCINFO ./.SRCINFO

# Push the changes!
git add .
git status
git commit -m "Publish from GitHub $GITHUB_SHA"
git push origin $AUR_GIT_BRANCH

set +x
