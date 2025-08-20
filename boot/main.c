#include "main.h"
#include <stdbool.h>
#include <stdint.h>
#include <stdio.h>
#include "led.h"
#include "uart.h"
#include "button.h"

#define LOG_TAG "main"
#define LOG_LVL ELOG_LVL_INFO
#include "elog.h"

extern void bl_lowlevel_init(void);

int main(void)
{

    bl_lowlevel_init();

#if DEBUG
    elog_init();
    elog_set_fmt(ELOG_LVL_ASSERT, ELOG_FMT_ALL);
    elog_set_fmt(ELOG_LVL_ERROR, ELOG_FMT_LVL | ELOG_FMT_TAG | ELOG_FMT_TIME);
    elog_set_fmt(ELOG_LVL_WARN, ELOG_FMT_LVL | ELOG_FMT_TAG | ELOG_FMT_TIME);
    elog_set_fmt(ELOG_LVL_INFO, ELOG_FMT_LVL | ELOG_FMT_TAG | ELOG_FMT_TIME);
    elog_set_fmt(ELOG_LVL_DEBUG, ELOG_FMT_LVL | ELOG_FMT_TAG | ELOG_FMT_TIME);
    elog_set_fmt(ELOG_LVL_VERBOSE, ELOG_FMT_TAG);
    elog_start();
#endif

    bl_delay_init();
    bl_uart_init();
    bl_button_init();
    bl_led_init();

    log_d("button: %d", bl_button_pressed());
    

    

    return 0;
}
