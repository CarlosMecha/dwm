#!/bin/bash
# Adds the master branch from
# dwm official repo, and pushes it to the this
# repo on a branch called `official`.

# Add DWM official repo
git remote add official git://git.suckless.org/dwm

# Fetch master
git fetch official

# Use branch `official` as `official/master`
git checkout -b official --track official/master

# Push the changes to the origin repo
git push -u origin official
