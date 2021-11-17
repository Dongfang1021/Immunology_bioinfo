import argparse
"""
This script is used to summary clonotypes number for eachsample
"""
parser = argparse.ArgumentParser()
parser.add_argument('--input',help='samplelist')
parser.add_argument('--output_script',help='shell script file name')
argv = vars(parser.parse_args())

if argv['input'] == None:
	raise Exception ('You should provide a input file!')
else:
	input=argv['input'].strip()
if argv['output_script'] == None:
    	raise Exception ('You should provide a output file!')
else:
	output=argv['output_script'].strip()
input = open(input)
output = open(output, 'w')
for eachline in input:
    eachline = eachline.strip().split('\t')
    rep1 = eachline[0]
    rep2 = eachline[1]
    rep3 = eachline[2]
    figure_name = eachline[3]
    cmd = '''
    python venn_3.py --input_1 %s --input_2 %s --input_3 %s --output %s
    '''%(rep1, rep2, rep3, figure_name)
    output.write(cmd+'\n')