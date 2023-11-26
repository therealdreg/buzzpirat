#include "buzz.h"
#include "base.h"
#include "binary_io.h"
#include "bitbang.h"
#include "core.h"

bool binary_io_buzz_mode(uint8_t* ret) { 
    // confirm that the command is known
    REPORT_IO_SUCCESS();
    
    *ret = user_serial_read_byte();
    switch (*ret) 
    {
        case 0x69:
            return true;
            break;
            
        case 0x96:
#ifdef BPV3_COMP
            REPORT_IO_SUCCESS();
#else
            REPORT_IO_FAILURE();
#endif
            return true;
            break;
            
        case 0x00:
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
            REPORT_IO_SUCCESS();
            
            return true; 
            break;
        
        case 0x01:
            BP_TP0_DIR = INPUT;
            BP_TP0 = LOW;
            REPORT_IO_SUCCESS();
            return true;
            break;
        
        case 0x02:
            #ifndef BPV3_COMP
            BP_TP0_DIR = OUTPUT;
            BP_TP0 = LOW;    
            #endif
            REPORT_IO_SUCCESS();
            return true;
            break;
            
        case 0x03:
            user_serial_transmit_character(BP_TP0 ? 0x01 : 0x00); 
            REPORT_IO_SUCCESS();
            return true;
            break;
            
        case 0x10:
            bp_enable_voltage_regulator();
            bp_enable_adc();
            bp_delay_ms(2);
            if ((bp_read_adc(BP_ADC_3V3) > V33L) 
                    && (bp_read_adc(BP_ADC_5V0) > V5L)
                    #ifndef BPV3_COMP
                    && (bp_read_adc(BP_ADC_2V5) > V25L) 
                    && (bp_read_adc(BP_ADC_1V8) > V18L)
                    #endif
                    ) 
            {
                bp_disable_voltage_regulator();
                REPORT_IO_SUCCESS();
            }
            else
            {
                bp_disable_voltage_regulator();
                REPORT_IO_FAILURE();
            }
            bp_disable_adc();
            return true;
            break;
            
        case BITBANG_COMMAND_SETUP_PWM:
          handle_setup_pwm();
          return true;
          break;

        case BITBANG_COMMAND_CLEAR_PWM:
          handle_clear_pwm();
          return true;
          break;

        case BITBANG_COMMAND_ADC_ONE_SHOT:
          handle_read_adc_one_shot();
          return true;
          break;

        case BITBANG_COMMAND_ADC_CONTINUOUS:
          handle_read_adc_continuously();
          return true;
          break;

        case BITBANG_COMMAND_FREQUENCY_COUNT:
          handle_frequency_measurement();
          return true;
          break;
    }
    
    return false;
}
