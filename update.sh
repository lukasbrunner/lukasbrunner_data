#!/bin/bash

pushd /users/staff/lbrunner/Files/Other/homepage_data/ >/dev/null 2>&1

# newest file
fn=$(ls -t /users/staff/lbrunner/Coding/tas_to_date/figures/austria/2022/tas_both_austria_2022_*_stepsize-auto_delay-40_size-1000.gif | head -n1) >/dev/null 2>&1

# update if a newer version is available
/usr/bin/rsync -auv $fn /users/staff/lbrunner/Files/Other/homepage_data/austria/2022/tas_both_austria_2022_newest_stepsize-auto_delay-40_size-1000.gif >/dev/null 2>&1

# try to push potential updates
git commit -am "Automatic commit" >/dev/null 2>&1
git push >/dev/null 2>&1

popd >/dev/null 2>&1
