#!/usr/bin/perl -w
#my $number=600851475143;
my $number=2520;
my $upper=100;
my $lower=1;
my $target=10001;
#my $target=6;
my $divisor=20;
my $primecount=0;
my $value=2;
while ($primecount < $target)
{
#    print ("i is  $i \n");
    
    if (is_divisable($value,$value-1)!=1)
    {
# Prime number	
	$primecount++;
	print (" found a prime $value $primecount \n");
    }
    
    $value++;
}
#print "answer  is $value \n";




sub is_divisable
{
    

	($n,$d)=@_;
	
for ($i=2;$i<=$d;$i++)
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

