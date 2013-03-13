#!/usr/bin/python
#number=600851475143
number=2520
upper=2525
lower=2515
target=1
divisor=20
def is_divisable(n,d):
	"divis function"	
	for i in range(d,2,-1):
#    		print " i is  " , i 
     		if (n % i != 0):
#       		 print "n is not divisable by  %r \n" % i 
		 return (0)
	return(1) 

number=number*11*13*15*17*19
print " estimate is %r" % number 
for t in range(number,upper,-20):
#	print "t is %r" % t  

    
	if (is_divisable(t,divisor) == 0 ):
		number=number-1
  	else: 
		print "Number is  %r\n" % t     
    





