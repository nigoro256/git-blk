# git-blk

```
Usage:
  git blk <repos-name> <git-command>

Description:
  Execute git command on multiple repositories.

  This command require config file './.git-blk'.
  '.git-blk' example:
  ----
  [repos]
  # repos-name = repo-dir repo-dir ...

  all   = repo1 repo2 repo3
  large = repo1 repo2
  ----

Example:
  git blk all fetch --all
    > git -C repo1 fetch --all
    > git -C repo2 fetch --all
    > git -C repo3 fetch --all

  git blk large lfs install --local
    > git -C repo1 lfs install --local
    > git -C repo2 lfs install --local

How to bulk commit:
  1. Edit commit message file. (e.g. `vim COMMIT_MSG.txt`)
  2. Execute `git blk <repos-name> commit -F ../COMMIT_MSG.txt`
```

## Install

1. `chmod +x ./install.sh`
1. `./install.sh`

**Manual**

1. Copy `git-blk` to git binary folder. (e.g. `/usr/local/bin/`)
1. Add execute permission. (e.g. `chmod +x /usr/local/bin/git-blk`)
