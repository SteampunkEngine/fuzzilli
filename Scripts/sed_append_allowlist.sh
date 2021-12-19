#!/usr/bin/bash
if [[ -z "$1" ]]; then
  echo "Usage: sed_append_allowlist.sh <file>"
  exit -1;
fi
sed -i 's/\-fsanitize-coverage=trace\-pc\-guard/\-fsanitize\-coverage=trace\-pc\-guard -fsanitize-coverage-allowlist=..\/..\/allowlist.txt/' "$1"
#sed -i '/\-fsanitize-coverage=trace\-pc\-guard/\-fsanitize-coverage-allowlist=..\/..\/allowlist.txt/' "$1"
