/*@section INCLUDES */
#include <AT89C513xA.h>
#define LCD_data P2
#define LCD_rs P0_0
#define LCD_rw P0_1
#define LCD_en P0_2


/* function declarations*/
void LCD_Init();

void LCD_DataWrite(unsigned char dat); void LCD_CmdWrite(unsigned char cmd);

void sdelay(unsigned int delay);
/*.................LCD initilization in C........................*/

void LCD_Init()
{
	sdelay(100);
	LCD_CmdWrite(0x38);      /* LCD 2lines, 5*7 matrix*/
	LCD_CmdWrite(0x0C);      /* Display on, Curson off*/
	LCD_CmdWrite(0x01);     /* Clear the LCD*/
	LCD_CmdWrite(0x06);    /* Entry mode, auto increment with no shift*/
}
/*....................................................................*/

/*.................LCD Command Writing in C........................*/
void LCD_CmdWrite(unsigned char cmd)
{
	LCD_data = cmd;           /* Send the command to LCD*/
	LCD_rs=0;                 /* Select the Command Register by pulling LCD_rs LOW*/
	LCD_rw=0;                   /* Select the Write Operation by pulling RW LOW*/
	LCD_en=1;                   /* Send a High-to-Low Pusle at Enable Pin*/
	sdelay(5);
	LCD_en=0;
	sdelay(5);
}
/*......................................................*/


/*................... Writing Data....................*/
void LCD_DataWrite(unsigned char dat)
{
	LCD_data=dat; 		/* Send the data to LCD*/
	LCD_rs=1;		/* Select the Data Register by pulling LCD_rs HIGH*/
	LCD_rw=0;		/* Select the Write Operation by pulling RW LOW*/
	LCD_en=1;		/* Send a High-to-Low Pusle at Enable Pin*/
	sdelay(5);
	LCD_en=0;
	sdelay(5);
}
/*........................................................*/

/*.................Delay......................*/
void sdelay(unsigned int delay) 
{
	char d=0; 
	while(delay>0)
	{
		for (d=0;d<5;d++); 
		delay--;
	}
}
/*...................................................*/


/*.................Main Program...........................*/
void main(void)
{
	P2 = 0x80;           /* Make Port 2 output*/
	LCD_Init();
	while(1) 		/* endless */
	{
	sdelay(500);
	//LCD_CmdWrite(0x8F);	/* Put cursor on first row, fifth column, for second row use C instead of 8*/ 
	LCD_CmdWrite(0xC1);	/* Put cursor on first row, fifth column, for second row use C instead of 8*/
	sdelay(18);                 /*Delay*/
	//LCD_DataWrite('p');	 /* Write "Hello" in the first line*/
	LCD_DataWrite('6');	 /* Write "Hello" in the first line*/
	}
}
/*....................................................*/