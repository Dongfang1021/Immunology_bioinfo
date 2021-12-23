minnn extract --pattern '^(UMI:NNNNNNNNNNNNNN)\*' --input data/Daudi_R1_S40_R1_001.fastq.gz data/Daudi_R1_S40_R2_001.fastq.gz --output Daudi_R1/extracted.mif
minnn sort --input Daudi_R1/extracted.mif --output Daudi_R1/sorted.mif --groups UMI
minnn correct --input Daudi_R1/sorted.mif --output Daudi_R1/corrected.mif --groups UMI
minnn stat-groups --input Daudi_R1/corrected.mif --output Daudi_R1/stat-groups_corrected.txt --groups UMI
minnn sort --input Daudi_R1/corrected.mif --output Daudi_R1/corrected_sorted.mif --groups UMI
minnn consensus --input Daudi_R1/corrected_sorted.mif --output Daudi_R1/consensus.mif --groups UMI --max-consensuses-per-cluster 1
minnn filter --input Daudi_R1/consensus.mif --output Daudi_R1/filtered_consensus.mif --MinConsensusReads=5
minnn mif2fastq --input Daudi_R1/filtered_consensus.mif --group R1=Daudi_R1/consensus_R1.fastq.gz --group R2=Daudi_R1/consensus_R2.fastq.gz
