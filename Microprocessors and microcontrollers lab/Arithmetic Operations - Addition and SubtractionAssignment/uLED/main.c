/*
 *  Copyright 2010 by Spectrum Digital Incorporated.
 *  All rights reserved. Property of Spectrum Digital Incorporated.
 */

#include "stdio.h"
#include "usbstk5515.h"

/* ------------------------------------------------------------------------ *
 *                                                                          *
 *  Testing Function                                                        *
 *                                                                          *
 * ------------------------------------------------------------------------ */
extern Int16 uled_test( );

/* ------------------------------------------------------------------------ *
 *                                                                          *
 *  main( )                                                                 *
 *                                                                          *
 * ------------------------------------------------------------------------ */
void main( void )
{
	int i;
    /* Initialize BSL */
    USBSTK5515_init( );

    printf("EXBUSSEL = %02x\n", SYS_EXBUSSEL);
    
    i = uled_test();
    while(1);
}
