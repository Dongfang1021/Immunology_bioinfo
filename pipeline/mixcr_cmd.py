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
mixcr analyze amplicon \
-s hs \
--starting-material RNA \
--5-end v-primers \
--3-end c-primers \
--adapters adapters-present \
--only-productive \
%s/consensus_R1.fastq.gz %s/consensus_R2.fastq.gz %s/result

    """% (SampleName, SampleName, SampleName)
    output.write(cmd +"\n")