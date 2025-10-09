#!/bin/sh

#get AdList
LST="$(curl --silent --insecure -4 https://easylist-downloads.adblockplus.org/ruadlist+easylist.txt)"

#get domains from AdList
echo "$LST" | "$(dirname $0)/selectDomainNamesFromAdlist.pl" | grep -v '^$' | sort -u > './ruadlist_easylist.txt'