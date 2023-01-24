#!/bin/bash
#run_mriqc_group.sh

subfolder_array=(*/)
for dir in "${subfolder_array[@]}"; do
	sub_id=${dir:0:${#dir}-1}
	echo $sub_id
	docker run -it --rm \
-v /home/carly/Desktop/data/thesis_project_cohort_BIDS:/data:ro \
-v /home/carly/Desktop/derivatives/MRIQC:/out \
nipreps/mriqc:latest /data /out group
done
