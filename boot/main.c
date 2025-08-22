#include "main.h"
#include "button.h"
#include "led.h"
#include "uart.h"
#include <stdbool.h>
#include <stdint.h> 
#include <stdio.h>

#define LOG_TAG "main"
#define LOG_LVL ELOG_LVL_INFO
#include "elog.h"

//扩展bl_lowlevel_init 
extern void bl_lowlevel_init(void);
//extern void bootloader_main(uint32_t boot_delay);
//extern bool verify_application(void);


void bootloader_main(uint32_t boot_delay)
{
    while(1)
    {   
        log_i("YOU HAVE ENTERED BOOT MODE.");
    }
    //log_i("YOU HAVE ENTERED BOOT MODE.");
    
}

static bool button_trap_boot(void)
{
    if (bl_button_pressed())
    {
        bl_delay_ms(100);
        return bl_button_pressed();
    }

    return false;
}

static void button_wait_release(void)
{
    while (bl_button_pressed())
    {
        bl_delay_ms(100);
    }
}

int main(void)
{
    // 初始化底层
    bl_lowlevel_init();
// 如果开启了Debug模式（打开日志）
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
    // 外设初始化
    bl_delay_init();
    bl_uart_init();
    bl_button_init();
    bl_led_init();

    log_d("button: %d", bl_button_pressed());

    bool trap_boot = false;
    if (button_trap_boot())
    {
        log_w("button pressed, trap into boot");
        trap_boot = true;
    }
    else if (!true)
    {
        log_w("application verify failded, trap into boot");
        trap_boot = true;
    }

    if (trap_boot)
    {
        //Remind User they have entered boot mode and can release the button
        bl_led_on();
        button_wait_release();
    }

    // trap_boot == 0: 停留boot模式，不会自动启动应用程序
    // trap_boot == 3: 3秒后自动启动应用程序
    bootloader_main(trap_boot ? 0 : 3);

    return 0;
}
