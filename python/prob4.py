#!/usr/bin/python
number=600851475143
# number=400
upper=999
lower=100
target=999;
factors=[]

def is_pall (number):

     test_number=str(number)
     length=len(test_number) -1
     for  k in range(0,length):
#          print "length", length ,k, "Check", test_number[k]," to", test_number[length-k]
          if ( test_number[k]!= test_number[length-k]):
#               print "This number is a not palindrome", test_number 
               return 0 
#          print "number", test_number
     return(1)



for  i in range(upper,lower,-1):
    for j in range(upper,lower,-1):
     number=i*j
     if is_pall(number) :
	if (number >= target):
	    factors.append(number)
	    target=number
	else:
	    print "number is ",number,"  Target is ",target







