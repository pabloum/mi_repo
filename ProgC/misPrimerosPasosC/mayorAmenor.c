//
// Created by PABLO on 08/05/2018.
//

#include <stdio.h>
int main(void)
{
    int x[10];
    int menor,mayor,temp;
    for(mayor=0; mayor<10; mayor++)
    {
        printf("[%d]: ",mayor+1);
        scanf("%d", &x[mayor]);
    }
    for(mayor=0; mayor<9; mayor++)
    {
        for (menor=mayor+1; menor<10; menor++)
        {
            if(x[menor]<x[mayor])
            {
                temp=x[menor];
                x[menor]=x[mayor];
                x[mayor]=temp;
            }
        }
    }
    printf("\n Los numeros de mayor a menor son:\n");
    for(menor=9; menor>=0 ; menor--)
    {
        printf("%d ", x[menor]);
    }
    system("pause");
    return 0;
}
