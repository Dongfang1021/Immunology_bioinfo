#Data analysis workflow from MiXCR alignment outputs to venn diagram
## Extract columns which used for downstream analysis
For this small project, I chose clonotypes percentage as cutoff value to compare results from DriverMap and SMART.

extract_count_cdr3_percentage.py
cmd_extract_count_cdr3_percentage.py
```
python extract_count_cdr3_percentage.py --input list --output cmd_percentage_extraction.sh
sh cmd_percentage_extraction.sh
```
## Extract clonotypes based on cutoff value
cutoff_percentage.py
cmd_cutoff.py
```
python cmd_cutoff.py --input sampelist --output cmd_batch_cutoff_percentage.sh
sh cmd_batch_cutoff_percentage.sh 
```
## Venn Diagram for 3 reps of one sample
venn_3.py
cmd_venn.py
```
python cmd_venn.py --input venn_list --output venn_cmd.sh
sh venn_cmd.sh &
```

## Venn Diagram for two sample with 3 reps
venn2.py
```
cat sample1_rep1, sample1_rep2, sample1_rep3 >> sample1
cat sample2_rep2, sample2_rep2, sample2_rep3 >> sample2
python venn2.py --input_1 sample1 --input_2 sample2 --figure_name sample1_vs_sample2
```