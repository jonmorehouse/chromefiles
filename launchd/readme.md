Mac Launch Agents / LaunchD
=

This directory is useful for storing the launch agents I'm currently using on my mac machine.
Launchagents and cronjobs using launchd can be placed here
I'm assuming that the files that are running this are user-local and should thus be installed to the ~/Library/LaunchAgents directory


Reference:

	http://developer.apple.com/library/mac/#documentation/MacOSX/Conceptual/BPSystemStartup/Chapters/CreatingLaunchdJobs.html


Personal Notes:

Make sure you run launchctl load -w .plist as the intiializer for the launchdameon
Make sure you don't run as sudo, otherwise will expect root ownership

