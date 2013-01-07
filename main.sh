#this is the main dotfile loader
# in the future 
source paths.sh  #general path config
source config.sh  #general system configuration
 
# load in custom shortcuts etc
source directories.sh #include the proper directory shortcuts I have configured
source personal.sh  #these are sshs, passwords, logins etc THIS SHOULD NOT BE COMMITED
source programs/main.sh #these are installed programs that I actually have installed. Longer shell scripts etc
source helpers/main.sh #these are one liners -- generally will not have many shortcuts but more can be enabled for each segment

