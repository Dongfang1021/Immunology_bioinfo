import argparse
"""
This script is used to summary clonotypes number for eachsample
"""
parser = argparse.ArgumentParser()
parser.add_argument('--input',help='samplelist')
parser.add_argument('--output', help='output file name')
argv = vars(parser.parse_args())

if argv['input'] == None:
	raise Exception ('You should provide a input file!')
else:
	input=argv['input'].strip()

if argv['output'] == None:
    	raise Exception ('You should provide a input file!')
else:
	output=argv['output'].strip()
input = open(input)
output = open(output, 'w')
for eachline in input:
    eachline = eachline.strip().split('\t')
    counts = eachline[1]
    Percentage = eachline[2]
    CDR3 = eachline[3]
    output.write(CDR3 + "\t"+ counts +'\t'+Percentage+'\n')

