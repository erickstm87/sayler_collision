#!/usr/bin/env python 
from __future__ import print_function
from datetime import datetime
import string
import random
import md5
import hashlib
x = 'dab676a07bd2b9ec55667c8b9b0f007c'; #output of 'echo -n at056r8PT | md5sum'
a = x[:3]
b = x[29:]
c = a+b 
print(datetime.now())
class hash_collision: 
   
    def id_generator(self,chars=string.ascii_letters + string.digits):
        y = ''.join(random.choice(chars) for _ in range(random.randint(1,10)))
        return y
     
    def partial_collision(self): 
          
        while True:
         
            l=self.id_generator()
            k = hashlib.md5()
            part = k.update(l)
            tumbo = k.hexdigest()
            if (tumbo[0] != x[0]):
               
                continue
            else:
                y = tumbo[:3]
                '''if (y != b):
                   
                    continue'''
                z = tumbo[29:]
                zy = y+z  
                if (c==zy):
                    print('success')
                    print(datetime.now())
                    print ('at056r8PT',x,c)
                    print (l,tumbo,zy)
              
                    return
     
def main():
    i = hash_collision()
    i.partial_collision()
main()

