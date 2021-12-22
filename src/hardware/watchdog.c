/*!
 * @file
 * @brief
 */

#include "watchdog.h"
#include "clock.h"

// tiny_static_assert(clock_gclk2_frequency == 32768);

static tiny_timer_t timer;

static void kick(tiny_timer_group_t* _timer_group, void* context)
{
  (void)context;
  (void)_timer_group;
}

void watchdog_init(tiny_timer_group_t* timer_group)
{
  tiny_timer_start_periodic(timer_group, &timer, 250, NULL, kick);
}
