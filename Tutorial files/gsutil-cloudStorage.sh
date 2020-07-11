## This is a Demo Syntax file for Command line entries to control the cloud storage
## The main command used for handling cloud storage is gsutil

## Set the project in which the bucket belongs
gcloud config set project service-exploration-lab-283003

## get help for commands
# gsutil [command] --help

## create a new bucket full details of options and there values can be got by gsutil mb help
# gsutil mb [-b (on|off)] [-c <class>] [-l <location>] [-p <proj_id>] [--<retention time>] gs://<bucket_name>...
gsutil mb -l NORTHAMERICA-NORTHEAST1 gs://tutorial-angkirat-bucket-1

## get bucket list
gsutil ls
# gs://tutorial-angkirat-bucket-1/

## Content of bucketlabel.json
# cat bucketlabel.json
# {
#     "function":"learning"
# }

## set label to a bucket
# gsutil label set <json-file with labels in it> gs://<bucket-name>
gsutil label set bucketlabel.json gs://tutorial-angkirat-bucket-1
## get the bucket labels
# gsutil labl get gs://<bucket-name>
gsutil label get gs://tutorial-angkirat-bucket-1
# {
#   "function": "learning"
# }

## Change bucket label
# gsutil label ch -l <new label key>:<new label value> gs://<bucket-name>
gsutil label ch -l storage:temporary gs://tutorial-angkirat-bucket-1
# Setting label configuration on gs://tutorial-angkirat-bucket-1/...
gsutil label get gs://tutorial-angkirat-bucket-1
# {
#   "function": "learning",
#   "storage": "temporary"
# }

## Get bucket versioning status (suspended is off and Enabled means on)
# gsutil versioning get gs://<bucket-name>
gsutil versioning get gs://tutorial-angkirat-bucket-1
# gs://tutorial-angkirat-bucket-1: Suspended

## Turn on versioning for the bucket
# gsutil versioning set on gs://<bucket-name>
gsutil versioning set on gs://tutorial-angkirat-bucket-1
# Enabling versioning for gs://tutorial-angkirat-bucket-1/...
gsutil versioning get gs://tutorial-angkirat-bucket-1
# gs://tutorial-angkirat-bucket-1: Enabled

## load data in the bucket
# gsutil cp <file-path> gs://<bucket-name>
# gsutil cp README-cloudshell.txt gs://tutorial-angkirat-bucket-1
# Copying file://README-cloudshell.txt [Content-Type=text/plain]...
# / [1 files][  913.0 B/  913.0 B]
# Operation completed over 1 objects/913.0 B.

##load folder in bucket
# gsutil cp -r <folder-path> gs://<bucket-name>
# gsutil cp -r temporaryFiles gs://tutorial-angkirat-bucket-1
# Copying file://temporaryFiles/0.pdf [Content-Type=application/pdf]...
# Copying file://temporaryFiles/Calendar_web_version_31st_December.pdf [Content-Type=application/pdf]...
# Copying file://temporaryFiles/0-2.pdf [Content-Type=application/pdf]...
# | [3 files][  3.9 MiB/  3.9 MiB]

## list specific contents of a bucket
# gsutil ls gs://<bucket-name>/[<object/object folder>]
gsutil ls gs://tutorial-angkirat-bucket-1
# gs://tutorial-angkirat-bucket-1/README-cloudshell.txt
# gs://tutorial-angkirat-bucket-1/temporaryFiles/

## list complete list of bucket items including folder content
# gsutil ls gs://<bucket-name>/**
gsutil ls gs://tutorial-angkirat-bucket-1/**
# gs://tutorial-angkirat-bucket-1/README-cloudshell.txt
# gs://tutorial-angkirat-bucket-1/temporaryFiles/0-2.pdf
# gs://tutorial-angkirat-bucket-1/temporaryFiles/0.pdf
# gs://tutorial-angkirat-bucket-1/temporaryFiles/Calendar_web_version_31st_December.pdf
