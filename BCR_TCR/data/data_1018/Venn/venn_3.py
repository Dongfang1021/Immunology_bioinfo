import argparse
from matplotlib_venn import venn3
import matplotlib.pyplot as plt
"""
This script is used to add transcript name to blast summary
"""
parser = argparse.ArgumentParser()
parser.add_argument('--input_1',help='original file')
parser.add_argument('--input_2',help='original file')
parser.add_argument('--input_3',help='original file')
argv = vars(parser.parse_args())

if argv['input_1'] == None:
	raise Exception ('You should provide a input file!')
else:
	input_1=argv['input_1'].strip()

if argv['input_2'] == None:
	raise Exception ('You should provide a input file!')
else:
	input_2=argv['input_2'].strip()

if argv['input_3'] == None:
    	raise Exception ('You should provide a input file!')
else:
	input_3=argv['input_3'].strip()

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

input_c = open(input_3)
list_c = []
for eachline in input_c:
    eachline = eachline.strip()
    list_c.append(eachline)

def venn_diagram(a, b, c, labels=['A', 'B', 'C']):

    a = set(a)
    b = set(b)
    c = set(c)
    
    only_a = len(a - b - c)
    only_b = len(b - a - c)
    only_c = len(c - a - b)

    only_a_b = len(a & b - c)
    only_a_c = len(a & c - b)
    only_b_c = len(b & c - a)

    a_b_c = len(a & b & c)

    venn3(subsets=(only_a, only_b, only_a_b, only_c, only_a_c, only_b_c, a_b_c), set_labels=labels)



venn_diagram(list_a, list_b, list_c, labels=['Rep1', 'Rep2', 'Rep3'])
plt.savefig('test.png')