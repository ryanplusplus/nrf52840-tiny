/*!
 * @file
 * @brief
 */

#include "board/feather.h"
#include "tiny_timer.h"
#include "tiny_comm.h"

static tiny_timer_group_t timer_group;

int main(void)
{
  __disable_irq();
  {
    clock_init();
    tiny_timer_group_init(&timer_group, systick_init());
    watchdog_init(&timer_group);
    heartbeat_init(&timer_group);
  }
  __enable_irq();

  while(1) {
    tiny_timer_group_run(&timer_group);
    // WFI kills this... not sure why yet
    // __WFI();
  }
}
