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
output = open('cmd_batch_cutoff_50_95.sh', 'w')
for eachline in input:
    eachline = eachline.strip().split('\t')
    file_name = eachline[0]
    output_name =eachline[0]
    cmd = '''
    python cutoff.py --input %s --output %s --cutoff 0.5
    python cutoff.py --input %s --output %s --cutoff 0.6
    python cutoff.py --input %s --output %s --cutoff 0.7
    python cutoff.py --input %s --output %s --cutoff 0.8
    python cutoff.py --input %s --output %s --cutoff 0.9
     python cutoff.py --input %s --output %s --cutoff 0.95
    '''%(file_name, output_name+'_cutoff_50', file_name, output_name+'_cutoff_60', file_name, output_name+'_cutoff_70', file_name, output_name+'_cutoff_80', file_name, output_name+'_cutoff_90', file_name, output_name+'_cutoff_95')
    output.write(cmd+'\n')