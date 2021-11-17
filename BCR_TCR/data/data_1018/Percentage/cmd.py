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
output = open('cmd_batch.sh', 'w')
for eachline in input:
    eachline = eachline.strip().split('\t')
    file_name = eachline[0]
    output_name = eachline[0].split('.')[0] + '_count'
    cmd = '''
    python extract_count_cdr3.py --input %s --output %s
    '''%(file_name, output_name)
    output.write(cmd+'\n')