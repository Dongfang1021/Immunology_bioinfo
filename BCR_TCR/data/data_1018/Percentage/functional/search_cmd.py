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
output = open('cmd_batch_search.sh', 'w')
for eachline in input:
    eachline = eachline.strip().split('\t')
    seq = eachline[0]
    cmd = '''
    grep '%s' DriverMap_database >> result_DriverMap
    '''%(seq)
    output.write(cmd+'\n')