#!/usr/bin/perl -w
my $sum=2;
my $prev1=2;
my $prev2=1;
my $limit=4000000;
#my $limit=100;
while ($fib<=$limit)
{
    $fib=$prev1+$prev2;
#	 print(" fib is $fib  \n");
my  $mod2= $fib%2;
if ( $mod2 == 0)
{
    $sum=$sum + $fib;
	 print(" $fib is a multiple of 2: sum is $sum  \n");
     }
$prev2=$prev1;
$prev1=$fib;
}

#@a=`ls -l .`;
#while (@a)
#{
#    $foo=pop(@a);
#    print("foo if $foo ");
