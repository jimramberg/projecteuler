#!/usr/bin/perl -w
#my $number=600851475143;
my $number=2520;
my $upper=100;
my $lower=1;
my $target=2000000;
#my $target=6;
my $divisor=20;
my $primecount=0;
my $total=0;
for  ($j=$lower;$j<$target;$j++)
{
#    print ("i is  $i \n");
    if ( sqrt($j) =~ m/\./) 
    {
	if (is_divisable($j,$j-1)!=1)
	{
# Prime number	
	    $primecount++;
	    $total=$total+$j;
	print (" found a prime $j $primecount  total $total \n");
	}
    }
    else {next}
}
#print "answer  is $value \n";

	print (" found a prime $primecount  total $total \n");


sub is_divisable
{
    

	($n,$d)=@_;
	my $top = sqrt($d);
#	my $top = $d;
	
for ($i=2;$i<=$top;$i++)
{
#    print (" $i is is i \n");
    if ($n % $i == 0)
    {
#	print( "$n is divisable by $i \n");
	return (1);
    }
}

return(0); 


    }

