import os,sys,re
import gzip
import commands
import json
import operator
import csv
#from Bio import pairwise2
#from Bio.SubsMat import MatrixInfo as matlist
from collections import namedtuple
from collections import OrderedDict
from itertools import izip_longest


#mydict= {modID:{sequences1:{header1:count1},sequences2:{header2:count2}}, modID2....}


#FUNCTIONS

def ID2(header):
	l1=header.split(" ")
	ID=l1[0]
	inf=l1[1].split(":")
	Q=inf[1]
	return ID, Q


#sort dictionary by count of sequences
def sortdic(Dic):
	result ={k: OrderedDict(sorted(v.items(), key=lambda h: next(iter(h[1].values())),reverse=True)) for k,v in Dic.items()}
	return result


#save the headers to find them then in the fastq files
def saveHeadDic(Dic, outputFile):
	sorted_dic=sortdic(Dic)
	for k, v in sorted_dic.iteritems():
			for sequence, head_count in v.iteritems():
				for head, count in head_count.iteritems():
					h=head+'\n'
					with open(outputFile, 'a') as out:
						out.write(h)
	return


#select only sequences and molecular ID with a sequence count of at least 2
def makeSelection(Dic):
	s=sortdic(Dic)
	selection={}
	Nlist= []
	for k,v in s.iteritems():
		
		N=len(v)
		Nlist.append(N)
		if N > 1:
			selection[k]=v.items()[0]
		if N == 1:
			for R1R2, value in v.iteritems():
				for header, count in value.iteritems():
					if count > 2:
						selection[k]=v.items()[0]
					if count == 1:
						continue
					if count < 1:
						print "error in item.values number: a count < 1 is not possible"
						break
		if N < 1:
			print "error n sequence per molecular ID: 0 sequences per molecular ID is not possible"
			break
	return selection, len(Nlist), len(selection)




#select headers of the already made selection
def saveHeadSel(sel, outputFile):
	for k,v in sel.iteritems():
		for head, count in v[1].iteritems():
			h=head+'\n'
			with open(outputFile, 'a') as out:
				out.write(h)
	return


#print molecular identifier and sequences count numbers
def showDic(Dic):
	result=sortdic(Dic)
	for k,v in result.iteritems():
		print k
		for R1R2, value in v.iteritems():
			for header, count in value.iteritems():
				print count
		

	return 


def outDic(Dic,outD):
	result=sortdic(Dic)
	for k,v in result.iteritems():
		outD[k]=[]
		for R1R2, value in v.iteritems():
			for header, count in value.iteritems():
				outD[k].append(count)
	return
			


#create dictionary { molecular_ID : { (seq1,seq2) : { header : count }}}
def makeDic(dic,key,myR1R2,header):
	try:
		try:
			head1=dic[key][myR1R2].keys()[0]
			dic[key][myR1R2][head1]+= 1 
		except KeyError:
			head1=ID2(header)
			dic[key][myR1R2]= {head1:1}

    	except KeyError:
        	head1=ID2(header)		
		dic[key]= {myR1R2:{head1:1}}
		
	return

#create list with headers
def makeHlist(dic):
	headList=[]
	for k,v in dic.iteritems():
			for head, count in v[1].iteritems():
				h=head
				headList.append(h)
	return headList

###########################################################################################################################


R1= gzip.open(sys.argv[1], 'rb')
R2= gzip.open(sys.argv[2], 'rb')
R1R2=namedtuple("R1R2", ["R1","R2"])
Dic={}
print "R1 and R2 files opened successfully"
#read fastq files at the same time

try:
	
	while True:
		header1=next(R1)
		seq1=next(R1)
		plus1=next(R1)
		quality1=next(R1)
		header2=next(R2)
		seq2=next(R2)
		plus2=next(R2)
		quality2=next(R2)
		
		head1,Q1=ID2(header1)
		head2,Q2=ID2(header2)
		if head1==head2:
			if Q1=="N" and Q2=="N":

				myKey=seq1[:39]
				seq1SHORT=seq1[40:]
				myR1R2=R1R2(R1=seq1SHORT, R2=seq2)
				makeDic(Dic,myKey,myR1R2,header1)
			else:
				continue
		
		else:
			print "fastq files matching is wrong: header 1 and 2 don't correspond"
			print header1+" "+header2
		
		
			


except(StopIteration):
	print ""

print "dictionary was created"

#select sequences with higher count
#Nl=number of sequences in the original dictionary
#sl= number of sequences after selection
R1.close()
R2.close()

selection, Nl, sl,=makeSelection(Dic)
print "sequences selected"
headList=makeHlist(selection)
print "starting creating output fastq"


R1= gzip.open(sys.argv[1], 'rb')
R2= gzip.open(sys.argv[2], 'rb')

try:
	while True:
		header1=next(R1)
		head1=ID2(header1)
		seq1=next(R1)
		plus1=next(R1)
		quality1=next(R1)
		header2=next(R2)
		seq2=next(R2)
		plus2=next(R2)
		quality2=next(R2)
		if head1 in headList:
			seq1SHORT=seq1[40:]
			quality1SHORT=quality1[40:]
			with open(sys.argv[3], 'a') as oR1:
				oR1.write(header1+seq1SHORT+plus1+quality1SHORT)
			with open(sys.argv[4], 'a') as oR2:
				oR2.write(header2+seq2+plus2+quality2)
		

except(StopIteration):
	print ""
	
R1.close()
R2.close()


print "output fastq created, starting output dictionary"

outD={}	
outDic(Dic, outD)
with open(sys.argv[5],'wb') as myout:
	
	for  k,v in outD.iteritems():
		myout.write(k+'\t'+str(v)+'\n')
myout.close()

print "mission accomplished"










