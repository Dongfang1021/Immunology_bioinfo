import argparse
import re
from typing import Sequence

"""
This script is used to reformat each exon
"""
parser = argparse.ArgumentParser()
parser.add_argument('--input',help='file name list R1\tR2\t\SampleName\n for eachline')
parser.add_argument('--output',help='output')


argv = vars(parser.parse_args())

if argv['input'] == None:
	raise Exception ('You should provide a input file!')
else:
	input=argv['input'].strip()


if argv['output'] == None:
    	raise Exception ('You should provide output prefix!')
else:
	output=argv['output'].strip()

input = open(input, 'r')

output = open(output, 'w')

for eachline in input:
    file = eachline.strip().split("\t")
    R1 = file[0]
    R2 = file[1]
    SampleName = file[2]
    cmd = """
mkdir %s
minnn extract --pattern '^(UMI:NNNNNNNNNNNNNN)\*' --input data/%s data/%s --output %s/extracted.mif
minnn sort --input %s/extracted.mif --output %s/sorted.mif --groups UMI
minnn correct --input %s/sorted.mif --output %s/corrected.mif --groups UMI
minnn stat-groups --input %s/corrected.mif --output %s/stat-groups_corrected.txt --groups UMI
minnn sort --input %s/corrected.mif --output %s/corrected_sorted.mif --groups UMI
minnn consensus --input %s/corrected_sorted.mif --output %s/consensus.mif --groups UMI --max-consensuses-per-cluster 1
minnn filter --input %s/consensus.mif --output %s/filtered_consensus.mif --MinConsensusReads=5
minnn mif2fastq --input %s/filtered_consensus.mif --group R1=%s/consensus_R1.fastq.gz --group R2=%s/consensus_R2.fastq.gz

    """% (SampleName,R1, R2, SampleName, SampleName, SampleName, SampleName,SampleName,SampleName,SampleName,SampleName,SampleName,SampleName,SampleName,SampleName,SampleName,SampleName,SampleName,SampleName)
    output.write(cmd +"\n")