#!/usr/bin/perl -w
my $number=600851475143;
#my $number=400;
my $mod2=0;
my $mod1=0;

$factor=factor_this(1,$number);
	push(@factors,$factor);
while ($factor != $number)
{

    $number=$number/$factor;
    $factor=factor_this($factor,$number);
#	print(" $factor is a multiple of $number  \n");
	push(@factors,$factor);
}

while (@factors)
{
    $i=pop(@factors);
print (" Checking for primes $i \n");
    $factor=factor_this(1,$i);
}




sub factor_this {
    ($lower,$upper)= @_;
    
    for  ($i=$lower+1;$i<=$upper-1;$i++)
    {
	my  $mod= $number%$i;
	if ( $mod == 0)
	{
	    return($i);
	}
    }
    print("This is a prime number $upper \n");
 return($number);
}
#@a=`ls -l .`;
#while (@a)
#{
#    $foo=pop(@a);
#    print("foo if $foo ");
