#!/bin/bash
#----
# git-blk install script
#----

set -eu

readonly root=$(cd "$(dirname "$0")" && pwd)
cd "$root" || exit 1

readonly git_dir="$(dirname "$(which git)")"

set -x

cp -iv git-blk "$git_dir" \
  && chmod +x "$git_dir/git-blk"
