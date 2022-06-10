#!/usr/bin/awk -f
#
#Script by Sumedh Kangne, BE21B040
#
#usage:
#./totalBill.awk UB.csv > final-bill.csv
#
#
BEGIN{
	FS = ",";
	sum = 0;
	tax = 0;
	system("cat header.txt");
	print "\n";
}
{
	if( $1 ~ /Room Code/){	print $1", " $2", " $3", " $4; }
	else{
		sum += ($3*$4);
		if( $1 ~ /^A/ ){ tax += ( 0.12*$3*$4 ) }
		if( $1 ~ /^B/ ){ tax += ( 0.18*$3*$4 ) }
		if( $1 ~ /^C/ ){ tax += ( 0.24*$3*$4 ) }
		print $1", " $2", " $3", " $4;}
}
END{
	print "\n";
	system("cat footer.txt | head -n 1 ");print sum"\n";
	system("cat footer.txt | tail -n 1 ");print tax;
}
