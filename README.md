# apt_update
## a simple update script for Advanced Packaging Tool (apt)

a very simple update script to use on distros utilizing the APT package manager.

### A couple precautions - you can choose to follow them if you wish
--------------------------------------------------------------------------------------------------
* I make the file hidden (.update.sh)
* change ownership of the script to that of root ```chown 0:0 /root/.update.sh```
* Store it in the ```/root``` directory 
* Remove all permissions for everyone except root ```chmod 700 /root/.update.sh```
* To run the update script execute ```sudo /root/.update.sh```
