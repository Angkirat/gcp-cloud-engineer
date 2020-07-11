## View the ReadMe file
cat README-cloudshell.txt
# Welcome to Google Cloud Shell, a tool for managing resources hosted on Google Cloud Platform!
# The machine comes pre-installed with the Google Cloud SDK and other popular developer tools.

# Your 5GB home directory will persist across sessions, but the VM is ephemeral and will be reset
# approximately 20 minutes after your session ends. No system-wide change will persist beyond that.

# Type "gcloud help" to get help on using Cloud SDK. For more examples, visit
# https://cloud.google.com/shell/docs/quickstart and https://cloud.google.com/shell/docs/examples

# Type "cloudshell help" to get help on using the "cloudshell" utility.  Common functionality is
# aliased to short commands in your shell, for example, you can type "dl <filename>" at Bash prompt to
# download a file. Type "cloudshell aliases" to see these commands.

# Type "help" to see this message any time. Type "builtin help" to see Bash interpreter help.

## Set the project
# SYNTAX : gcloud config set project [PROJECT_ID]
gcloud config set project playground-s-11-a36366

## To download a file from the cloudshell to the local pc
# SYNTAX : dl [FILE_NAME]
dl  README-cloudshell.txt

## For Tutorial purpose only
git clone https://github.com/Angkirat/gcp-cloud-engineer.git

## To get full list of cofigurations from gcloud we use 
gcloud config list