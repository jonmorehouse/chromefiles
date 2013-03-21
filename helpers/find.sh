# exclude directory when finding files

# find . -path ./.git -prune -o -print
# prune what is before
# path needs to be relative
# -o stands for or -- so we want to prune the path or print


# find . -type f \( ! -iname "*.md" \) -exec mv {} {}.sh \; //one liner to find based on an exclude regex
# find . -path ./.git -prune -o -type f -and -name "*.md" -print
# find all files in a path that are not in the git directory and are a file that has the *.md ending

# find particular files and then pass to xargs
# ~/Desktop $ find . -type f \( ! -name "*and*" ! -name ".ds*" \) -print0 | xargs -0 -I file sh -c "let z=$z+1 && echo $z"


# find a word recursively from a directory
# grep -nr "search pattern" .

# great examples of advanced sed / awk one-liners etc ....
# http://www.catonmat.net/blog/awk-one-liners-explained-part-one/
# awk for loop example ...
# for i in *
#	echo $i | awk '{ for (i = 4; i <= NF; i++) s=s"_"$i; print s}'

