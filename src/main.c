/*!
 * @file
 * @brief
 */

#include "board/xiao.h"
#include "tiny_timer.h"
#include "softdevice.h"

static tiny_timer_group_t timer_group;

int main(void)
{
  interrupts_disable();
  {
    clock_init();
    tiny_timer_group_init(&timer_group, systick_init());
    watchdog_init(&timer_group);
    heartbeat_init(&timer_group);
  }
  interrupts_enable();

  softdevice_test();

  while(1) {
    tiny_timer_group_run(&timer_group);
  }
}
