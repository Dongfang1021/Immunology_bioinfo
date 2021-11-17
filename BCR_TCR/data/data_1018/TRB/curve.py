import argparse
import matplotlib.pyplot as plt
import seaborn as sns
import numpy as np
import pandas as pd
from math import log, log10 
"""
This script is used to draw histogram based on clonetypes and counts
"""
parser = argparse.ArgumentParser()
parser.add_argument('--input',help='samplelist')
parser.add_argument('--cutoff',help='cutoff for histogram')
parser.add_argument('--output', help='output file name')
argv = vars(parser.parse_args())

if argv['input'] == None:
	raise Exception ('You should provide a input file!')
else:
	input=argv['input'].strip()
if argv['cutoff'] == None:
    	raise Exception ('You should provide a cutoff value!')
else:
	cutoff=argv['cutoff'].strip()

if argv['output'] == None:
    	raise Exception ('You should provide a input file!')
else:
	output=argv['output'].strip()
#df = pd.read_csv(input, sep="\t")
input = open(input)
input.readline()

list_count = []
for eachline in input:
    eachline = eachline.strip().split('\t')
    counts = int(eachline[1].split(".")[0])
    list_count.append(counts)

count_log = [log10(x) for x in list_count]
list_y = count_log
list_x = range(len(list_y))
#list_y = count_log[:int(cutoff)]
#list_x = range(int(cutoff))
#x_ticks = [str(int(x) + 1) for x in list_x]
plt.figure(figsize=(12,8), dpi=300)
plt.plot(list_x, list_y)
#plt.xticks(np.arange(1, len(list_x)+1, 100))
plt.ylabel("reads count")
plt.xlabel("clonotype")
plt.title("reads distribution")
#plt.setp(plt.gca().get_xticklabels(), rotation=45, horizontalalignment='right')
plt.savefig(output)







