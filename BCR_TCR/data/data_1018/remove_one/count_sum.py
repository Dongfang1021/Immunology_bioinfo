import argparse
"""
This script is used to summary clonotypes number for eachsample
"""
parser = argparse.ArgumentParser()
parser.add_argument('--input',help='samplelist')
argv = vars(parser.parse_args())

if argv['input'] == None:
	raise Exception ('You should provide a input file!')
else:
	input=argv['input'].strip()
input = open(input)
output = open('clonotypes_num.txt', 'w')
for eachline in input:
    eachline = eachline.strip()
    name = eachline.strip().split(".")[0]
    counts = len(set(open(eachline).readlines()))
    output.write(name+'\t'+str(counts)+"\n")
