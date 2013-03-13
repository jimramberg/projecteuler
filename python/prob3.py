#!/usr/bin/python
import math
number=600851475143
#number=9900
mod2=0
mod1=0
factors=[]
print " Original number is", number
def factor_this (lower,upper):
    "Factoring function"
    top=int(math.sqrt(upper))
    bottom=lower+1
    for i in range(bottom,top):
        mod = upper%i
#        print " This is i", i,"this is mod", mod,  "this is upper", upper
        if ( mod == 0):
            print 'This is a factor',i,top,bottom
            return i;

    print 'This is a prime number',upper, " loop variables",top,bottom
    return upper;

factor= factor_this(1,number)
print "adding to factors list", factor , number 
factors.append(factor)
number=number/factor
while (factor != number):
    print "Calling to factors list", factor , number 
    factor=factor_this(factor,number) 
    if factor not in factors:
        print "adding to factors list", factor , number 
        factors.append(factor)
        number=number/factor
        print "New number is", number
print " Now Checking for primes"
while (factors):
    i=factors.pop()
    factor=factor_this(1,i)


