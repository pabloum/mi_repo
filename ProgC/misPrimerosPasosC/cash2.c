//
// Created by PABLO on 08/05/2018.
//


#include <stdio.h>
#include <math.h>

float get_change(char s[]);
int evaluate(float den, float *cents);

int main(void){

    // We ask how much is the expected change
    float cents=get_change("Ingrese el cambio\n");

    // I calculate the amount of coins that the machine needs to give to the user
    int coin25=evaluate(25,&cents);
    int coin10=evaluate(10,&cents);
    int coin5=evaluate(5,&cents);
    int coin1=evaluate(1,&cents);

    // I print the result
    printf("We need %d coins.\n "
           "\t %d coins of 25.\n "
           "\t %d coins of 10.\n "
           "\t %d coins of 5.\n "
           "\t %d coins of 1.\n \nThanks for participating\n\n",coin1+coin5+coin10+coin25,coin25,coin10,coin5,coin1);

//    system("pause");
    return 0;
}

float get_change(char s[]){

    // I declare the variables that I am going to use
    float change,cents;

    // I ask the user for the expected change
    printf("%s",s);
    scanf("%f",&change); // CLion is advising me to use scanf_s instead of the traditional scanf because it deprecates

    // I calculate the amount of cents that the user should receive
    cents=fmodf(change,1.0)*100; // Residuo de dolares/1 son los centavos.

    // I print the total expected change and the expected cents
    printf("The expected change is: %f dollars\n\n",change);
    printf("You should receive %f cents.\n\n",cents);

    //I return the amount of cents needed.
    return cents;
}

int evaluate(float den, float *cents){

    // I declare the number of needed coins and initialize it in 0
    int coin=0;

    // I iterate and add the number of coins
    while(*cents/den>=1){
        coin++;
        *cents=*cents-den;  // I am using pointers in order to change the value i had in cents in the main.
    }

    // I return the number of coins
    return coin;
}


