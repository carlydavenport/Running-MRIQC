#!/bin/bash
#run_mriqc_batch_good.sh

subfolder_array=(*/)
for dir in "${subfolder_array[@]}"; do
	sub_id=${dir:0:${#dir}-1}
	echo $sub_id
	docker run -it --rm \
-v /home/carly/Desktop/data/thesis_project_cohort_BIDS:/data:ro \
-v /home/carly/Desktop/derivatives/MRIQC:/out \
nipreps/mriqc:latest /data /out participant --participant_label $sub_id --ica --verbose-reports
done