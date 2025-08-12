#!/bin/bash

set -xe

url=https://code.metoffice.gov.uk/svn/um/mule/
# Get SVN property fcm:revision
props=$(svn propget fcm:revision $url)
# Get the latest prop based on the highest revision number (number at the right-hand side of the equal sign)
# We remove any blanks around the equal sign, then sort by the second field setting the field
# separator as the equal sign, then we take the last entry
latest_prop=$(echo "$props" | sed 's/\s*=\s*/=/' | sort -t= -k2,2n | tail -n1)
# The latest revision is the number after the equal sign
latest_revision=$(echo "$latest_prop" | cut -d= -f2)
# The latest version is the number before the equal sign
latest_version=$(echo "$latest_prop" | cut -d= -f1)
# Remove any leading 'v' or 'vn' from the version
latest_version=${latest_version#v}
latest_version=${latest_version#n}
echo "$latest_version $latest_revision"