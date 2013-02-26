# go through a list of elements and pipe the contents to xargs to safely run a command
# cat folders-propertyid.txt| awk '{ print $1" "$3 }' | xargs -n 2 mv