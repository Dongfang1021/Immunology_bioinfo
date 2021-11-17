import argparse
"""
This script is used to add transcript name to blast summary
"""
parser = argparse.ArgumentParser()
parser.add_argument('--input',help='original file')
parser.add_argument('--output',help='counts num')
argv = vars(parser.parse_args())

if argv['input'] == None:
	raise Exception ('You should provide a input file!')
else:
	input=argv['input'].strip()

if argv['output'] == None:
	raise Exception ('You should provide a input file!')
else:
	output=argv['output'].strip()

sample_name = str(input)
input = open(input)
output = open(output, 'w')
list = []
for eachline in input:
    if eachline != '\n':
        eachline = eachline.strip().split('\t')
        clonotype = eachline[0]
        if clonotype != 'targetSequences':
            list.append(clonotype)
output.write( sample_name + '\t' + str(len(list)) + "\n")
