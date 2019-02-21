#!/usr/bin/env bash
# Make temporary folder for running
mkdir "$PWD/../tmp" &&
tmp="$PWD/../tmp/" &&

# Find .jar's and copy into temp folder
base="$( cd "$( dirname "${BASH_SOURCE[0]}" )" >/dev/null 2>&1 && pwd )" &&
cp -R -n "$base/jar_files/." $tmp &&

# Copy code into temp folder
test="$PWD/test1.sikuli" #TODO
cp -R -n $test $tmp &&

# Run app
"$tmp/SikuliX.app/run" -r $test --args $@ &&

# Close/fail gracefully
echo ::RUN SUCCESS:: && rm -rf $tmp || echo ::RUN FAILED:: && rm -rf $tmp