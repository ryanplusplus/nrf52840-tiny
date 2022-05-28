/*!
 * @file
 * @brief
 */

#include "softdevice.h"
#include "nrf_sdm.h"
#include "ble.h"

#pragma GCC optimize("O0")

extern uint32_t __app_ram_base;

void softdevice_test(void)
{
  // https://infocenter.nordicsemi.com/index.jsp?topic=%2Fcom.nordic.infocenter.s140.api.v7.3.0%2Fs140_msc_overview.html&cp=4_7_4_1_1

  // sd_softdevice_enable(

  if(0) {
    static volatile uint32_t result;
    static volatile uint32_t enable_result;
    static ble_version_t version;

    enable_result = sd_ble_enable(&__app_ram_base);

    if(enable_result == NRF_SUCCESS) {
      while(1) {
      }
    }

    result = sd_ble_version_get(&version);

    if(result == NRF_SUCCESS) {
      while(1) {
      }
    }
  }
}
