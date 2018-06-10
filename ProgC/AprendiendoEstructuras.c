#include <stdio.h>

struct {
	char name[20];
	int age;
	char sex[10];
	char profession[20];
	char vote[20];
}person[5];

int main(){
	
	printf("Ola k ase...\nVamos a emepzar con el jueguito de las estructuras\n");
	
	
	
	printf("Ingresa el nombre de la primera persona:\n");
	gets(person[1].name);
	
	printf("Ingresa la edad de la primera persona:\n");
	gets(person[1].age);
	
	system ("pause");
	return 0;
}
