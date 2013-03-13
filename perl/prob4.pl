#!/usr/bin/perl -w
my $number=600851475143;
#my $number=400;
my $upper=999;
my $lower=100;
my $target=999;
for($i=$upper;$i>=$lower;$i--)
{
for($j=$upper;$j>=$lower;$j--)
{
    
    $number=$i*$j;
    
    if (is_pall($number))
    {
	if ($number >=$target)
	{
	    
	    push(@factors,$number);
	    $target=$number;
	}
	else
	{
	    print "number is $number  Target is $target \n";
#	    last;
	}
    }
}
#if ($target <=$number) 
#{
#last;
#}
}





sub is_pall {
    ($number)= (@_);
    @test_number=split(//,$number);
    $length=$#test_number;
    for  ($k=0;$k<=$length;$k++)
    {
#    print("length $length Check $test_number[$k] to $test_number[$length-$k] \n");
	if ( $test_number[$k]!= $test_number[$length-$k])
	{
#    print("This number is a not palindrome @test_number \n");
	    return(0);
	}
    }
    print("@test_number \n");
 return(1);
}
#@a=`ls -l .`;
#while (@a)
#{
#    $foo=pop(@a);
#    print("foo if $foo ");
