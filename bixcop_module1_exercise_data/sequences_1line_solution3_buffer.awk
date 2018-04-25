# awk script to put all sequences from a FASTA file each on one line
# this solution is based on the use of a buffer (text-containing variable)
# that grows as we read in the different chunks composing a single sequence.
BEGIN { buffer = "" } # the buffer I will use to grow sequences
/^>/ { if (NR != 1) print buffer ; print $0 ; buffer = "" ; next }
{ buffer = buffer $0 } # the concatenation operator (glueing two strings together) is implicit
END { print buffer }
