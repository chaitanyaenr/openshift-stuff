#!/bin/bash

git clone https://github.com/chaitanyaenr/pipeline-groovy-scripts.git /watch/pipeline-groovy-scripts
cd /watch/pipeline-groovy-scripts
while true; do
	#git clone https://github.com/chaitanyaenr/aos-cd-jobs.git /watch/aos-cd-jobs && cd /watch/aos-cd-jobs && git checkout alderaan
        git pull
	sleep 10
done
