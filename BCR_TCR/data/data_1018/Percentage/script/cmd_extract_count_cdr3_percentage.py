import argparse
"""
This script is used to summary clonotypes number for eachsample
"""
parser = argparse.ArgumentParser()
parser.add_argument('--input',help='samplelist')
parser.add_argument('--output',help='cmd script file name')
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
    file_name = eachline[0]
    output_name = eachline[0].split('.')[0] + '_count_percentage'
    cmd = '''
    python extract_count_cdr3_percentage.py --input %s --output %s
    '''%(file_name, output_name)
    output.write(cmd+'\n')