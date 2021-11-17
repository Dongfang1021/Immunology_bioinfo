import argparse
"""
This script is used to add transcript name to blast summary
"""
parser = argparse.ArgumentParser()
parser.add_argument('--input',help='original file')
argv = vars(parser.parse_args())

if argv['input'] == None:
	raise Exception ('You should provide a input file!')
else:
	input=argv['input'].strip()

input = open(input)
output = open("cmd.sh", "w")
for eachline in input:
    eachline = eachline.strip()
    cmd = '''
    awk '{print $4}' %s | sed 1d > %s_new
    '''%(eachline, eachline)
    output.write(cmd + "\n")
