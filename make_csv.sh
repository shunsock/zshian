#!/bin/bash

# Remove lines starting with '#'
grep -v '^#' .zsh/git/alias.zsh | \
# Remove 'alias ' at the start of each line
perl -pe 's/^alias //' | \
# Replace '=' with ','
perl -pe "s/='/,/" | \
# Remove trailing quote
perl -pe "s/'$//" | \
# Remove blank lines
grep -v '^$' > .zsh/doc/git_alias.csv
