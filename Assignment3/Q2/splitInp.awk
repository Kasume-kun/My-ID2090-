#!/usr/bin/gawk -f

BEGIN{
	FS = ";";
}
{
	for(i=1; i<=NF && NR<2 ; i++)
	{
		print $i>"H.txt";
	}
	for(i=1; i<=NF && NR>1 ; i++)
        {
                print $i>"V.txt";
        }
}
END{}
