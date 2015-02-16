# django-server
Scripts and templates to ease deployment

Linode servers have a postcreation script, the postcreation script is run
and the machine gets salt installated and a usual project is configured.

Use linode/stackscripts in your Ubuntu Linode instance and fill the fields
of repository, access credentials to bitbucket, when prompted to

With salt we configure all the needed files for services running in a machine
 * Database creation
 * creation of virtualenv
 * uwsgi configuration
 * nginx configuration
 * upstart configuration
