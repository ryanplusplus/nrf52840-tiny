/*!
 * @file
 * @brief
 */

#ifndef interrupts_h
#define interrupts_h

#include "nrf52840.h"

static inline void interrupts_enable(void)
{
  __enable_irq();
}

static inline void interrupts_disable(void)
{
  __disable_irq();
}

//! @warning WFI stops SysTick on nRF parts
static inline void interrupts_wfi(void)
{
  __WFI();
}

#endif
