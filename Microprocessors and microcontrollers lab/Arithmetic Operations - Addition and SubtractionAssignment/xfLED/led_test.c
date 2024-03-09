/*
 *  Copyright 2010 by Spectrum Digital Incorporated.
 *  All rights reserved. Property of Spectrum Digital Incorporated.
 */

/*
 *  LED Test
 *
 */

#include "usbstk5515.h"
#include "usbstk5515_led.h"
#include "stdio.h"

/* ------------------------------------------------------------------------ *
 *                                                                          *
 *  led_test( )                                                             *
 *      Blinks the LED DS1 connected to XF pin                              *
 *                                                                          *
 * ------------------------------------------------------------------------ */
Int16 led_test( )
{
    Int16 j;

    /* Initialize the LED module */
    USBSTK5515_LED_init( );
    
    printf("    XF-LED (LED4) - Blinking\n");
    /* Running LED test */
    for ( j = 0 ; j < 20 ; j++ )
    {
        USBSTK5515_LED_on( 0 );
        USBSTK5515_waitusec( 50000 );
        USBSTK5515_LED_off( 0 );
        USBSTK5515_waitusec( 50000 );
    }

    /* Turn on LED to indicate a PASS */
    USBSTK5515_LED_on( 0 );
    printf("    XF-LED (LED4) - Done\n");

    return 0;
}

