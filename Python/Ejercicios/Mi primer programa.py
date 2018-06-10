

import os
os.system('cls')


print("\n" *80)  #clc; clear all; close all LOL

Y=" a bb ccc dddd eeeee ffffff ggggggg hhhhhhhh"  #Ingresemos el texto 
print("La frase ingresada fue: \t",Y,'\n')

x=sorted(str.lower(Y))


a=b=c=d=e=f=g=h=i=j=k=0
letra=[(a,'a'),(b,'b'),(c,'c'),(d,'d'),(e,'e'),(f,'f'),(g,'g'),(h,'h'),(i,'i'),(j,'j'),(k,'k')]
for i in range(len(x)):
    if x[i]=='a':
        letra[0]=(a+1,"a")
        a=a+1
    elif x[i]=='b':
        letra[1]=(b+1,"b")
        b=b+1
    elif x[i]=='c':
        letra[2]=(c+1,"c")
        c=c+1
    elif x[i]=='d':
        letra[3]=(d+1,"d")
        d=d+1
    elif x[i]=='e':
        letra[4]=(e+1,"e")
        e=e+1
    elif x[i]=='f':
        letra[5]=(f+1,"f")
        f=f+1
    elif x[i]=='g':
        letra[6]=(g+1,"g")
        g=g+1
    elif x[i]=='h':
        letra[7]=(h+1,"h")
        h=h+1
    elif x[i]=='i':
        letra[8]=(i+1,"i")
        i=i+1
    elif x[i]=='j':
        letra[9]=(j+1,"j")
        j=j+1
    elif x[i]=='k':
        letra[10]=(k+1,"k")
        k=k+1





print(letra)
r='a'
print("La letra más repetida es:",r,"\n")
