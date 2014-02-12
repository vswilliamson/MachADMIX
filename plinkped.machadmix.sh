#Conversion of plink files to mach admix format
gawk '{ $6 = ""; gsub(FS "+", FS) }1' data.ped > data2.ped
gawk '{print "M",$2}' data.map > data.dat
