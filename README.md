### scripts4owncloud
Scripts for Owncloud\Nextcloud
-----------------------------

If you want scripts to work in Nextcloud - change the table prefix

##### link-auto-rm

With this script, you can create links for one download. After the file is downloaded, the link (not file) will be automatically deleted. 
You can specify the link name in variable $link_name. By this name, script will be triggered
Also, depending on the number of requests to the server, it is possible to control the number of records read per iteration.

##### rm-old-files

Script remove files, older than 30 days, when used disk spaсe reaches 85%, except files which starred as Favorite in Web-GUI.
You can configure age of the files in 13th line, by set -ctime value
