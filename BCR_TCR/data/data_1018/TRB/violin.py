import argparse
import matplotlib.pyplot as plt
import seaborn as sns
import numpy as np
import pandas as pd
from math import log 
"""
This script is used to draw histogram based on clonetypes and counts
"""
parser = argparse.ArgumentParser()
parser.add_argument('--input',help='samplelist')
parser.add_argument('--output', help='output file name')
argv = vars(parser.parse_args())

if argv['input'] == None:
	raise Exception ('You should provide a input file!')
else:
	input=argv['input'].strip()

if argv['output'] == None:
    	raise Exception ('You should provide a input file!')
else:
	output=argv['output'].strip()

input = open(input)
input.readline()

list_count = []
for eachline in input:
    eachline = eachline.strip().split('\t')
    counts = int(eachline[1].split(".")[0])
    list_count.append(counts)

#top_10 = list_count[:10]
#top_100 = list_count[10:100:9]
#top_1000 = list_count[100:1000:90]
#top_l0000 = list_count[1000:10000:900]
#top_l00000 = list_count[10000:100000:9000]
#bottom = list_count[100000::9000]

top_10 = [log(x) for x in list_count[:10]]
top_100 = [log(x) for x in list_count[10:100:9]]
top_1000 = [log(x) for x in list_count[100:1000:90]]
top_l0000 = [log(x) for x in list_count[1000:10000:900]]
top_l00000 = [log(x) for x in list_count[10000:100000:9000]]
bottom = [log(x) for x in list_count[100000::9000]]

top_10_name = ["top10"] * len(top_10)
top_100_name = ["top100"] * len(top_100)
top_1000_name = ["top1000"] * len(top_1000)
top_10000_name = ["top10000"] * len(top_l0000)
top_100000_name = ["top100000"] * len(top_l00000)
bottom_name = ["top100000+"]*len(bottom)



x_list = top_10_name + top_100_name + top_1000_name + top_10000_name + top_100000_name + bottom_name
y_list = top_10 + top_100 + top_1000 + top_l0000 + top_l00000 + bottom
plt.figure(figsize=(12,5))
ax = sns.violinplot(x=x_list, y=y_list)
#plt.xticks(list_x, x_ticks)
ax.set_ylabel("log(reads count)")
ax.set_xlabel("clonotype")
ax.set_title("reads distribution")
plt.savefig(output)







