#include <AT89C513xA.h>

void delay(void);
	/*upper nibble of port P1 corresponds to LEDs and lower nibble of P1 corresponds to slider switch in PT-51*/

void main(void)
{
	while(1)
	{
		P1 = 0xF0;
		delay();
		P1 = 0x00;
		delay();
	}
}

/*delay for a specific period (approx 1s)*/
void delay(void)
{
	int i, j;
	for(i=0;i<0xff;i++)
		for(j=0;j<0xff;j++);
}