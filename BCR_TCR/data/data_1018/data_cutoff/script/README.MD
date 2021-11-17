# From MiXCR output to Venn Diagram
## MiXCR output format
## Venn Diagram
### Extract counts and sequence
```cmd_extract_count_cdr3.py```
```extract_count_cdr3.py```
```
python cmd_extract_count_cdrs.py --input list
sh cmd_batch.sh
```
### cutoff files prepare

```cutoff.py```
```cmd_cutoff.py```
```
python cmd_cutoff.py --input cutoff_list
sh cmd_batch_cutoff.sh
```

### Venn Diagram
```venn_3.py```
```cmd_venn.py```
```
python cmd_venn.py --input venn_cutoff_1.list --output cmd_cutoff_1_venn_3rep.sh
sh cmd_cutoff_1_venn_3rep.sh
```
