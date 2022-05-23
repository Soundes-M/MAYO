#include <stdio.h>

void debug_print(const unsigned char *array, int size) {
    printf("--BEGIN debug PRINT--\n");
    for (int i=0; i<size;i++){
        printf("%u ", array[i]);
    }
    printf("--BEGIN debug PRINT--\n");
}

void write_to_file(char name[50], unsigned char* array, int size){
    printf("Writing to %s\n",name);

    FILE *fp;
    fp = fopen(name,"w");

    if(fp == NULL) {
        printf("file can't be opened\n");
        exit(1);
    }

    for (int i= 0;i<size;i++){
        fflush(stdin);;
        fprintf(fp,"%u \n",array[i]);
        //printf("%u",(unsigned int )array[2]);
    }
    fclose(fp);
}