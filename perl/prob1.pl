#!/usr/bin/perl -w
my $sum=0;
for ($i=1;$i<1000;$i++)
{
 my  $mod3= $i%3;
my  $mod5= $i%5;
if (( $mod3 == 0) ||( $mod5 == 0))
{
    $sum=$sum + $i;
	 print(" $i is a multiple of 3: sum is $sum  \n");
     }



#@a=`ls -l .`;
#while (@a)
#{
#    $foo=pop(@a);
#    print("foo if $foo ");
}
