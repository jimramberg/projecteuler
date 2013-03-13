#!/usr/bin/perl -w
#my $number=600851475143;
my $number=2520;
my $upper=100;
my $lower=1;
my $target=1;
my $divisor=20;
my $sumsq=0;
my $sqsum=0;
for ($i=$lower;$i<=$upper;$i++)
{
#    print ("i is  $i \n");
    $sumsq=$sumsq +$i**2;
    $sqsum=$sqsum +$i;
}

$sqsum=$sqsum**2;
$diff=$sqsum -$sumsq;
print "answer  is $diff \n";




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

