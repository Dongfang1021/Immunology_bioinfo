
mkdir Daudi_R1
minnn extract --pattern '^(UMI:NNNNNNNNNNNNNN)\*' --input data/Daudi_R1_S40_R1_001.fastq.gz data/Daudi_R1_S40_R2_001.fastq.gz --output Daudi_R1/extracted.mif
minnn sort --input Daudi_R1/extracted.mif --output Daudi_R1/sorted.mif --groups UMI
minnn correct --input Daudi_R1/sorted.mif --output Daudi_R1/corrected.mif --groups UMI
minnn stat-groups --input Daudi_R1/corrected.mif --output Daudi_R1/stat-groups_corrected.txt --groups UMI
minnn sort --input Daudi_R1/corrected.mif --output Daudi_R1/corrected_sorted.mif --groups UMI
minnn consensus --input Daudi_R1/corrected_sorted.mif --output Daudi_R1/consensus.mif --groups UMI --max-consensuses-per-cluster 1
minnn filter --input Daudi_R1/consensus.mif --output Daudi_R1/filtered_consensus.mif --MinConsensusReads=5
minnn mif2fastq --input Daudi_R1/filtered_consensus.mif --group R1=Daudi_R1/consensus_R1.fastq.gz --group R2=Daudi_R1/consensus_R2.fastq.gz

    

mkdir Daudi_R2
minnn extract --pattern '^(UMI:NNNNNNNNNNNNNN)\*' --input data/Daudi_R2_S41_R1_001.fastq.gz data/Daudi_R2_S41_R2_001.fastq.gz --output Daudi_R2/extracted.mif
minnn sort --input Daudi_R2/extracted.mif --output Daudi_R2/sorted.mif --groups UMI
minnn correct --input Daudi_R2/sorted.mif --output Daudi_R2/corrected.mif --groups UMI
minnn stat-groups --input Daudi_R2/corrected.mif --output Daudi_R2/stat-groups_corrected.txt --groups UMI
minnn sort --input Daudi_R2/corrected.mif --output Daudi_R2/corrected_sorted.mif --groups UMI
minnn consensus --input Daudi_R2/corrected_sorted.mif --output Daudi_R2/consensus.mif --groups UMI --max-consensuses-per-cluster 1
minnn filter --input Daudi_R2/consensus.mif --output Daudi_R2/filtered_consensus.mif --MinConsensusReads=5
minnn mif2fastq --input Daudi_R2/filtered_consensus.mif --group R1=Daudi_R2/consensus_R1.fastq.gz --group R2=Daudi_R2/consensus_R2.fastq.gz

    

mkdir Daudi_R3
minnn extract --pattern '^(UMI:NNNNNNNNNNNNNN)\*' --input data/Daudi_R3_S42_R1_001.fastq.gz data/Daudi_R3_S42_R2_001.fastq.gz --output Daudi_R3/extracted.mif
minnn sort --input Daudi_R3/extracted.mif --output Daudi_R3/sorted.mif --groups UMI
minnn correct --input Daudi_R3/sorted.mif --output Daudi_R3/corrected.mif --groups UMI
minnn stat-groups --input Daudi_R3/corrected.mif --output Daudi_R3/stat-groups_corrected.txt --groups UMI
minnn sort --input Daudi_R3/corrected.mif --output Daudi_R3/corrected_sorted.mif --groups UMI
minnn consensus --input Daudi_R3/corrected_sorted.mif --output Daudi_R3/consensus.mif --groups UMI --max-consensuses-per-cluster 1
minnn filter --input Daudi_R3/consensus.mif --output Daudi_R3/filtered_consensus.mif --MinConsensusReads=5
minnn mif2fastq --input Daudi_R3/filtered_consensus.mif --group R1=Daudi_R3/consensus_R1.fastq.gz --group R2=Daudi_R3/consensus_R2.fastq.gz

    

mkdir Jurkat_R1
minnn extract --pattern '^(UMI:NNNNNNNNNNNNNN)\*' --input data/Jurkat_R1_S37_R1_001.fastq.gz data/Jurkat_R1_S37_R2_001.fastq.gz --output Jurkat_R1/extracted.mif
minnn sort --input Jurkat_R1/extracted.mif --output Jurkat_R1/sorted.mif --groups UMI
minnn correct --input Jurkat_R1/sorted.mif --output Jurkat_R1/corrected.mif --groups UMI
minnn stat-groups --input Jurkat_R1/corrected.mif --output Jurkat_R1/stat-groups_corrected.txt --groups UMI
minnn sort --input Jurkat_R1/corrected.mif --output Jurkat_R1/corrected_sorted.mif --groups UMI
minnn consensus --input Jurkat_R1/corrected_sorted.mif --output Jurkat_R1/consensus.mif --groups UMI --max-consensuses-per-cluster 1
minnn filter --input Jurkat_R1/consensus.mif --output Jurkat_R1/filtered_consensus.mif --MinConsensusReads=5
minnn mif2fastq --input Jurkat_R1/filtered_consensus.mif --group R1=Jurkat_R1/consensus_R1.fastq.gz --group R2=Jurkat_R1/consensus_R2.fastq.gz

    

mkdir Jurkat_R2
minnn extract --pattern '^(UMI:NNNNNNNNNNNNNN)\*' --input data/Jurkat_R2_S38_R1_001.fastq.gz data/Jurkat_R2_S38_R2_001.fastq.gz --output Jurkat_R2/extracted.mif
minnn sort --input Jurkat_R2/extracted.mif --output Jurkat_R2/sorted.mif --groups UMI
minnn correct --input Jurkat_R2/sorted.mif --output Jurkat_R2/corrected.mif --groups UMI
minnn stat-groups --input Jurkat_R2/corrected.mif --output Jurkat_R2/stat-groups_corrected.txt --groups UMI
minnn sort --input Jurkat_R2/corrected.mif --output Jurkat_R2/corrected_sorted.mif --groups UMI
minnn consensus --input Jurkat_R2/corrected_sorted.mif --output Jurkat_R2/consensus.mif --groups UMI --max-consensuses-per-cluster 1
minnn filter --input Jurkat_R2/consensus.mif --output Jurkat_R2/filtered_consensus.mif --MinConsensusReads=5
minnn mif2fastq --input Jurkat_R2/filtered_consensus.mif --group R1=Jurkat_R2/consensus_R1.fastq.gz --group R2=Jurkat_R2/consensus_R2.fastq.gz

    

mkdir Jurkat_R3
minnn extract --pattern '^(UMI:NNNNNNNNNNNNNN)\*' --input data/Jurkat_R3_S39_R1_001.fastq.gz data/Jurkat_R3_S39_R2_001.fastq.gz --output Jurkat_R3/extracted.mif
minnn sort --input Jurkat_R3/extracted.mif --output Jurkat_R3/sorted.mif --groups UMI
minnn correct --input Jurkat_R3/sorted.mif --output Jurkat_R3/corrected.mif --groups UMI
minnn stat-groups --input Jurkat_R3/corrected.mif --output Jurkat_R3/stat-groups_corrected.txt --groups UMI
minnn sort --input Jurkat_R3/corrected.mif --output Jurkat_R3/corrected_sorted.mif --groups UMI
minnn consensus --input Jurkat_R3/corrected_sorted.mif --output Jurkat_R3/consensus.mif --groups UMI --max-consensuses-per-cluster 1
minnn filter --input Jurkat_R3/consensus.mif --output Jurkat_R3/filtered_consensus.mif --MinConsensusReads=5
minnn mif2fastq --input Jurkat_R3/filtered_consensus.mif --group R1=Jurkat_R3/consensus_R1.fastq.gz --group R2=Jurkat_R3/consensus_R2.fastq.gz

    

mkdir PB1_10ng_R1
minnn extract --pattern '^(UMI:NNNNNNNNNNNNNN)\*' --input data/PB1_10ng_R1_S4_R1_001.fastq.gz data/PB1_10ng_R1_S4_R2_001.fastq.gz --output PB1_10ng_R1/extracted.mif
minnn sort --input PB1_10ng_R1/extracted.mif --output PB1_10ng_R1/sorted.mif --groups UMI
minnn correct --input PB1_10ng_R1/sorted.mif --output PB1_10ng_R1/corrected.mif --groups UMI
minnn stat-groups --input PB1_10ng_R1/corrected.mif --output PB1_10ng_R1/stat-groups_corrected.txt --groups UMI
minnn sort --input PB1_10ng_R1/corrected.mif --output PB1_10ng_R1/corrected_sorted.mif --groups UMI
minnn consensus --input PB1_10ng_R1/corrected_sorted.mif --output PB1_10ng_R1/consensus.mif --groups UMI --max-consensuses-per-cluster 1
minnn filter --input PB1_10ng_R1/consensus.mif --output PB1_10ng_R1/filtered_consensus.mif --MinConsensusReads=5
minnn mif2fastq --input PB1_10ng_R1/filtered_consensus.mif --group R1=PB1_10ng_R1/consensus_R1.fastq.gz --group R2=PB1_10ng_R1/consensus_R2.fastq.gz

    

mkdir PB1_10ng_R2
minnn extract --pattern '^(UMI:NNNNNNNNNNNNNN)\*' --input data/PB1_10ng_R2_S5_R1_001.fastq.gz data/PB1_10ng_R2_S5_R2_001.fastq.gz --output PB1_10ng_R2/extracted.mif
minnn sort --input PB1_10ng_R2/extracted.mif --output PB1_10ng_R2/sorted.mif --groups UMI
minnn correct --input PB1_10ng_R2/sorted.mif --output PB1_10ng_R2/corrected.mif --groups UMI
minnn stat-groups --input PB1_10ng_R2/corrected.mif --output PB1_10ng_R2/stat-groups_corrected.txt --groups UMI
minnn sort --input PB1_10ng_R2/corrected.mif --output PB1_10ng_R2/corrected_sorted.mif --groups UMI
minnn consensus --input PB1_10ng_R2/corrected_sorted.mif --output PB1_10ng_R2/consensus.mif --groups UMI --max-consensuses-per-cluster 1
minnn filter --input PB1_10ng_R2/consensus.mif --output PB1_10ng_R2/filtered_consensus.mif --MinConsensusReads=5
minnn mif2fastq --input PB1_10ng_R2/filtered_consensus.mif --group R1=PB1_10ng_R2/consensus_R1.fastq.gz --group R2=PB1_10ng_R2/consensus_R2.fastq.gz

    

mkdir PB1_10ng_R3
minnn extract --pattern '^(UMI:NNNNNNNNNNNNNN)\*' --input data/PB1_10ng_R3_S6_R1_001.fastq.gz data/PB1_10ng_R3_S6_R2_001.fastq.gz --output PB1_10ng_R3/extracted.mif
minnn sort --input PB1_10ng_R3/extracted.mif --output PB1_10ng_R3/sorted.mif --groups UMI
minnn correct --input PB1_10ng_R3/sorted.mif --output PB1_10ng_R3/corrected.mif --groups UMI
minnn stat-groups --input PB1_10ng_R3/corrected.mif --output PB1_10ng_R3/stat-groups_corrected.txt --groups UMI
minnn sort --input PB1_10ng_R3/corrected.mif --output PB1_10ng_R3/corrected_sorted.mif --groups UMI
minnn consensus --input PB1_10ng_R3/corrected_sorted.mif --output PB1_10ng_R3/consensus.mif --groups UMI --max-consensuses-per-cluster 1
minnn filter --input PB1_10ng_R3/consensus.mif --output PB1_10ng_R3/filtered_consensus.mif --MinConsensusReads=5
minnn mif2fastq --input PB1_10ng_R3/filtered_consensus.mif --group R1=PB1_10ng_R3/consensus_R1.fastq.gz --group R2=PB1_10ng_R3/consensus_R2.fastq.gz

    

mkdir PB1_250ng_R1
minnn extract --pattern '^(UMI:NNNNNNNNNNNNNN)\*' --input data/PB1_250ng_R1_S10_R1_001.fastq.gz data/PB1_250ng_R1_S10_R2_001.fastq.gz --output PB1_250ng_R1/extracted.mif
minnn sort --input PB1_250ng_R1/extracted.mif --output PB1_250ng_R1/sorted.mif --groups UMI
minnn correct --input PB1_250ng_R1/sorted.mif --output PB1_250ng_R1/corrected.mif --groups UMI
minnn stat-groups --input PB1_250ng_R1/corrected.mif --output PB1_250ng_R1/stat-groups_corrected.txt --groups UMI
minnn sort --input PB1_250ng_R1/corrected.mif --output PB1_250ng_R1/corrected_sorted.mif --groups UMI
minnn consensus --input PB1_250ng_R1/corrected_sorted.mif --output PB1_250ng_R1/consensus.mif --groups UMI --max-consensuses-per-cluster 1
minnn filter --input PB1_250ng_R1/consensus.mif --output PB1_250ng_R1/filtered_consensus.mif --MinConsensusReads=5
minnn mif2fastq --input PB1_250ng_R1/filtered_consensus.mif --group R1=PB1_250ng_R1/consensus_R1.fastq.gz --group R2=PB1_250ng_R1/consensus_R2.fastq.gz

    

mkdir PB1_250ng_R2
minnn extract --pattern '^(UMI:NNNNNNNNNNNNNN)\*' --input data/PB1_250ng_R2_S11_R1_001.fastq.gz data/PB1_250ng_R2_S11_R2_001.fastq.gz --output PB1_250ng_R2/extracted.mif
minnn sort --input PB1_250ng_R2/extracted.mif --output PB1_250ng_R2/sorted.mif --groups UMI
minnn correct --input PB1_250ng_R2/sorted.mif --output PB1_250ng_R2/corrected.mif --groups UMI
minnn stat-groups --input PB1_250ng_R2/corrected.mif --output PB1_250ng_R2/stat-groups_corrected.txt --groups UMI
minnn sort --input PB1_250ng_R2/corrected.mif --output PB1_250ng_R2/corrected_sorted.mif --groups UMI
minnn consensus --input PB1_250ng_R2/corrected_sorted.mif --output PB1_250ng_R2/consensus.mif --groups UMI --max-consensuses-per-cluster 1
minnn filter --input PB1_250ng_R2/consensus.mif --output PB1_250ng_R2/filtered_consensus.mif --MinConsensusReads=5
minnn mif2fastq --input PB1_250ng_R2/filtered_consensus.mif --group R1=PB1_250ng_R2/consensus_R1.fastq.gz --group R2=PB1_250ng_R2/consensus_R2.fastq.gz

    

mkdir PB1_250ng_R3
minnn extract --pattern '^(UMI:NNNNNNNNNNNNNN)\*' --input data/PB1_250ng_R3_S12_R1_001.fastq.gz data/PB1_250ng_R3_S12_R2_001.fastq.gz --output PB1_250ng_R3/extracted.mif
minnn sort --input PB1_250ng_R3/extracted.mif --output PB1_250ng_R3/sorted.mif --groups UMI
minnn correct --input PB1_250ng_R3/sorted.mif --output PB1_250ng_R3/corrected.mif --groups UMI
minnn stat-groups --input PB1_250ng_R3/corrected.mif --output PB1_250ng_R3/stat-groups_corrected.txt --groups UMI
minnn sort --input PB1_250ng_R3/corrected.mif --output PB1_250ng_R3/corrected_sorted.mif --groups UMI
minnn consensus --input PB1_250ng_R3/corrected_sorted.mif --output PB1_250ng_R3/consensus.mif --groups UMI --max-consensuses-per-cluster 1
minnn filter --input PB1_250ng_R3/consensus.mif --output PB1_250ng_R3/filtered_consensus.mif --MinConsensusReads=5
minnn mif2fastq --input PB1_250ng_R3/filtered_consensus.mif --group R1=PB1_250ng_R3/consensus_R1.fastq.gz --group R2=PB1_250ng_R3/consensus_R2.fastq.gz

    

mkdir PB1_2ng_R1
minnn extract --pattern '^(UMI:NNNNNNNNNNNNNN)\*' --input data/PB1_2ng_R1_S1_R1_001.fastq.gz data/PB1_2ng_R1_S1_R2_001.fastq.gz --output PB1_2ng_R1/extracted.mif
minnn sort --input PB1_2ng_R1/extracted.mif --output PB1_2ng_R1/sorted.mif --groups UMI
minnn correct --input PB1_2ng_R1/sorted.mif --output PB1_2ng_R1/corrected.mif --groups UMI
minnn stat-groups --input PB1_2ng_R1/corrected.mif --output PB1_2ng_R1/stat-groups_corrected.txt --groups UMI
minnn sort --input PB1_2ng_R1/corrected.mif --output PB1_2ng_R1/corrected_sorted.mif --groups UMI
minnn consensus --input PB1_2ng_R1/corrected_sorted.mif --output PB1_2ng_R1/consensus.mif --groups UMI --max-consensuses-per-cluster 1
minnn filter --input PB1_2ng_R1/consensus.mif --output PB1_2ng_R1/filtered_consensus.mif --MinConsensusReads=5
minnn mif2fastq --input PB1_2ng_R1/filtered_consensus.mif --group R1=PB1_2ng_R1/consensus_R1.fastq.gz --group R2=PB1_2ng_R1/consensus_R2.fastq.gz

    

mkdir PB1_2ng_R2
minnn extract --pattern '^(UMI:NNNNNNNNNNNNNN)\*' --input data/PB1_2ng_R2_S2_R1_001.fastq.gz data/PB1_2ng_R2_S2_R2_001.fastq.gz --output PB1_2ng_R2/extracted.mif
minnn sort --input PB1_2ng_R2/extracted.mif --output PB1_2ng_R2/sorted.mif --groups UMI
minnn correct --input PB1_2ng_R2/sorted.mif --output PB1_2ng_R2/corrected.mif --groups UMI
minnn stat-groups --input PB1_2ng_R2/corrected.mif --output PB1_2ng_R2/stat-groups_corrected.txt --groups UMI
minnn sort --input PB1_2ng_R2/corrected.mif --output PB1_2ng_R2/corrected_sorted.mif --groups UMI
minnn consensus --input PB1_2ng_R2/corrected_sorted.mif --output PB1_2ng_R2/consensus.mif --groups UMI --max-consensuses-per-cluster 1
minnn filter --input PB1_2ng_R2/consensus.mif --output PB1_2ng_R2/filtered_consensus.mif --MinConsensusReads=5
minnn mif2fastq --input PB1_2ng_R2/filtered_consensus.mif --group R1=PB1_2ng_R2/consensus_R1.fastq.gz --group R2=PB1_2ng_R2/consensus_R2.fastq.gz

    

mkdir PB1_2ng_R3
minnn extract --pattern '^(UMI:NNNNNNNNNNNNNN)\*' --input data/PB1_2ng_R3_S3_R1_001.fastq.gz data/PB1_2ng_R3_S3_R2_001.fastq.gz --output PB1_2ng_R3/extracted.mif
minnn sort --input PB1_2ng_R3/extracted.mif --output PB1_2ng_R3/sorted.mif --groups UMI
minnn correct --input PB1_2ng_R3/sorted.mif --output PB1_2ng_R3/corrected.mif --groups UMI
minnn stat-groups --input PB1_2ng_R3/corrected.mif --output PB1_2ng_R3/stat-groups_corrected.txt --groups UMI
minnn sort --input PB1_2ng_R3/corrected.mif --output PB1_2ng_R3/corrected_sorted.mif --groups UMI
minnn consensus --input PB1_2ng_R3/corrected_sorted.mif --output PB1_2ng_R3/consensus.mif --groups UMI --max-consensuses-per-cluster 1
minnn filter --input PB1_2ng_R3/consensus.mif --output PB1_2ng_R3/filtered_consensus.mif --MinConsensusReads=5
minnn mif2fastq --input PB1_2ng_R3/filtered_consensus.mif --group R1=PB1_2ng_R3/consensus_R1.fastq.gz --group R2=PB1_2ng_R3/consensus_R2.fastq.gz

    

mkdir PB1_50ng_R1
minnn extract --pattern '^(UMI:NNNNNNNNNNNNNN)\*' --input data/PB1_50ng_R1_S7_R1_001.fastq.gz data/PB1_50ng_R1_S7_R2_001.fastq.gz --output PB1_50ng_R1/extracted.mif
minnn sort --input PB1_50ng_R1/extracted.mif --output PB1_50ng_R1/sorted.mif --groups UMI
minnn correct --input PB1_50ng_R1/sorted.mif --output PB1_50ng_R1/corrected.mif --groups UMI
minnn stat-groups --input PB1_50ng_R1/corrected.mif --output PB1_50ng_R1/stat-groups_corrected.txt --groups UMI
minnn sort --input PB1_50ng_R1/corrected.mif --output PB1_50ng_R1/corrected_sorted.mif --groups UMI
minnn consensus --input PB1_50ng_R1/corrected_sorted.mif --output PB1_50ng_R1/consensus.mif --groups UMI --max-consensuses-per-cluster 1
minnn filter --input PB1_50ng_R1/consensus.mif --output PB1_50ng_R1/filtered_consensus.mif --MinConsensusReads=5
minnn mif2fastq --input PB1_50ng_R1/filtered_consensus.mif --group R1=PB1_50ng_R1/consensus_R1.fastq.gz --group R2=PB1_50ng_R1/consensus_R2.fastq.gz

    

mkdir PB1_50ng_R2
minnn extract --pattern '^(UMI:NNNNNNNNNNNNNN)\*' --input data/PB1_50ng_R2_S8_R1_001.fastq.gz data/PB1_50ng_R2_S8_R2_001.fastq.gz --output PB1_50ng_R2/extracted.mif
minnn sort --input PB1_50ng_R2/extracted.mif --output PB1_50ng_R2/sorted.mif --groups UMI
minnn correct --input PB1_50ng_R2/sorted.mif --output PB1_50ng_R2/corrected.mif --groups UMI
minnn stat-groups --input PB1_50ng_R2/corrected.mif --output PB1_50ng_R2/stat-groups_corrected.txt --groups UMI
minnn sort --input PB1_50ng_R2/corrected.mif --output PB1_50ng_R2/corrected_sorted.mif --groups UMI
minnn consensus --input PB1_50ng_R2/corrected_sorted.mif --output PB1_50ng_R2/consensus.mif --groups UMI --max-consensuses-per-cluster 1
minnn filter --input PB1_50ng_R2/consensus.mif --output PB1_50ng_R2/filtered_consensus.mif --MinConsensusReads=5
minnn mif2fastq --input PB1_50ng_R2/filtered_consensus.mif --group R1=PB1_50ng_R2/consensus_R1.fastq.gz --group R2=PB1_50ng_R2/consensus_R2.fastq.gz

    

mkdir PB1_50ng_R3
minnn extract --pattern '^(UMI:NNNNNNNNNNNNNN)\*' --input data/PB1_50ng_R3_S9_R1_001.fastq.gz data/PB1_50ng_R3_S9_R2_001.fastq.gz --output PB1_50ng_R3/extracted.mif
minnn sort --input PB1_50ng_R3/extracted.mif --output PB1_50ng_R3/sorted.mif --groups UMI
minnn correct --input PB1_50ng_R3/sorted.mif --output PB1_50ng_R3/corrected.mif --groups UMI
minnn stat-groups --input PB1_50ng_R3/corrected.mif --output PB1_50ng_R3/stat-groups_corrected.txt --groups UMI
minnn sort --input PB1_50ng_R3/corrected.mif --output PB1_50ng_R3/corrected_sorted.mif --groups UMI
minnn consensus --input PB1_50ng_R3/corrected_sorted.mif --output PB1_50ng_R3/consensus.mif --groups UMI --max-consensuses-per-cluster 1
minnn filter --input PB1_50ng_R3/consensus.mif --output PB1_50ng_R3/filtered_consensus.mif --MinConsensusReads=5
minnn mif2fastq --input PB1_50ng_R3/filtered_consensus.mif --group R1=PB1_50ng_R3/consensus_R1.fastq.gz --group R2=PB1_50ng_R3/consensus_R2.fastq.gz

    

mkdir PB2_10ng_R1
minnn extract --pattern '^(UMI:NNNNNNNNNNNNNN)\*' --input data/PB2_10ng_R1_S16_R1_001.fastq.gz data/PB2_10ng_R1_S16_R2_001.fastq.gz --output PB2_10ng_R1/extracted.mif
minnn sort --input PB2_10ng_R1/extracted.mif --output PB2_10ng_R1/sorted.mif --groups UMI
minnn correct --input PB2_10ng_R1/sorted.mif --output PB2_10ng_R1/corrected.mif --groups UMI
minnn stat-groups --input PB2_10ng_R1/corrected.mif --output PB2_10ng_R1/stat-groups_corrected.txt --groups UMI
minnn sort --input PB2_10ng_R1/corrected.mif --output PB2_10ng_R1/corrected_sorted.mif --groups UMI
minnn consensus --input PB2_10ng_R1/corrected_sorted.mif --output PB2_10ng_R1/consensus.mif --groups UMI --max-consensuses-per-cluster 1
minnn filter --input PB2_10ng_R1/consensus.mif --output PB2_10ng_R1/filtered_consensus.mif --MinConsensusReads=5
minnn mif2fastq --input PB2_10ng_R1/filtered_consensus.mif --group R1=PB2_10ng_R1/consensus_R1.fastq.gz --group R2=PB2_10ng_R1/consensus_R2.fastq.gz

    

mkdir PB2_10ng_R2
minnn extract --pattern '^(UMI:NNNNNNNNNNNNNN)\*' --input data/PB2_10ng_R2_S17_R1_001.fastq.gz data/PB2_10ng_R2_S17_R2_001.fastq.gz --output PB2_10ng_R2/extracted.mif
minnn sort --input PB2_10ng_R2/extracted.mif --output PB2_10ng_R2/sorted.mif --groups UMI
minnn correct --input PB2_10ng_R2/sorted.mif --output PB2_10ng_R2/corrected.mif --groups UMI
minnn stat-groups --input PB2_10ng_R2/corrected.mif --output PB2_10ng_R2/stat-groups_corrected.txt --groups UMI
minnn sort --input PB2_10ng_R2/corrected.mif --output PB2_10ng_R2/corrected_sorted.mif --groups UMI
minnn consensus --input PB2_10ng_R2/corrected_sorted.mif --output PB2_10ng_R2/consensus.mif --groups UMI --max-consensuses-per-cluster 1
minnn filter --input PB2_10ng_R2/consensus.mif --output PB2_10ng_R2/filtered_consensus.mif --MinConsensusReads=5
minnn mif2fastq --input PB2_10ng_R2/filtered_consensus.mif --group R1=PB2_10ng_R2/consensus_R1.fastq.gz --group R2=PB2_10ng_R2/consensus_R2.fastq.gz

    

mkdir PB2_10ng_R3
minnn extract --pattern '^(UMI:NNNNNNNNNNNNNN)\*' --input data/PB2_10ng_R3_S18_R1_001.fastq.gz data/PB2_10ng_R3_S18_R2_001.fastq.gz --output PB2_10ng_R3/extracted.mif
minnn sort --input PB2_10ng_R3/extracted.mif --output PB2_10ng_R3/sorted.mif --groups UMI
minnn correct --input PB2_10ng_R3/sorted.mif --output PB2_10ng_R3/corrected.mif --groups UMI
minnn stat-groups --input PB2_10ng_R3/corrected.mif --output PB2_10ng_R3/stat-groups_corrected.txt --groups UMI
minnn sort --input PB2_10ng_R3/corrected.mif --output PB2_10ng_R3/corrected_sorted.mif --groups UMI
minnn consensus --input PB2_10ng_R3/corrected_sorted.mif --output PB2_10ng_R3/consensus.mif --groups UMI --max-consensuses-per-cluster 1
minnn filter --input PB2_10ng_R3/consensus.mif --output PB2_10ng_R3/filtered_consensus.mif --MinConsensusReads=5
minnn mif2fastq --input PB2_10ng_R3/filtered_consensus.mif --group R1=PB2_10ng_R3/consensus_R1.fastq.gz --group R2=PB2_10ng_R3/consensus_R2.fastq.gz

    

mkdir PB2_250ng_R1
minnn extract --pattern '^(UMI:NNNNNNNNNNNNNN)\*' --input data/PB2_250ng_R1_S22_R1_001.fastq.gz data/PB2_250ng_R1_S22_R2_001.fastq.gz --output PB2_250ng_R1/extracted.mif
minnn sort --input PB2_250ng_R1/extracted.mif --output PB2_250ng_R1/sorted.mif --groups UMI
minnn correct --input PB2_250ng_R1/sorted.mif --output PB2_250ng_R1/corrected.mif --groups UMI
minnn stat-groups --input PB2_250ng_R1/corrected.mif --output PB2_250ng_R1/stat-groups_corrected.txt --groups UMI
minnn sort --input PB2_250ng_R1/corrected.mif --output PB2_250ng_R1/corrected_sorted.mif --groups UMI
minnn consensus --input PB2_250ng_R1/corrected_sorted.mif --output PB2_250ng_R1/consensus.mif --groups UMI --max-consensuses-per-cluster 1
minnn filter --input PB2_250ng_R1/consensus.mif --output PB2_250ng_R1/filtered_consensus.mif --MinConsensusReads=5
minnn mif2fastq --input PB2_250ng_R1/filtered_consensus.mif --group R1=PB2_250ng_R1/consensus_R1.fastq.gz --group R2=PB2_250ng_R1/consensus_R2.fastq.gz

    

mkdir PB2_250ng_R2
minnn extract --pattern '^(UMI:NNNNNNNNNNNNNN)\*' --input data/PB2_250ng_R2_S23_R1_001.fastq.gz data/PB2_250ng_R2_S23_R2_001.fastq.gz --output PB2_250ng_R2/extracted.mif
minnn sort --input PB2_250ng_R2/extracted.mif --output PB2_250ng_R2/sorted.mif --groups UMI
minnn correct --input PB2_250ng_R2/sorted.mif --output PB2_250ng_R2/corrected.mif --groups UMI
minnn stat-groups --input PB2_250ng_R2/corrected.mif --output PB2_250ng_R2/stat-groups_corrected.txt --groups UMI
minnn sort --input PB2_250ng_R2/corrected.mif --output PB2_250ng_R2/corrected_sorted.mif --groups UMI
minnn consensus --input PB2_250ng_R2/corrected_sorted.mif --output PB2_250ng_R2/consensus.mif --groups UMI --max-consensuses-per-cluster 1
minnn filter --input PB2_250ng_R2/consensus.mif --output PB2_250ng_R2/filtered_consensus.mif --MinConsensusReads=5
minnn mif2fastq --input PB2_250ng_R2/filtered_consensus.mif --group R1=PB2_250ng_R2/consensus_R1.fastq.gz --group R2=PB2_250ng_R2/consensus_R2.fastq.gz

    

mkdir PB2_250ng_R3
minnn extract --pattern '^(UMI:NNNNNNNNNNNNNN)\*' --input data/PB2_250ng_R3_S24_R1_001.fastq.gz data/PB2_250ng_R3_S24_R2_001.fastq.gz --output PB2_250ng_R3/extracted.mif
minnn sort --input PB2_250ng_R3/extracted.mif --output PB2_250ng_R3/sorted.mif --groups UMI
minnn correct --input PB2_250ng_R3/sorted.mif --output PB2_250ng_R3/corrected.mif --groups UMI
minnn stat-groups --input PB2_250ng_R3/corrected.mif --output PB2_250ng_R3/stat-groups_corrected.txt --groups UMI
minnn sort --input PB2_250ng_R3/corrected.mif --output PB2_250ng_R3/corrected_sorted.mif --groups UMI
minnn consensus --input PB2_250ng_R3/corrected_sorted.mif --output PB2_250ng_R3/consensus.mif --groups UMI --max-consensuses-per-cluster 1
minnn filter --input PB2_250ng_R3/consensus.mif --output PB2_250ng_R3/filtered_consensus.mif --MinConsensusReads=5
minnn mif2fastq --input PB2_250ng_R3/filtered_consensus.mif --group R1=PB2_250ng_R3/consensus_R1.fastq.gz --group R2=PB2_250ng_R3/consensus_R2.fastq.gz

    

mkdir PB2_2ng_R1
minnn extract --pattern '^(UMI:NNNNNNNNNNNNNN)\*' --input data/PB2_2ng_R1_S13_R1_001.fastq.gz data/PB2_2ng_R1_S13_R2_001.fastq.gz --output PB2_2ng_R1/extracted.mif
minnn sort --input PB2_2ng_R1/extracted.mif --output PB2_2ng_R1/sorted.mif --groups UMI
minnn correct --input PB2_2ng_R1/sorted.mif --output PB2_2ng_R1/corrected.mif --groups UMI
minnn stat-groups --input PB2_2ng_R1/corrected.mif --output PB2_2ng_R1/stat-groups_corrected.txt --groups UMI
minnn sort --input PB2_2ng_R1/corrected.mif --output PB2_2ng_R1/corrected_sorted.mif --groups UMI
minnn consensus --input PB2_2ng_R1/corrected_sorted.mif --output PB2_2ng_R1/consensus.mif --groups UMI --max-consensuses-per-cluster 1
minnn filter --input PB2_2ng_R1/consensus.mif --output PB2_2ng_R1/filtered_consensus.mif --MinConsensusReads=5
minnn mif2fastq --input PB2_2ng_R1/filtered_consensus.mif --group R1=PB2_2ng_R1/consensus_R1.fastq.gz --group R2=PB2_2ng_R1/consensus_R2.fastq.gz

    

mkdir PB2_2ng_R2
minnn extract --pattern '^(UMI:NNNNNNNNNNNNNN)\*' --input data/PB2_2ng_R2_S14_R1_001.fastq.gz data/PB2_2ng_R2_S14_R2_001.fastq.gz --output PB2_2ng_R2/extracted.mif
minnn sort --input PB2_2ng_R2/extracted.mif --output PB2_2ng_R2/sorted.mif --groups UMI
minnn correct --input PB2_2ng_R2/sorted.mif --output PB2_2ng_R2/corrected.mif --groups UMI
minnn stat-groups --input PB2_2ng_R2/corrected.mif --output PB2_2ng_R2/stat-groups_corrected.txt --groups UMI
minnn sort --input PB2_2ng_R2/corrected.mif --output PB2_2ng_R2/corrected_sorted.mif --groups UMI
minnn consensus --input PB2_2ng_R2/corrected_sorted.mif --output PB2_2ng_R2/consensus.mif --groups UMI --max-consensuses-per-cluster 1
minnn filter --input PB2_2ng_R2/consensus.mif --output PB2_2ng_R2/filtered_consensus.mif --MinConsensusReads=5
minnn mif2fastq --input PB2_2ng_R2/filtered_consensus.mif --group R1=PB2_2ng_R2/consensus_R1.fastq.gz --group R2=PB2_2ng_R2/consensus_R2.fastq.gz

    

mkdir PB2_2ng_R3
minnn extract --pattern '^(UMI:NNNNNNNNNNNNNN)\*' --input data/PB2_2ng_R3_S15_R1_001.fastq.gz data/PB2_2ng_R3_S15_R2_001.fastq.gz --output PB2_2ng_R3/extracted.mif
minnn sort --input PB2_2ng_R3/extracted.mif --output PB2_2ng_R3/sorted.mif --groups UMI
minnn correct --input PB2_2ng_R3/sorted.mif --output PB2_2ng_R3/corrected.mif --groups UMI
minnn stat-groups --input PB2_2ng_R3/corrected.mif --output PB2_2ng_R3/stat-groups_corrected.txt --groups UMI
minnn sort --input PB2_2ng_R3/corrected.mif --output PB2_2ng_R3/corrected_sorted.mif --groups UMI
minnn consensus --input PB2_2ng_R3/corrected_sorted.mif --output PB2_2ng_R3/consensus.mif --groups UMI --max-consensuses-per-cluster 1
minnn filter --input PB2_2ng_R3/consensus.mif --output PB2_2ng_R3/filtered_consensus.mif --MinConsensusReads=5
minnn mif2fastq --input PB2_2ng_R3/filtered_consensus.mif --group R1=PB2_2ng_R3/consensus_R1.fastq.gz --group R2=PB2_2ng_R3/consensus_R2.fastq.gz

    

mkdir PB2_50ng_R1
minnn extract --pattern '^(UMI:NNNNNNNNNNNNNN)\*' --input data/PB2_50ng_R1_S19_R1_001.fastq.gz data/PB2_50ng_R1_S19_R2_001.fastq.gz --output PB2_50ng_R1/extracted.mif
minnn sort --input PB2_50ng_R1/extracted.mif --output PB2_50ng_R1/sorted.mif --groups UMI
minnn correct --input PB2_50ng_R1/sorted.mif --output PB2_50ng_R1/corrected.mif --groups UMI
minnn stat-groups --input PB2_50ng_R1/corrected.mif --output PB2_50ng_R1/stat-groups_corrected.txt --groups UMI
minnn sort --input PB2_50ng_R1/corrected.mif --output PB2_50ng_R1/corrected_sorted.mif --groups UMI
minnn consensus --input PB2_50ng_R1/corrected_sorted.mif --output PB2_50ng_R1/consensus.mif --groups UMI --max-consensuses-per-cluster 1
minnn filter --input PB2_50ng_R1/consensus.mif --output PB2_50ng_R1/filtered_consensus.mif --MinConsensusReads=5
minnn mif2fastq --input PB2_50ng_R1/filtered_consensus.mif --group R1=PB2_50ng_R1/consensus_R1.fastq.gz --group R2=PB2_50ng_R1/consensus_R2.fastq.gz

    

mkdir PB2_50ng_R2
minnn extract --pattern '^(UMI:NNNNNNNNNNNNNN)\*' --input data/PB2_50ng_R2_S20_R1_001.fastq.gz data/PB2_50ng_R2_S20_R2_001.fastq.gz --output PB2_50ng_R2/extracted.mif
minnn sort --input PB2_50ng_R2/extracted.mif --output PB2_50ng_R2/sorted.mif --groups UMI
minnn correct --input PB2_50ng_R2/sorted.mif --output PB2_50ng_R2/corrected.mif --groups UMI
minnn stat-groups --input PB2_50ng_R2/corrected.mif --output PB2_50ng_R2/stat-groups_corrected.txt --groups UMI
minnn sort --input PB2_50ng_R2/corrected.mif --output PB2_50ng_R2/corrected_sorted.mif --groups UMI
minnn consensus --input PB2_50ng_R2/corrected_sorted.mif --output PB2_50ng_R2/consensus.mif --groups UMI --max-consensuses-per-cluster 1
minnn filter --input PB2_50ng_R2/consensus.mif --output PB2_50ng_R2/filtered_consensus.mif --MinConsensusReads=5
minnn mif2fastq --input PB2_50ng_R2/filtered_consensus.mif --group R1=PB2_50ng_R2/consensus_R1.fastq.gz --group R2=PB2_50ng_R2/consensus_R2.fastq.gz

    

mkdir PB2_50ng_R3
minnn extract --pattern '^(UMI:NNNNNNNNNNNNNN)\*' --input data/PB2_50ng_R3_S21_R1_001.fastq.gz data/PB2_50ng_R3_S21_R2_001.fastq.gz --output PB2_50ng_R3/extracted.mif
minnn sort --input PB2_50ng_R3/extracted.mif --output PB2_50ng_R3/sorted.mif --groups UMI
minnn correct --input PB2_50ng_R3/sorted.mif --output PB2_50ng_R3/corrected.mif --groups UMI
minnn stat-groups --input PB2_50ng_R3/corrected.mif --output PB2_50ng_R3/stat-groups_corrected.txt --groups UMI
minnn sort --input PB2_50ng_R3/corrected.mif --output PB2_50ng_R3/corrected_sorted.mif --groups UMI
minnn consensus --input PB2_50ng_R3/corrected_sorted.mif --output PB2_50ng_R3/consensus.mif --groups UMI --max-consensuses-per-cluster 1
minnn filter --input PB2_50ng_R3/consensus.mif --output PB2_50ng_R3/filtered_consensus.mif --MinConsensusReads=5
minnn mif2fastq --input PB2_50ng_R3/filtered_consensus.mif --group R1=PB2_50ng_R3/consensus_R1.fastq.gz --group R2=PB2_50ng_R3/consensus_R2.fastq.gz

    

mkdir WB2_102ng_R3
minnn extract --pattern '^(UMI:NNNNNNNNNNNNNN)\*' --input data/WB2_102ng_R3_S27_R1_001.fastq.gz data/WB2_102ng_R3_S27_R2_001.fastq.gz --output WB2_102ng_R3/extracted.mif
minnn sort --input WB2_102ng_R3/extracted.mif --output WB2_102ng_R3/sorted.mif --groups UMI
minnn correct --input WB2_102ng_R3/sorted.mif --output WB2_102ng_R3/corrected.mif --groups UMI
minnn stat-groups --input WB2_102ng_R3/corrected.mif --output WB2_102ng_R3/stat-groups_corrected.txt --groups UMI
minnn sort --input WB2_102ng_R3/corrected.mif --output WB2_102ng_R3/corrected_sorted.mif --groups UMI
minnn consensus --input WB2_102ng_R3/corrected_sorted.mif --output WB2_102ng_R3/consensus.mif --groups UMI --max-consensuses-per-cluster 1
minnn filter --input WB2_102ng_R3/consensus.mif --output WB2_102ng_R3/filtered_consensus.mif --MinConsensusReads=5
minnn mif2fastq --input WB2_102ng_R3/filtered_consensus.mif --group R1=WB2_102ng_R3/consensus_R1.fastq.gz --group R2=WB2_102ng_R3/consensus_R2.fastq.gz

    

mkdir WB2_10ng_R1
minnn extract --pattern '^(UMI:NNNNNNNNNNNNNN)\*' --input data/WB2_10ng_R1_S25_R1_001.fastq.gz data/WB2_10ng_R1_S25_R2_001.fastq.gz --output WB2_10ng_R1/extracted.mif
minnn sort --input WB2_10ng_R1/extracted.mif --output WB2_10ng_R1/sorted.mif --groups UMI
minnn correct --input WB2_10ng_R1/sorted.mif --output WB2_10ng_R1/corrected.mif --groups UMI
minnn stat-groups --input WB2_10ng_R1/corrected.mif --output WB2_10ng_R1/stat-groups_corrected.txt --groups UMI
minnn sort --input WB2_10ng_R1/corrected.mif --output WB2_10ng_R1/corrected_sorted.mif --groups UMI
minnn consensus --input WB2_10ng_R1/corrected_sorted.mif --output WB2_10ng_R1/consensus.mif --groups UMI --max-consensuses-per-cluster 1
minnn filter --input WB2_10ng_R1/consensus.mif --output WB2_10ng_R1/filtered_consensus.mif --MinConsensusReads=5
minnn mif2fastq --input WB2_10ng_R1/filtered_consensus.mif --group R1=WB2_10ng_R1/consensus_R1.fastq.gz --group R2=WB2_10ng_R1/consensus_R2.fastq.gz

    

mkdir WB2_10ng_R2
minnn extract --pattern '^(UMI:NNNNNNNNNNNNNN)\*' --input data/WB2_10ng_R2_S26_R1_001.fastq.gz data/WB2_10ng_R2_S26_R2_001.fastq.gz --output WB2_10ng_R2/extracted.mif
minnn sort --input WB2_10ng_R2/extracted.mif --output WB2_10ng_R2/sorted.mif --groups UMI
minnn correct --input WB2_10ng_R2/sorted.mif --output WB2_10ng_R2/corrected.mif --groups UMI
minnn stat-groups --input WB2_10ng_R2/corrected.mif --output WB2_10ng_R2/stat-groups_corrected.txt --groups UMI
minnn sort --input WB2_10ng_R2/corrected.mif --output WB2_10ng_R2/corrected_sorted.mif --groups UMI
minnn consensus --input WB2_10ng_R2/corrected_sorted.mif --output WB2_10ng_R2/consensus.mif --groups UMI --max-consensuses-per-cluster 1
minnn filter --input WB2_10ng_R2/consensus.mif --output WB2_10ng_R2/filtered_consensus.mif --MinConsensusReads=5
minnn mif2fastq --input WB2_10ng_R2/filtered_consensus.mif --group R1=WB2_10ng_R2/consensus_R1.fastq.gz --group R2=WB2_10ng_R2/consensus_R2.fastq.gz

    

mkdir WB2_1250ng_R1
minnn extract --pattern '^(UMI:NNNNNNNNNNNNNN)\*' --input data/WB2_1250ng_R1_S34_R1_001.fastq.gz data/WB2_1250ng_R1_S34_R2_001.fastq.gz --output WB2_1250ng_R1/extracted.mif
minnn sort --input WB2_1250ng_R1/extracted.mif --output WB2_1250ng_R1/sorted.mif --groups UMI
minnn correct --input WB2_1250ng_R1/sorted.mif --output WB2_1250ng_R1/corrected.mif --groups UMI
minnn stat-groups --input WB2_1250ng_R1/corrected.mif --output WB2_1250ng_R1/stat-groups_corrected.txt --groups UMI
minnn sort --input WB2_1250ng_R1/corrected.mif --output WB2_1250ng_R1/corrected_sorted.mif --groups UMI
minnn consensus --input WB2_1250ng_R1/corrected_sorted.mif --output WB2_1250ng_R1/consensus.mif --groups UMI --max-consensuses-per-cluster 1
minnn filter --input WB2_1250ng_R1/consensus.mif --output WB2_1250ng_R1/filtered_consensus.mif --MinConsensusReads=5
minnn mif2fastq --input WB2_1250ng_R1/filtered_consensus.mif --group R1=WB2_1250ng_R1/consensus_R1.fastq.gz --group R2=WB2_1250ng_R1/consensus_R2.fastq.gz

    

mkdir WB2_1250ng_R2
minnn extract --pattern '^(UMI:NNNNNNNNNNNNNN)\*' --input data/WB2_1250ng_R2_S35_R1_001.fastq.gz data/WB2_1250ng_R2_S35_R2_001.fastq.gz --output WB2_1250ng_R2/extracted.mif
minnn sort --input WB2_1250ng_R2/extracted.mif --output WB2_1250ng_R2/sorted.mif --groups UMI
minnn correct --input WB2_1250ng_R2/sorted.mif --output WB2_1250ng_R2/corrected.mif --groups UMI
minnn stat-groups --input WB2_1250ng_R2/corrected.mif --output WB2_1250ng_R2/stat-groups_corrected.txt --groups UMI
minnn sort --input WB2_1250ng_R2/corrected.mif --output WB2_1250ng_R2/corrected_sorted.mif --groups UMI
minnn consensus --input WB2_1250ng_R2/corrected_sorted.mif --output WB2_1250ng_R2/consensus.mif --groups UMI --max-consensuses-per-cluster 1
minnn filter --input WB2_1250ng_R2/consensus.mif --output WB2_1250ng_R2/filtered_consensus.mif --MinConsensusReads=5
minnn mif2fastq --input WB2_1250ng_R2/filtered_consensus.mif --group R1=WB2_1250ng_R2/consensus_R1.fastq.gz --group R2=WB2_1250ng_R2/consensus_R2.fastq.gz

    

mkdir WB2_1250ng_R3
minnn extract --pattern '^(UMI:NNNNNNNNNNNNNN)\*' --input data/WB2_1250ng_R3_S36_R1_001.fastq.gz data/WB2_1250ng_R3_S36_R2_001.fastq.gz --output WB2_1250ng_R3/extracted.mif
minnn sort --input WB2_1250ng_R3/extracted.mif --output WB2_1250ng_R3/sorted.mif --groups UMI
minnn correct --input WB2_1250ng_R3/sorted.mif --output WB2_1250ng_R3/corrected.mif --groups UMI
minnn stat-groups --input WB2_1250ng_R3/corrected.mif --output WB2_1250ng_R3/stat-groups_corrected.txt --groups UMI
minnn sort --input WB2_1250ng_R3/corrected.mif --output WB2_1250ng_R3/corrected_sorted.mif --groups UMI
minnn consensus --input WB2_1250ng_R3/corrected_sorted.mif --output WB2_1250ng_R3/consensus.mif --groups UMI --max-consensuses-per-cluster 1
minnn filter --input WB2_1250ng_R3/consensus.mif --output WB2_1250ng_R3/filtered_consensus.mif --MinConsensusReads=5
minnn mif2fastq --input WB2_1250ng_R3/filtered_consensus.mif --group R1=WB2_1250ng_R3/consensus_R1.fastq.gz --group R2=WB2_1250ng_R3/consensus_R2.fastq.gz

    

mkdir WB2_250ng_R1
minnn extract --pattern '^(UMI:NNNNNNNNNNNNNN)\*' --input data/WB2_250ng_R1_S31_R1_001.fastq.gz data/WB2_250ng_R1_S31_R2_001.fastq.gz --output WB2_250ng_R1/extracted.mif
minnn sort --input WB2_250ng_R1/extracted.mif --output WB2_250ng_R1/sorted.mif --groups UMI
minnn correct --input WB2_250ng_R1/sorted.mif --output WB2_250ng_R1/corrected.mif --groups UMI
minnn stat-groups --input WB2_250ng_R1/corrected.mif --output WB2_250ng_R1/stat-groups_corrected.txt --groups UMI
minnn sort --input WB2_250ng_R1/corrected.mif --output WB2_250ng_R1/corrected_sorted.mif --groups UMI
minnn consensus --input WB2_250ng_R1/corrected_sorted.mif --output WB2_250ng_R1/consensus.mif --groups UMI --max-consensuses-per-cluster 1
minnn filter --input WB2_250ng_R1/consensus.mif --output WB2_250ng_R1/filtered_consensus.mif --MinConsensusReads=5
minnn mif2fastq --input WB2_250ng_R1/filtered_consensus.mif --group R1=WB2_250ng_R1/consensus_R1.fastq.gz --group R2=WB2_250ng_R1/consensus_R2.fastq.gz

    

mkdir WB2_250ng_R2
minnn extract --pattern '^(UMI:NNNNNNNNNNNNNN)\*' --input data/WB2_250ng_R2_S32_R1_001.fastq.gz data/WB2_250ng_R2_S32_R2_001.fastq.gz --output WB2_250ng_R2/extracted.mif
minnn sort --input WB2_250ng_R2/extracted.mif --output WB2_250ng_R2/sorted.mif --groups UMI
minnn correct --input WB2_250ng_R2/sorted.mif --output WB2_250ng_R2/corrected.mif --groups UMI
minnn stat-groups --input WB2_250ng_R2/corrected.mif --output WB2_250ng_R2/stat-groups_corrected.txt --groups UMI
minnn sort --input WB2_250ng_R2/corrected.mif --output WB2_250ng_R2/corrected_sorted.mif --groups UMI
minnn consensus --input WB2_250ng_R2/corrected_sorted.mif --output WB2_250ng_R2/consensus.mif --groups UMI --max-consensuses-per-cluster 1
minnn filter --input WB2_250ng_R2/consensus.mif --output WB2_250ng_R2/filtered_consensus.mif --MinConsensusReads=5
minnn mif2fastq --input WB2_250ng_R2/filtered_consensus.mif --group R1=WB2_250ng_R2/consensus_R1.fastq.gz --group R2=WB2_250ng_R2/consensus_R2.fastq.gz

    

mkdir WB2_250ng_R3
minnn extract --pattern '^(UMI:NNNNNNNNNNNNNN)\*' --input data/WB2_250ng_R3_S33_R1_001.fastq.gz data/WB2_250ng_R3_S33_R2_001.fastq.gz --output WB2_250ng_R3/extracted.mif
minnn sort --input WB2_250ng_R3/extracted.mif --output WB2_250ng_R3/sorted.mif --groups UMI
minnn correct --input WB2_250ng_R3/sorted.mif --output WB2_250ng_R3/corrected.mif --groups UMI
minnn stat-groups --input WB2_250ng_R3/corrected.mif --output WB2_250ng_R3/stat-groups_corrected.txt --groups UMI
minnn sort --input WB2_250ng_R3/corrected.mif --output WB2_250ng_R3/corrected_sorted.mif --groups UMI
minnn consensus --input WB2_250ng_R3/corrected_sorted.mif --output WB2_250ng_R3/consensus.mif --groups UMI --max-consensuses-per-cluster 1
minnn filter --input WB2_250ng_R3/consensus.mif --output WB2_250ng_R3/filtered_consensus.mif --MinConsensusReads=5
minnn mif2fastq --input WB2_250ng_R3/filtered_consensus.mif --group R1=WB2_250ng_R3/consensus_R1.fastq.gz --group R2=WB2_250ng_R3/consensus_R2.fastq.gz

    

mkdir WB2_50ng_R1
minnn extract --pattern '^(UMI:NNNNNNNNNNNNNN)\*' --input data/WB2_50ng_R1_S28_R1_001.fastq.gz data/WB2_50ng_R1_S28_R2_001.fastq.gz --output WB2_50ng_R1/extracted.mif
minnn sort --input WB2_50ng_R1/extracted.mif --output WB2_50ng_R1/sorted.mif --groups UMI
minnn correct --input WB2_50ng_R1/sorted.mif --output WB2_50ng_R1/corrected.mif --groups UMI
minnn stat-groups --input WB2_50ng_R1/corrected.mif --output WB2_50ng_R1/stat-groups_corrected.txt --groups UMI
minnn sort --input WB2_50ng_R1/corrected.mif --output WB2_50ng_R1/corrected_sorted.mif --groups UMI
minnn consensus --input WB2_50ng_R1/corrected_sorted.mif --output WB2_50ng_R1/consensus.mif --groups UMI --max-consensuses-per-cluster 1
minnn filter --input WB2_50ng_R1/consensus.mif --output WB2_50ng_R1/filtered_consensus.mif --MinConsensusReads=5
minnn mif2fastq --input WB2_50ng_R1/filtered_consensus.mif --group R1=WB2_50ng_R1/consensus_R1.fastq.gz --group R2=WB2_50ng_R1/consensus_R2.fastq.gz

    

mkdir WB2_50ng_R2
minnn extract --pattern '^(UMI:NNNNNNNNNNNNNN)\*' --input data/WB2_50ng_R2_S29_R1_001.fastq.gz data/WB2_50ng_R2_S29_R2_001.fastq.gz --output WB2_50ng_R2/extracted.mif
minnn sort --input WB2_50ng_R2/extracted.mif --output WB2_50ng_R2/sorted.mif --groups UMI
minnn correct --input WB2_50ng_R2/sorted.mif --output WB2_50ng_R2/corrected.mif --groups UMI
minnn stat-groups --input WB2_50ng_R2/corrected.mif --output WB2_50ng_R2/stat-groups_corrected.txt --groups UMI
minnn sort --input WB2_50ng_R2/corrected.mif --output WB2_50ng_R2/corrected_sorted.mif --groups UMI
minnn consensus --input WB2_50ng_R2/corrected_sorted.mif --output WB2_50ng_R2/consensus.mif --groups UMI --max-consensuses-per-cluster 1
minnn filter --input WB2_50ng_R2/consensus.mif --output WB2_50ng_R2/filtered_consensus.mif --MinConsensusReads=5
minnn mif2fastq --input WB2_50ng_R2/filtered_consensus.mif --group R1=WB2_50ng_R2/consensus_R1.fastq.gz --group R2=WB2_50ng_R2/consensus_R2.fastq.gz

    

mkdir WB2_50ng_R3
minnn extract --pattern '^(UMI:NNNNNNNNNNNNNN)\*' --input data/WB2_50ng_R3_S30_R1_001.fastq.gz data/WB2_50ng_R3_S30_R2_001.fastq.gz --output WB2_50ng_R3/extracted.mif
minnn sort --input WB2_50ng_R3/extracted.mif --output WB2_50ng_R3/sorted.mif --groups UMI
minnn correct --input WB2_50ng_R3/sorted.mif --output WB2_50ng_R3/corrected.mif --groups UMI
minnn stat-groups --input WB2_50ng_R3/corrected.mif --output WB2_50ng_R3/stat-groups_corrected.txt --groups UMI
minnn sort --input WB2_50ng_R3/corrected.mif --output WB2_50ng_R3/corrected_sorted.mif --groups UMI
minnn consensus --input WB2_50ng_R3/corrected_sorted.mif --output WB2_50ng_R3/consensus.mif --groups UMI --max-consensuses-per-cluster 1
minnn filter --input WB2_50ng_R3/consensus.mif --output WB2_50ng_R3/filtered_consensus.mif --MinConsensusReads=5
minnn mif2fastq --input WB2_50ng_R3/filtered_consensus.mif --group R1=WB2_50ng_R3/consensus_R1.fastq.gz --group R2=WB2_50ng_R3/consensus_R2.fastq.gz

    
