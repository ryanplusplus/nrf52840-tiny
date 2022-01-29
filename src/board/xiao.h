/*!
 * @file
 * @brief
 */

#ifndef xiao_h
#define xiao_h

#include "nrf52840.h"
#include "clock.h"
#include "interrupts.h"
#include "watchdog.h"
#include "systick.h"
#include "heartbeat_p0_6.h"
#include "heartbeat_p0_26.h"
#include "heartbeat_p0_30.h"

#define heartbeat_red_init heartbeat_p0_26_init
#define heartbeat_green_init heartbeat_p0_30_init
#define heartbeat_blue_init heartbeat_p0_6_init
#define heartbeat_init heartbeat_blue_init

#endif
