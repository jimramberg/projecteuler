#!/usr/bin/perl -w
#my $number=600851475143;
my $number=2520;
my $upper=2525;
my $lower=2515;
my $target=1;
my $divisor=20;
for ($i=11;$i<=20;$i=$i+2)
{
    print ("i is  $i \n");
    $number=$number*$i;
}

print " estimate is $number \n";
for ($t=$number;$t>=$upper;$t--)
{
#    print ("t is  $t \n");
    if (is_divisable($t,$divisor) == 0 )
    {
	
	$number=$number-1;
    }
    else {
	print ("Number is $t \n");    
    }
}




sub is_divisable
{
    

	($n,$d)=@_;
	
for ($i=$d;$i>=2;$i--)
{
#    print (" $i is is i \n");
    if ($n % $i != 0)
    {
#	print( "$n is not divisable by $i \n");
	return (0);
    }
}

return(1); 


    }

