# Data organisation exercises
**Question 1**: The Agricultural and Horticultural Development Board (AHDB), UK,  annually conducts field trials to evaluate new wheat varieties and provide recommendation to farmers based on a number of important traits including yield, protein content, disease resistance, etc. AHDB conduct trials for both spring (SW) and winter wheat (WW) under disease treated and untreated field trial. You are provided with summary data for field trial from 2002 to 2005 in multiple excel files in the `AHDB` folder. Use the data organisation techniques you have learnt to:  
1. Create one new spreadsheet that summarises the data for traits in each year in both the treated and untreated field trial. Remember to save this workbook as a CSV file.
2. Create a separate metadata file that provides a summary description of each of the trait columns.


# Unix Command line exercise continuation...
These exercises are designed to further test you unix skill. To satrt with, you will need to download the data from `https://github.com/bixcop18/module1_exercises` into a directory you have made for this exercise 

**Question 2** : The data directory you downloaded contains a sub-directory called `aquaporin` with protein fasta files (.fasta) of aquaporins of in maize, rice and sorghum. Aquaporin genes are involved in water transport in different plant organs and are useful target for improving water homeostasis in crops. The directory also contains BLAST database (.p\*) and index (.fai) files for these fasta files. Using these data, write uniq statement to perform the following tasks:
1. Tidy up the `aquaporin` directory by creating new folder for the different file types. `Hint: Use wildcard selection`.
2. Find the number of aquaporins genes in maize, sorghum and rice `Hint: wc, grep`. 
3. Prints out the number of aquaporins genes per chromosome per crop. `Hint: The chromosome information is embedded in the fasta header e.g chromosome 1 header will be  Zm0001XXX, Os01XXX for rice, SORBI_3001XXX for sorghum`. `for loop, grep, wc`

**Question 3** : The data directory contains a variant file called `soybean_snp.vcf` with the genotype results of 2 soybean accessions (PI86046 and PI90208) run on the soybean SoySNP50K iSelect BeadChip. The array contain SNPs from all 10 chromosomes of soybean and many unanchored scaffolds. Using this vcf data, write shell/python statements to perform the following task:
1. Find the number of SNPs on the SoySNP50K iSelect BeadChip.
2. Find the number of SNPs on each soybean chromosome. 
3. Find the number of SNPs on the unanchored scaffolds.
4. Create a new vcf file contains only SNPs on chromosomes.  `Hints: exclude snps on unanchored scaffold`.
5. Find the number of SNPs with homozygous alternate allele for both PI86046 and PI90208. Hints: alternate allele are represented by 1/1`.
6. You have developed a biparental soybean population made from a cross between PI86046 and PI90208 and have identified a QTL controlling yield located between 35 Mb - 45 Mb on chromosome 3. Extract all the SNPs that are polymorphic (different) between PI86046 and PI90208 that use can use to develop markers. `awk`

# **Python programming**
The exercises below are to test your skills in python programming. Attempt to use the Jupyter notebook for these exercises. You can also attempt to solve them in Unix

**Question 4**: The data directory contains a fasta file with the genomic sequence of one of the aquaporin genes of maize (Zm00001d005421) that has 3 exons. The first, second and third exons span the 133rd – 756th, 2702nd – 2842nd and 2940th – 3053rd characters, respectively. Write python statements in the jupyter notebook that will perform the following task:
1. Find the length of Zm00001d005421.
2. Calculate the AT content of Zm00001d005421.
3. Reverse this Zm00001d005421 sequence.
4. Combine 2 and 3 above and write a function that takes in a sequence and output the reverse complement of the sequence.
4. Derive the complementary DNA sequence for Zm00001d005421 (i.e all A, T, C, G -> T, A, G, C respectively). `Hint: See the replace method in python`.
5. Splice out the intron to derive the cds sequence of Zm00001d005421.
6. Print out the sequence of Zm00001d005421 with the exons in upper case and non-coding elements (UTR and introns) in lower case. `Hint: See the upper and lower methods in python`. 

**Question 5**: Below is a list of crops and animals that an agricultural research station  works on. 
`cereal = [“maize”, “wheat”, “rice”]`, `legume =  [“cowpea”, “groundnut”]`, `grasses =  [“brachiaria”]`, `tree = [“acacia”]`, `animal = [“pig”,  “goat”, “sheep”, “cow”]`. Using these lists, write python statements to perform the following:
1. Print out the second element in the cereal list 
2. Add more livestocks to the animal list, and print the list.
3. Create a new list that combines all the lists above into.
	*one list called `species` containing all the crops and livestocks.
	*one nested list called `nested_species` containing each of the individual lists.
4. Print out “groundnut” from the `nested_species` list.

**Question 6**: Reorder and properly indent the lines of code below so that they print an array with the cumulative sum of data. The result should be [1, 3, 5, 10].
* cumulative += [sum]
* for number in data:
* cumulative = []
* sum += number
* sum = 0
* print(cumulative)
* data = [1,2,2,5]

**Question 7**: Write a function that accept a sentence and then prints the sentence with the words reversed e.g the master_yoda function called on ‘I am home’ will return ‘home I am’. `Hint: join method`


**Question 8**: Import the cleaned AHDB csv file from question 1 into python and perform the following task.
1. Derive the summary statistics for each trait across all the across all the field trail years.
2. Derive the summary statistics for each trait for each year. `hint: group_by`.
3. Create a plot showing the average yield across all three years.  for spring wheat varieties and winter wheat varieties.
4. Create a plot showing the average yield for each year.
5. Create a plot showing the average yield across all three years separately for spring and winter wheat varieties.




