#!/usr/bin/env python 
from __future__ import print_function
from datetime import datetime
import string
import random
import md5
import hashlib
import math
import datetime

x = 'dab676a07bd2b9ec55667c8b9b0f007c'; #output of 'echo -n at056r8PT | md5sum'
a = x[:3]
b = x[29:]
c = a+b 
r = datetime.datetime.now()
print(r)
def partial_collision(chars): 
    x = 0
    while True:
        chars=string.ascii_letters + string.digits
        l = ''.join(random.choice(chars) for _ in range(random.randint(1,10)))
        k = hashlib.md5()
        part = k.update(l)
        tumbo = k.hexdigest()
        if (tumbo[0] != c[0]):
            continue
        else:
            y = tumbo[:3]
            z = tumbo[29:]
            zy = y+z 
            x += 1
            #print(x)
            #print(zy) 
            if (c==zy):
                print('success')
                print(l)
                print(r)
                s = datetime.datetime.now()
                print(s)
                time_delta = s - r
                print ('at056r8PT',x,c)
                print (l,tumbo,zy)
                print ('the time it took to find this was %s' % time_delta)
                print ('this was run %s times' % x)
                return
partial_collision('whatever')   

