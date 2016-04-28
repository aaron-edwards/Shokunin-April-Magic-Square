path_to_trump=$(which TRUMP)
if [ -x "$path_to_trump" ] ; then
  TRUMP magic.ts | tr '\n' '\_' | tr '|' '\n' | sed 's/.*-//' | tr '\_' '\t'
else
  echo "TRUMP not found on the path"
fi
