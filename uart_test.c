#include <stdio.h>
#include <unistd.h>
#include <stdlib.h>

int main() 
{ 
	char byte_written,*byte_read,dummy;
  	FILE * MEM;
	size_t result;

	/* No buffering for file i/o */
  	setvbuf(MEM,&dummy,_IONBF,1);
	
	byte_read = (char*) malloc (5);
	/* Reading from memory driver */
	
	printf("Enter a character\n");
	scanf("%c", &dummy);
	
	/* Opening the memory driver */
 	MEM=fopen("/dev/uart-driver","wb");
	
	/* Writing to the memory driver */
  	printf("Byte value written is %s\n",dummy);
  	fwrite(dummy,1,5,MEM);
	fclose (MEM);

	MEM = fopen("/dev/uart-driver", "rb");
  	result = fread(byte_read,1,5,MEM);
  	printf("Byte value read is %s\n",byte_read);
	printf("Number of bytes read is %d\n",result);

  	fclose(MEM);  
  	
	
}
