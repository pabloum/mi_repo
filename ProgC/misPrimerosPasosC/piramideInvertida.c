//
// Created by PABLO on 08/05/2018.
//

#include <stdio.h>


int get_int(char s[30]);

int main(void){

    int x=get_int("Introduzca la altura \n");

    for (int i=0;i<=x;i++){
        for (int j=x;j>=0;j--){
            if (i<j){
                printf(" ");
            }
            else{
                printf("#");
            }
        }
        printf(" ");
        for(int j=0;j<=x;j++){
            if(j<=i){
                printf("#");
            }
            else{
                printf(" ");
            }
        }
        printf("\n");
    }
}


int get_int(char s[30]){
    int x;
    printf("%s",s);
    scanf_s("%i",&x); // CLion is advicing me to use scanf_s instead of the traditional sacanf cause it deprecates
    return x;
}

