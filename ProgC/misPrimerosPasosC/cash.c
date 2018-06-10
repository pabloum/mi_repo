//
// Created by PABLO on 08/05/2018.
// Implement a program that calculates the minimum number of coins required to give a user change.
// The only coins available are quarters (25¢), dimes (10¢), nickels (5¢), and pennies (1¢).
//

#include <stdio.h>
#include <math.h>

int get_float(char s[60]);

int main(void){

    // we initialize all the available coins at 0
    int coin25=0; int coin10=0; int coin5=0; int coin1=0;

    // We ask how much is the expected change
    float cambio;
    printf("Por favor, ingresa el cambio esperado");
    scanf("%f",&cambio);

    // We find out how much cents do we owe
    float cents=fmodf(cambio,1.0)*100;

    printf("You should receive %f cents.\n",cents);

    // We evaluate how many 25c coins we need
    while(cents/25>=1){
        coin25++;
        cents=cents-25;
    }

    // We evaluate how many 10c coins we need
    while(cents/10>=1){
        coin10++;
        cents=cents-10;
    }

    // We evaluate how many 5c coins we need
    while(cents/5>=1){
        coin5++;
        cents=cents-5;
    }

    // We evaluate how many 1c coins we need
    while(cents/1>=1){
        coin1++;
        cents=cents-1;
    }

    printf("We need %d coins.\n "
           "\t %d coins of 25.\n "
           "\t %d coins of 10.\n "
           "\t %d coins of 5.\n "
           "\t %d coins of 1.\n \nThanks for participating\n\n",coin1+coin5+coin10+coin25,coin25,coin10,coin5,coin1);

    return 0;
}

//int get_float(char s[60]){
//    int n;
//    printf("%s",s);
//    scanf("%f",&n); // CLion is advicing me to use scanf_s instead of the traditional sacanf cause it deprecates
//
//    printf("the expected change is: %f\n \n",n);
//    return n;
//}


