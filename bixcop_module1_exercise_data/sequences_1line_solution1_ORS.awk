# script to process a FASTA file and have all the sequences on one single line each.
BEGIN { ORS="" } # changing the output record separator so that we can print stuff without the trailing newline character
/^>/ { if (NR!=1) print "\n" ; print $0 "\n" ; next }
{ print }
END { print "\n" }
