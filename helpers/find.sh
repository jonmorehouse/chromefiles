# exclude directory when finding files

# find . -path ./.git -prune -o -print
# prune what is before
# path needs to be relative
# -o stands for or -- so we want to prune the path or print


# find . -path ./.git -prune -o -type f -and -name "*.md" -print
# find all files in a path that are not in the git directory and are a file that has the *.md ending
