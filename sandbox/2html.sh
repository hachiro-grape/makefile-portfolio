#!/bin/zsh
#TODO: zparseoptsで

readonly prefix='<!-- require('
readonly suffix=') -->'

readonly tmpl=$1
readonly tmphtml=$(mktemp $tmpl.XXXXXX)

cat $tmpl > $tmphtml
for prtl in ${@:2}; do
  escaped=`echo $prtl | gsed "s:\/:\\\\\\\\\/:g"`
  target="$prefix'$escaped'$suffix"
  gsed -i -e "/$target/r $prtl" -e "/$target/d" $tmphtml
done

cat $tmphtml && rm -f $tmphtml
