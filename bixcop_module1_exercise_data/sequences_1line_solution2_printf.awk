# script to process a FASTA file and have all the sequences on one single line each.
/^>/ { if (NR!=1) printf "\n" ; printf "%s\n", $0 ; next }
{ printf $0 } # for all lines containing sequence data
END { printf "\n" } # adding the end-of-line character at the end of the file
