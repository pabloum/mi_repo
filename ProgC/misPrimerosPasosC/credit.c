//
// Created by PABLO on 09/05/2018. e.g. 378282246310005
//

#include <stdio.h>
#include <string.h>

char* get_cc(char m[]);         // Asks the user for a credit card number
int length(char cc[20]);        // Calculates the length of the credit card number.
int Luhn(int cc[],int size);    // Applies Lunh's algorithm.

int main (){

//  -------------------------
//  I ask the user for the credit card number. Since credit card numbers are very long, it is not useful to use long int
//  because it would occupy a lot of memory. For instance, we decided to use a char instead.
//  -------------------------
    char cc[20];
    strcpy(cc,get_cc("Please, introduce the number of your credit card \n"));

//  -------------------------
//  I count the number of digits
//  -------------------------
    int size=length(cc);

//  -------------------------
//  I turn the individual char of the string into int; then I apply the Luhn’s algorithm; and finally I check which are
//   the first 2 numbers in order to know the type of credit card
//  -------------------------
    int icc13[13];
    int icc15[15];
    int icc16[16];

    int icc[size];

    int check;
    int visa=0;
    int amex=0;
    int mastercard=0;

    switch (size) {
        case 13: // Visa
            //  I turn the individual char of the string into int
            for(int i=0;i<13;i++){
                icc13[i] = cc[i] - '0'; // Turns the char into int e.g. '0' -> 0; '1' -> 1; etc. For ASCII code is different.
            }

            //  I apply the Luhn’s algorithm
            check=Luhn(icc13,size);

            //  If the Luhn's algorithm approves, I check which is the first number in order to know the type of credit card
            if(check==1){
                if(icc13[0]==4){
                    visa=1;
                }
            }
            break;
        case 15: // American Express
            //  I turn the individual char of the string into int
            for(int i=0;i<15;i++){
                icc15[i] = cc[i] - '0';
            }

            //  I apply the Luhn’s algorithm
            check=Luhn(icc15,size);

            //  If the Luhn's algorithm approves, i check which are the first 2 numbers in order to know the type of credit card
            if(check==1){
                if(icc15[0]==3&&icc15[1]/2==4||icc15[1]/2==7){
                    amex=1;
                }
            }
            break;
        case 16: // Visa or Master card
            //  I turn the individual char of the string into int
            for(int i=0;i<16;i++){
                icc16[i] = cc[i] - '0';
            }
            //  I apply the Luhn’s algorithm
            check=Luhn(icc16,size);

            //  If the Luhn's algorithm approves, i check which are the first 2 numbers in order to know the type of credit card
            if(check==1){
                if(icc13[0]==4){
                    visa=1;
                }else if(icc16[0]==5){
                    if (icc16[1]/2==1||icc16[1]/2==2||icc16[1]/2==3||icc16[1]/2==4||icc16[1]/2==5){
                        mastercard=1;
                    }
                }
            }
            break;
        default:
            break;
    }


//  -------------------------
//  I print the result
//  -------------------------

    if(amex==1) {
        printf("The credit card number is a valid American Express\n");
    }else if(mastercard==1) {
        printf("The credit card number is a valid Master Card\n");
    }else if(visa==1){
        printf("The credit card number is a valid Visa\n");
    }else{
        printf("The credit card number is not valid\n");
    }


    system("pause");
    return 0;
}

char* get_cc(char m[]){
    char cc[20];
    printf("%s",m);
    scanf("%s",cc);
    printf("Your credit card number is %s.\n",cc);
    return cc;
}

int length(char cc[20]){
    int size=0;
    while(cc[size]!=0){
        size++;
    }
    printf("Your credit card has %d digits\n",size);
    return size;
}

int Luhn(int icc[],int size){
    int check;
    for(int i=1;i<size;i=i+2){
        icc[i] = icc[i] * 2;
    }

    int acc=0;
    for(int i=0;i<size;i++) {
        if (icc[i]<10){
            acc=icc[i]+acc;         // There's something missing
        }else{
            acc=icc[i]/10+icc[i]%10+acc;
        }
    }

    printf("The sum of the Luhn's algorithm is %d.\n",acc);

    if(acc%10==0){
        check=1;
    }else{
        check=0;
    }

    return check;
}