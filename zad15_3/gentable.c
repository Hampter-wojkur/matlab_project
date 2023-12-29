#include <math.h>
#include <stdio.h>
#include <errno.h>
#include <stdlib.h> 
#define M_PI 3.1415926535897932384626
#define K1 0.6072529350088812561694

int main(int argc, char **argv)
{
    int i;
 
    long temp = strtol(argv[1],NULL,10);
    int bits = temp; // number of bits  
    int mul = (1<<(bits-2)); 
     
    FILE *fptr;
    fptr = fopen("./cordic.h","w");

    if(!fptr){
           printf("something went wrong: %s", strerror(errno));
           exit(1);
    }
    
    int n = bits; // number of elements. 
    int c;

    fprintf(fptr,"//Cordic in %d bit signed fixed point math\n", bits);
    fprintf(fptr,"//Function is valid for arguments in range -pi/2 -- pi/2\n");
    fprintf(fptr,"//for values pi/2--pi: value = half_pi-(theta-half_pi) and similarly for values -pi---pi/2\n");
    fprintf(fptr,"//\n");
    fprintf(fptr,"// 1.0 = %d\n", mul);
    fprintf(fptr,"// 1/k = 0.6072529350088812561694\n");
    fprintf(fptr,"// pi = 3.1415926535897932384626\n");

    fprintf(fptr,"//Constants\n");
    fprintf(fptr,"#define cordic_1K 0x%08X\n", (int)(mul*K1));
    fprintf(fptr,"#define half_pi 0x%08X\n", (int)(mul*(M_PI/2)));
    fprintf(fptr,"#define MUL %f\n", (double)mul);
    fprintf(fptr,"#define CORDIC_NTAB %d\n", n);
    
    fprintf(fptr,"int cordic_ctab [] = {");
    for(i=0;i<n;i++)
    {
        c = (atan(pow(2, -i)) * mul);
        fprintf(fptr,"0x%08X, ", c);
    }
    fprintf(fptr,"};\n\n");

    //Print the cordic function
    fprintf(fptr,"void cordic(int theta, int *s, int *c, int n)\n{\n  int k, d, tx, ty, tz;\n");
    fprintf(fptr,"  int x=cordic_1K,y=0,z=theta;\n  n = (n>CORDIC_NTAB) ? CORDIC_NTAB : n;\n");
    fprintf(fptr,"  for (k=0; k<n; ++k)\n  {\n    d = z>>%d;\n", (bits-1));
    fprintf(fptr,"    //get sign. for other architectures, you might want to use the more portable version\n");
    fprintf(fptr,"    //d = z>=0 ? 0 : -1;\n    tx = x - (((y>>k) ^ d) - d);\n    ty = y + (((x>>k) ^ d) - d);\n");
    fprintf(fptr,"    tz = z - ((cordic_ctab[k] ^ d) - d);\n    x = tx; y = ty; z = tz;\n  }  \n *c = x; *s = y;\n}\n");
    
}