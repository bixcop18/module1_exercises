# More fun manipulating sequence files with Python

## Question 0
`git pull` from the Git project to get the `More_python_fun_data` directory containing the files we are going to use here.

## Question 1
Write a python script that will:

* Read into the Sheet1 within the **metadata_file.xlsx** file present in the `More_python_fun_data/` directory.

* Extract UID and accessions (columns 1 & 2) for the *Z. mays* and *P. porosa* species and save these accessions in a text file called **selected_ids.txt**.
  
## Question 2
Write a Python script that:

* Uses the accessions in **selected_ids.txt** to parse and filter the corresponding fasta sequences from the **resistance_proteins.fasta** file. Save these fasta sequences in a file called **filtered_resistance_proteins.fasta**.
NB: The script should give a warning if the corresponding/matching fasta sequence for an accession is missing and save all accessions with missing sequences in a file called **missing.txt**.

* For each fasta sequence in **filtered_resistance_proteins.fasta**, search and replace (using accessions from **selected_ids.txt**) the sequence header (example: `>HB413228.1 Sequence 13 from Patent WO2009070569`) with ">" + corresponding UID (`> 0595f4adb333`). The results should be as shown below in (b) and saved in a file called **hidden_IDs_file.fasta**.

a)
> \>gi|75163199|sp|Q93VV9.1|TM16B_ARATH RecName: Full=Mitochondrial import inner membrane translocase subunit PAM16 like 2; Short=AtPAM16; Short=AtPAM16L2; AltName: Full=Presequence translocated-associated motor subunit PAM16; AltName: Full=Protein MUTANT SNC1-ENHANCING 5; AltName: Full=Protein THAXTOMIN A RESISTANT 1; Flags: Precursor
> MAGRLLANLIVMGSGIIGRAVFQAYRQALANASKSGVAQEAMQNGVRQAGKAITEQEARQILGVTEKTSW
> EEILQKYDKLFENNAKAGSFYLQSKVHRAKECLEVVYRSQGNGTPS

becomes:

b)
> \> 0595f4adb333
> MAGRLLANLIVMGSGIIGRAVFQAYRQALANASKSGVAQEAMQNGVRQAGKAITEQEARQILGVTEKTSW
> EEILQKYDKLFENNAKAGSFYLQSKVHRAKECLEVVYRSQGNGTPS

Create a neat directory and save all your scripts and output files pertaining to this exercise there. 
