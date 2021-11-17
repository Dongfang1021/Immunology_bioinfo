import argparse
from matplotlib_venn import venn2
import matplotlib.pyplot as plt
"""
This script is used to add transcript name to blast summary
"""
parser = argparse.ArgumentParser()
parser.add_argument('--input_1',help='original file')
parser.add_argument('--input_2',help='original file')
argv = vars(parser.parse_args())

if argv['input_1'] == None:
	raise Exception ('You should provide a input file!')
else:
	input_1=argv['input_1'].strip()

if argv['input_2'] == None:
	raise Exception ('You should provide a input file!')
else:
	input_2=argv['input_2'].strip()

input_a = open(input_1)
list_a = []
for eachline in input_a:
    eachline = eachline.strip()
    list_a.append(eachline)
input_b = open(input_2)
list_b = []
for eachline in input_b:
    eachline = eachline.strip()
    list_b.append(eachline)

def venn_diagram(a, b, labels=['A', 'B']):

    a = set(a)
    b = set(b)
    only_a = len(a - b)
    only_b = len(b - a)
    a_b = len(a & b )
    venn2(subsets=(only_a, only_b, a_b), set_labels=labels)

venn_diagram(list_a, list_b, labels=['PBMC_Drivermap', 'PBMC_SMART'])
plt.savefig('test.png')


