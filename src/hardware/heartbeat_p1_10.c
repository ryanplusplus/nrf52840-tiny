/*!
 * @file
 * @brief
 */

#include <stddef.h>
#include <stdbool.h>
#include "nrf52840.h"
#include "heartbeat_p1_10.h"

enum {
  pin = 10,
  pin_mask = 1 << pin,
  half_period_in_msec = 500,
};

static struct {
  tiny_timer_t timer;
} self;

static void blink(void* context)
{
  static bool state;
  (void)context;

  state = !state;

  if(state) {
    NRF_P1->OUTSET = pin_mask;
  }
  else {
    NRF_P1->OUTCLR = pin_mask;
  }
}

void heartbeat_p1_10_init(tiny_timer_group_t* timer_group)
{
  NRF_P1->DIRSET = pin_mask;
  tiny_timer_start_periodic(timer_group, &self.timer, half_period_in_msec, NULL, blink);
}
