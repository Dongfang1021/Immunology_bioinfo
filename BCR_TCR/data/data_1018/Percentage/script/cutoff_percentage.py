import argparse
"""
This script is used to select clonotypes sequence and percentage based on cuttoff
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
sum = 0
for eachline in input:
    eachline = eachline.strip().split('\t')
    percentage = float(eachline[2])
    CDR3 = eachline[0]
    sum += percentage
    if sum <= cutoff:
            output.write(CDR3 + "\t"+ str(percentage) +'\n')