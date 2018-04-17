# Group exercise #1

The data folder contains a fasta file `Oryza_sativa.IRGSP-1.0.dna_rm.chromosome.10` containing the genomic sequence for chromosome 10 of the japonica rice genome and a gffs file containing the genes feature for each gene on chromosome 10. Using these files, along with the aquaporin files in the `aquaporin` folder, write a shell or python script that will create a fasta file containing the CDS file of all the aquaporin transcript on rice chromosome 10. Use *git* to collaborate on this project.

### Hints
1. Familiarise yourself with the format of a gff3 file. Check the link below for more details: <https://www.ensembl.org/info/website/upload/gff3.html>
2. A CDS only contains exon(s) sequences
3. You can append new output to an existing file in python by opening it with the “a” argument. E.g. a file opened with `output_file = open(“filename.txt”, a)` will take in new output without overwriting the existing content.

