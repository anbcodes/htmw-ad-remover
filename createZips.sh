#!/bin/bash
workingdir=`pwd`
foldername=`basename $workingdir`

exclude="'.git/**' '.git/' 'createZips.sh' '*.zip' '.gitignore'"

excludeFirefox=
excludeChrome=
for x in $exclude; do
    excludeFirefox="$excludeFirefox -x $x"
    excludeChrome="$excludeChrome -x \"$foldername/${x:1:-1}\""
done

excludeFirefox=${excludeFirefox:1}
excludeChrome=${excludeChrome:1}

firefoxZipCommand="zip $excludeFirefox -r HTMW-ad-removal-firefox.zip ."
eval "$firefoxZipCommand"

pushd ..
    chromeZipCommand="zip $excludeChrome -r '$foldername/HTMW-ad-removal-chrome.zip' '$foldername'"
    eval "$chromeZipCommand"
popd