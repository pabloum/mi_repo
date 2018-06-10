//
// Created by PABLO on 14/05/2018.
//

#include <stdio.h>
#include <string.h>
#include <ctype.h>
#include <stdint.h>

char get_op(char s[]);
void menu();
char* get_char(char s[]); 
void crypt(char msn[],char pass[]);
void decrypt(char msn[],char pass[]);
int toInt(char c);
char toChar(int v);
int length(char c[50]);

int main (){

    char op;
    char msn[50];
    char pass[50];

    fflush(stdin);

    while(1){
        menu();
        op=get_op("\n Please, select the desired option\n");
        switch (op){
            case '1':
                system("cls");
                printf("So, we are going to crypt :3 Congrats, dude!!\n\n");

                // Ask for the message
                strcpy(msn,get_char(" Please, insert the message to crypt.\n"));
                printf("\n\n This is your message:   %s\n\n",msn);

                // Ask for the password
                strcpy(pass,get_char("\n Please, insert the password.\n\n"));
                printf("\n\n This is your password:   %s\n\n",pass);

                // To print the crypted message.
                crypt(msn,pass);

                system("pause");
                break;
            case '2':
                system("cls");
                printf("So, we are going to read :3 Congrats, dude! \n\n");
                // Ask for the message
                strcpy(msn,get_char(" Please, insert the message to decrypt.\n"));
                printf("\n\n This is your crypeted message:   %s\n\n",msn);

                // Ask for the password
                strcpy(pass,get_char(" Please, insert the password.\n"));
                printf("\n\n This is your password:   %s\n\n",pass);

                // To print the decrypted message.
                decrypt(msn,pass);

                system("pause");
                break;
            case '3':
                exit(0);
                break;
            default:
                break;
        }
    }
}

char get_op(char s[]){
    char op;
    printf("%s", s); // please, select the desired option
    scanf("%c", &op);
    fflush(stdin);
    fseek(stdin,0,SEEK_END);
    if(op!='1'&&op!='2'&&op!='3'){
        printf("Invalid option\n");
    }
    return op;
}

void menu(){
    system("cls");
    printf("\n\n\n\t \t WELCOME TO VIG'ENERE CRYPT\n\n Here it is what you can do with the program. \n\n\n"
           "\t 1 - To crypt a message\n\t 2 - To read a message\n\t 3 - Exit\n\n");
}

char* get_char(char s[]){
    char nn[50];
    printf("%s",s);
    scanf("%[^\n]",nn);
    fseek(stdin,0,SEEK_END);
    fflush(stdin);
    return nn;
}

void crypt(char msn[],char pass[]){
// This function crypts a massage

// I count the length of the message

    int sizeM=length(msn);
    int sizeP=length(pass);
    int cont=0;
    int i;
    char aux[50];
    strcpy(aux,pass);
    if (sizeM>sizeP){
        for(i=0;i<sizeM;i++)
		{
            if(msn[i]==' '){
                pass[i]=' ';
            }else {
                pass[i]=aux[cont];
                cont++;
                if(cont==sizeP){
                    cont=0;
                }
            }
            if(i==sizeM-1){
                msn[sizeM]=0;
                pass[sizeM]=0;
            }
        }
    }

    int icrypt[50];
    int Xi[50],Ki[50];
    char scrypt[50];
    // int i;
    for(i=0;i<sizeM;i++){

        if(msn[i]!=' '){
            Xi[i]=toInt(msn[i]);
            Ki[i]=toInt(pass[i]);
            icrypt[i]=(Xi[i]+Ki[i])%26; // This crypts the message
        } else{
            Xi[i]=0;
            Xi[i]=0;
            icrypt[i]=27;
        }
        scrypt[i]=toChar(icrypt[i]);

//        printf("result of operation: %d\n",icrypt[i]);
//        printf("result of toChar: %c\n",scrypt[i]);
    }
    scrypt[sizeM]=0;
    printf("\n\n \t The crypted message is:\n\n\t----> %s <----\n",scrypt);

    printf("\n\nPlease, subscribe for more :') \n\n\n");
}

void decrypt(char msn[],char pass[]){

    int sizeM=length(msn);
    int sizeP=length(pass);
    int cont=0;
    int i;
    char aux[50];
    strcpy(aux,pass);
    if (sizeM>sizeP){
        for(i=0;i<sizeM;i++){
            if(msn[i]==' '){
                pass[i]=' ';
            }else {
                pass[i]=aux[cont];
                cont++;
                if(cont==sizeP){
                    cont=0;
                }
            }
            if(i==sizeM-1){
                msn[sizeM]=0;
                pass[sizeM]=0;
            }
        }
    }

    int icrypt[50];
    int Ci[50],Ki[50];
    char scrypt[50];
    for(i=0;i<sizeM;i++) {
        if(msn[i]!=' '){
            Ci[i]=toInt(msn[i]);
            Ki[i]=toInt(pass[i]);
            if(Ci[i]>=Ki[i]) {
                icrypt[i] = (Ci[i] - Ki[i]) % 26; // This crypts the message
            }else{
                icrypt[i] = (Ci[i] - Ki[i] + 26) % 26; // This crypts the message
            }
        } else{
            Ci[i]=0;
            Ki[i]=0;
            icrypt[i]=27;
        }
        scrypt[i]=toChar(icrypt[i]);

    }

    scrypt[sizeM]=0;
    printf("\n\n \t The decrypted message is:\n\n\t----> %s <----\n",scrypt);

    printf("\n\nPlease, subscribe for more :') \n\n\n");
}

int length(char c[50]){
    int size=0;
    while(c[size]!=0){
        size++;
    }
    return size;
}

char toChar(int v){
    char c;
    if (v==27){
        c=' ';
    } else if(v==0){
        c='A';
    } else if(v==1){
        c='B';
    }else if(v==2){
        c='C';
    }else if(v==3){
        c='D';
    }else if(v==4){
        c='E';
    }else if(v==5){
        c='F';
    }else if(v==6){
        c='G';
    }else if(v==7){
        c='H';
    }else if(v==8){
        c='I';
    }else if(v==9){
        c='J';
    }else if(v==10){
        c='K';
    }else if(v==11){
        c='L';
    }else if(v==12){
        c='M';
    }else if(v==13){
        c='N';
    }else if(v==14){
        c='O';
    }else if(v==15){
        c='P';
    }else if(v==16){
        c='Q';
    }else if(v==17){
        c='R';
    }else if(v==18){
        c='S';
    }else if(v==19){
        c='T';
    }else if(v==20){
        c='U';
    }else if(v==21){
        c='V';
    }else if(v==22){
        c='W';
    }else if(v==23){
        c='X';
    }else if(v==24){
        c='Y';
    }else if(v==25){
        c='Z';
    }


    return c;
}

int toInt(char c){
    int n;
    switch (c){
        case ' ':
            n=30;
            break;
        case 'a':
            n=0;
            break;
        case 'A':
            n=0;
            break;
        case 'b':
            n=1;
            break;
        case 'B':
            n=1;
            break;
        case 'c':
            n=2;
            break;
        case 'C':
            n=2;
            break;
        case 'd':
            n=3;
            break;
        case 'D':
            n=3;
            break;
        case 'e':
            n=4;
            break;
        case 'E':
            n=4;
            break;
        case 'f':
            n=5;
            break;
        case 'F':
            n=5;
            break;
        case 'g':
            n=6;
            break;
        case 'G':
            n=6;
            break;
        case 'h':
            n=7;
            break;
        case 'H':
            n=7;
            break;
        case 'i':
            n=8;
            break;
        case 'I':
            n=8;
            break;
        case 'j':
            n=9;
            break;
        case 'J':
            n=9;
            break;
        case 'k':
            n=10;
            break;
        case 'K':
            n=10;
            break;
        case 'l':
            n=11;
            break;
        case 'L':
            n=11;
            break;
        case 'm':
            n=12;
            break;
        case 'M':
            n=12;
            break;
        case 'n':
            n=13;
            break;
        case 'N':
            n=13;
            break;
        case 'o':
            n=14;
            break;
        case 'O':
            n=14;
            break;
        case 'p':
            n=15;
            break;
        case 'P':
            n=15;
            break;
        case 'q':
            n=16;
            break;
        case 'Q':
            n=16;
            break;
        case 'r':
            n=17;
            break;
        case 'R':
            n=17;
            break;
        case 's':
            n=18;
            break;
        case 'S':
            n=18;
            break;
        case 't':
            n=19;
            break;
        case 'T':
            n=19;
            break;
        case 'u':
            n=20;
            break;
        case 'U':
            n=20;
            break;
        case 'v':
            n=21;
            break;
        case 'V':
            n=21;
            break;
        case 'w':
            n=22;
            break;
        case 'W':
            n=22;
            break;
        case 'x':
            n=23;
            break;
        case 'X':
            n=23;
            break;
        case 'y':
            n=24;
            break;
        case 'Y':
            n=24;
            break;
        case 'z':
            n=25;
            break;
        case 'Z':
            n=25;
            break;
        default:
            n=27;
    }

    return n;
}


