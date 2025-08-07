#!/bin/bash

set -xe

revision=$1
url=https://code.metoffice.gov.uk/svn/ancil/ants/
regex="^([^=\s]*)\s*=\s*${revision}$"
# Get version from the SVN property fcm:revision
version=$(svn propget fcm:revision $url | awk 'match($0, /'"$regex"'/, m) {print m[1]}')
if [ -z "$version" ]; then
  echo "::error::ants version could not be retrieved from revision '$revision'." >&2
  exit 1
fi
# Remove any leading 'v' or 'vn'
version=${version#v}
version=${version#n}
echo "${version}"