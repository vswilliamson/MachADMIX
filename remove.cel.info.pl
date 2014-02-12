use strict;
use warnings;
# script removing cel file information from ID column in ped files
# 12-16-2013
# Vernell Williamson
my $ped  = shift;
if(!defined($ped)){
         die "name of ped\n";

}
#1537_111465_A01.AxiomGT1.txt
open P, $ped;
	while (my $line = <P>){
                chomp $line;
                if($line=~/0\s+(\S+)\_(\S+)\_\S+\.AxiomGT1\.txt(\s+0\s+0\s+\-9\s+\-9)\s+(.*)/){
                 print "$1\t$2\t$3\t$4\n";
        }
}
