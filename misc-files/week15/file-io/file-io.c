#include <stdio.h>
#include <stdlib.h>

int main(void) {
    FILE *fin;
    FILE *fout;
    fin = fopen("random.txt", "r");
    fout = fopen("random2.txt", "w");

    if (fin == NULL) {
        printf("failed to open read file\n");
        return 1;
    }
    if (fout == NULL) {
        printf("failed to open write file\n");
        return 1;
    }
    // do stuff
    char c;
    fscanf(fin, "%c", &c);
    const char cc = c;
    printf("cc = %c\n", cc);
    fputc(c, fout); 

    int maxlen = 10;
    char *buffer = (char *) malloc(sizeof(char)*maxlen);
    fgets(buffer, maxlen, fin);
    fputs(buffer, fout);

    fclose(fin);
    fclose(fout);

    return 0;
}
