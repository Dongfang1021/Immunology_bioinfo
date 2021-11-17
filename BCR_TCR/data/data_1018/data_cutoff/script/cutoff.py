import argparse
"""
This script is used to summary clonotypes number for eachsample
"""
parser = argparse.ArgumentParser()
parser.add_argument('--input',help='samplelist')
parser.add_argument('--cutoff',help='samplelist')
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

if argv['cutoff'] == None:
    	raise Exception ('You should provide a input file!')
else:
	cutoff=argv['cutoff'].strip()

cutoff = float(cutoff)
input = open(input)
header = input.readline()
output = open(output, 'w')
output.write(header +'\n')
for eachline in input:
    eachline = eachline.strip().split('\t')
    counts = float(eachline[1])
    CDR3 = eachline[0]
    if cutoff == 1:
        if counts > 1:
            output.write(CDR3 + "\t"+ str(counts) +'\n')
    else:
        if counts >= cutoff:
            output.write(CDR3 + "\t"+ str(counts) +'\n')