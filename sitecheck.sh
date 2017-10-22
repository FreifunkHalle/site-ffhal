#!/bin/sh
echo sitecheck for $1
lua -e "gna = $( cat $1 )"
