#include "buzz.h"
#include "base.h"
#include "binary_io.h"
#include "bitbang.h"
#include "core.h"

bool binary_io_buzz_mode(void) { 
    // confirm that the command is known
    REPORT_IO_SUCCESS();
    
    switch (user_serial_read_byte()) {
        case 0x00:
            REPORT_IO_SUCCESS();
            
            bp_enable_adc();
            
            user_serial_transmit_character((bp_read_adc(BP_ADC_5V0) >> 8) & 0x00FF);
            user_serial_transmit_character(bp_read_adc(BP_ADC_5V0) & 0x00FF);
            
            user_serial_transmit_character((bp_read_adc(BP_ADC_3V3) >> 8) & 0x00FF);
            user_serial_transmit_character(bp_read_adc(BP_ADC_3V3) & 0x00FF);
            
            user_serial_transmit_character((bp_read_adc(BP_ADC_2V5) >> 8) & 0x00FF);
            user_serial_transmit_character(bp_read_adc(BP_ADC_2V5) & 0x00FF);
            
            user_serial_transmit_character((bp_read_adc(BP_ADC_1V8) >> 8) & 0x00FF);
            user_serial_transmit_character(bp_read_adc(BP_ADC_1V8) & 0x00FF);
            
            user_serial_transmit_character((bp_read_adc(BP_ADC_VPU) >> 8) & 0x00FF);
            user_serial_transmit_character(bp_read_adc(BP_ADC_VPU) & 0x00FF);
            
            user_serial_transmit_character((bp_read_adc(BP_ADC_PROBE) >> 8) & 0x00FF);
            user_serial_transmit_character(bp_read_adc(BP_ADC_PROBE) & 0x00FF);
            
            bp_disable_adc();
             
            break;
        
        case 0x01:
            BP_TP0_DIR = INPUT;
            BP_TP0 = LOW;            
            break;
        
        case 0x02:
            BP_TP0_DIR = OUTPUT;
            BP_TP0 = LOW;         
            break;
            
        default:
            REPORT_IO_FAILURE();
            return false;
            break;
    }

    REPORT_IO_SUCCESS();
    
    return true;
}