#!/usr/bin/env bash
set -e

if [[ "$1" = "start" ||  "$1" = 'crashplan' ]]; then
#	/usr/bin/sabnzbdplus --config-file /config --console --server 0.0.0.0
	echo ...
fi

$@
