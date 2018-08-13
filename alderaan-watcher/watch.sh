#!/bin/bash

##jobs_workdir=/root/aos-cd-jobs/alderaan/jjb
jobs_workdir=/root/pipeline-groovy-scripts

# check if jenkins-jobs is installed
which jenkins-jobs &>/dev/null
if [[ $? != 0 ]]; then
	echo "Looks like the jenkins-jobs binary is not installed, please check"
	exit 1
fi

# Create the jenkins jobs
while true; do
	sleep 1
	echo "Sleeping for 1 sec"
	for template in $(ls $jobs_workdir/jjb); do
		#jenkins-jobs update $jobs_workdir/dynamic/$template
		jenkins-jobs update $jobs_workdir/jjb/$template
	done
done
