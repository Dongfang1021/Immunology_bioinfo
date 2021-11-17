import argparse
from matplotlib_venn import venn2
import matplotlib.pyplot as plt
"""
This script is used to add transcript name to blast summary
"""
parser = argparse.ArgumentParser()
parser.add_argument('--input_1',help='original file')
parser.add_argument('--input_2',help='original file')
parser.add_argument('--figure_name',help='original file')
argv = vars(parser.parse_args())

if argv['input_1'] == None:
	raise Exception ('You should provide a input file!')
else:
	input_1=argv['input_1'].strip()

if argv['input_2'] == None:
	raise Exception ('You should provide a input file!')
else:
	input_2=argv['input_2'].strip()

if argv['figure_name'] == None:
    	raise Exception ('You should provide a input file!')
else:
	figure_name=argv['figure_name'].strip()

input_a = open(input_1)
list_a = []
for eachline in input_a:
    if eachline != '\n':
        eachline = eachline.strip().split('\t')
        clonotype = eachline[0]
        if clonotype != 'targetSequences':
            list_a.append(clonotype)

input_b = open(input_2)
list_b = []
for eachline in input_b:
    if eachline != '\n':
        eachline = eachline.strip().split('\t')
        clonotype = eachline[0]
        if clonotype != 'targetSequences':
            list_b.append(clonotype)    

def venn_diagram(a, b, labels=['A', 'B']):
    a = set(a)
    b = set(b)
    only_a = len(a - b)
    only_b = len(b - a)
    a_b = len(a & b )
    venn2(subsets=(only_a, only_b, a_b), set_labels=labels)

venn_diagram(list_a, list_b, labels=['PBMC2_TRB_Drivermap', 'PBMC2_TRB_SMART'])
SMART_only_list = set(list_b) - set(list_a)
print(len(SMART_only_list))
output = open('smart_only_20.txt', 'w')
output.write('\n'.join(SMART_only_list))
plt.savefig(figure_name+'.png')


