#include<AT89C513xA.h>
#define LCD_data P2
#define LCD_rs P0_0
#define LCD_rw P0_1
#define LCD_en P0_2

void LCD_Init();
void LCD_DataWrite(unsigned char dat);
void LCD_DataString(unsigned char *data);
void LCD_DataInt(unsigned int dat);
void LCD_CmdWrite(unsigned char cmd);
void sdelay(unsigned int delay);

void main(void)
{
	P2 = 0x00;
	LCD_Init();
	while(1)
	{
		sdelay(500);
		LCD_CmdWrite(0x85);
		sdelay(18);
		LCD_DataString("IIT DH");
		sdelay(500);
		LCD_CmdWrite(0xC3);
		sdelay(18);
		LCD_DataString("10/10/2022");
	}
}

void LCD_Init()
{
	sdelay(100);
	LCD_CmdWrite(0x38);
	LCD_CmdWrite(0x0C);
	LCD_CmdWrite(0x01);
	LCD_CmdWrite(0x06);
}

void LCD_CmdWrite(unsigned char cmd)
{
	LCD_data = cmd;
	LCD_rs = 0;
	LCD_rw = 0;
	LCD_en = 1;
	sdelay(5);
	LCD_en = 0;
	sdelay(5);
}

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

void LCD_DataInt(unsigned int dat)
{
	LCD_data = dat;
	LCD_rs = 1;
	LCD_rw = 0;
	LCD_en = 1;
	sdelay(5);
	LCD_en = 0;
	sdelay(5);
}

void LCD_DataString(unsigned char *data)
{
	int i;
	for(i = 0; i<15; i++)
	{
		if(data[i]=='\0')
		{
			break;
		}
		LCD_data = data[i];
		LCD_rs = 1;
		LCD_rw = 0;
		LCD_en = 1;
		sdelay(5);
		LCD_en = 0;
		sdelay(5);
	}

}


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