### scripts4owncloud
Scripts for Owncloud\Nextcloud
-----------------------------

If you want scripts to work in Nextcloud - change the table prefix

##### link-auto-rm

With this script, you can create links for one download. After the file has been downloaded, the link (not file) will be automatically deleted. Add script in system.d 
You can specify the link name in variable $link_name. Script will be triggered by this name.
Also, depending on the number of requests to the server, it is possible to control the number of records read per iteration. If someone can suggest universal solution - I will be appreciate 

##### rm-old-files

Script remove files, older than 30 days, when used disk spaсe reaches 85%, except files which starred as Favorite in Web-GUI.Add script in crontab
You can configure age of the files in 13th line, by set "-ctime: value, and used space threshold in "-gt" in 9th line 
