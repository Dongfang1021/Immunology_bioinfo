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
output = open('cmd_batch_cutoff.sh', 'w')
for eachline in input:
    eachline = eachline.strip().split('\t')
    file_name = eachline[0]
    output_name =eachline[0]
    cmd = '''
    python cutoff.py --input %s --output %s --cutoff 200
    python cutoff.py --input %s --output %s --cutoff 400
    python cutoff.py --input %s --output %s --cutoff 600
    python cutoff.py --input %s --output %s --cutoff 800
    '''%(file_name, output_name+'_cutoff_200', file_name, output_name+'_cutoff_400', file_name, output_name+'_cutoff_600', file_name, output_name+'_cutoff_800')
    output.write(cmd+'\n')