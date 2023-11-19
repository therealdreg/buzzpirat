#
# Generated Makefile - do not edit!
#
# Edit the Makefile in the project folder instead (../Makefile). Each target
# has a -pre and a -post target defined where you can add customized code.
#
# This makefile implements configuration specific macros and targets.


# Include project Makefile
ifeq "${IGNORE_LOCAL}" "TRUE"
# do not include local makefile. User is passing all local related variables already
else
include Makefile
# Include makefile containing local settings
ifeq "$(wildcard nbproject/Makefile-local-BusPirate_v3.mk)" "nbproject/Makefile-local-BusPirate_v3.mk"
include nbproject/Makefile-local-BusPirate_v3.mk
endif
endif

# Environment
MKDIR=gnumkdir -p
RM=rm -f 
MV=mv 
CP=cp 

# Macros
CND_CONF=BusPirate_v3
ifeq ($(TYPE_IMAGE), DEBUG_RUN)
IMAGE_TYPE=debug
OUTPUT_SUFFIX=elf
DEBUGGABLE_SUFFIX=elf
FINAL_IMAGE=${DISTDIR}/busPirate.X.${IMAGE_TYPE}.${OUTPUT_SUFFIX}
else
IMAGE_TYPE=production
OUTPUT_SUFFIX=hex
DEBUGGABLE_SUFFIX=elf
FINAL_IMAGE=${DISTDIR}/busPirate.X.${IMAGE_TYPE}.${OUTPUT_SUFFIX}
endif

ifeq ($(COMPARE_BUILD), true)
COMPARISON_BUILD=-mafrlcsj
else
COMPARISON_BUILD=
endif

# Object Directory
OBJECTDIR=build/${CND_CONF}/${IMAGE_TYPE}

# Distribution Directory
DISTDIR=dist/${CND_CONF}/${IMAGE_TYPE}

# Source Files Quoted if spaced
SOURCEFILES_QUOTED_IF_SPACED=../1wire.c ../base.c ../basic.c ../bitbang.c ../dio.c ../jtag.c ../jtag/lenval.c ../jtag/micro.c ../jtag/ports.c ../main.c ../pc_at_keyboard.c ../pic.c ../raw2wire.c ../raw3wire.c ../selftest.c ../smps.c ../sump.c ../i2c.c ../hd44780.c ../spi.c ../uart.c ../openocd.c ../openocd_asm.s ../messages_v3.s ../messages.c ../binary_io.c ../proc_menu.c ../core.c ../uart2.c ../aux_pin.c

# Object Files Quoted if spaced
OBJECTFILES_QUOTED_IF_SPACED=${OBJECTDIR}/_ext/1472/1wire.o ${OBJECTDIR}/_ext/1472/base.o ${OBJECTDIR}/_ext/1472/basic.o ${OBJECTDIR}/_ext/1472/bitbang.o ${OBJECTDIR}/_ext/1472/dio.o ${OBJECTDIR}/_ext/1472/jtag.o ${OBJECTDIR}/_ext/760884769/lenval.o ${OBJECTDIR}/_ext/760884769/micro.o ${OBJECTDIR}/_ext/760884769/ports.o ${OBJECTDIR}/_ext/1472/main.o ${OBJECTDIR}/_ext/1472/pc_at_keyboard.o ${OBJECTDIR}/_ext/1472/pic.o ${OBJECTDIR}/_ext/1472/raw2wire.o ${OBJECTDIR}/_ext/1472/raw3wire.o ${OBJECTDIR}/_ext/1472/selftest.o ${OBJECTDIR}/_ext/1472/smps.o ${OBJECTDIR}/_ext/1472/sump.o ${OBJECTDIR}/_ext/1472/i2c.o ${OBJECTDIR}/_ext/1472/hd44780.o ${OBJECTDIR}/_ext/1472/spi.o ${OBJECTDIR}/_ext/1472/uart.o ${OBJECTDIR}/_ext/1472/openocd.o ${OBJECTDIR}/_ext/1472/openocd_asm.o ${OBJECTDIR}/_ext/1472/messages_v3.o ${OBJECTDIR}/_ext/1472/messages.o ${OBJECTDIR}/_ext/1472/binary_io.o ${OBJECTDIR}/_ext/1472/proc_menu.o ${OBJECTDIR}/_ext/1472/core.o ${OBJECTDIR}/_ext/1472/uart2.o ${OBJECTDIR}/_ext/1472/aux_pin.o
POSSIBLE_DEPFILES=${OBJECTDIR}/_ext/1472/1wire.o.d ${OBJECTDIR}/_ext/1472/base.o.d ${OBJECTDIR}/_ext/1472/basic.o.d ${OBJECTDIR}/_ext/1472/bitbang.o.d ${OBJECTDIR}/_ext/1472/dio.o.d ${OBJECTDIR}/_ext/1472/jtag.o.d ${OBJECTDIR}/_ext/760884769/lenval.o.d ${OBJECTDIR}/_ext/760884769/micro.o.d ${OBJECTDIR}/_ext/760884769/ports.o.d ${OBJECTDIR}/_ext/1472/main.o.d ${OBJECTDIR}/_ext/1472/pc_at_keyboard.o.d ${OBJECTDIR}/_ext/1472/pic.o.d ${OBJECTDIR}/_ext/1472/raw2wire.o.d ${OBJECTDIR}/_ext/1472/raw3wire.o.d ${OBJECTDIR}/_ext/1472/selftest.o.d ${OBJECTDIR}/_ext/1472/smps.o.d ${OBJECTDIR}/_ext/1472/sump.o.d ${OBJECTDIR}/_ext/1472/i2c.o.d ${OBJECTDIR}/_ext/1472/hd44780.o.d ${OBJECTDIR}/_ext/1472/spi.o.d ${OBJECTDIR}/_ext/1472/uart.o.d ${OBJECTDIR}/_ext/1472/openocd.o.d ${OBJECTDIR}/_ext/1472/openocd_asm.o.d ${OBJECTDIR}/_ext/1472/messages_v3.o.d ${OBJECTDIR}/_ext/1472/messages.o.d ${OBJECTDIR}/_ext/1472/binary_io.o.d ${OBJECTDIR}/_ext/1472/proc_menu.o.d ${OBJECTDIR}/_ext/1472/core.o.d ${OBJECTDIR}/_ext/1472/uart2.o.d ${OBJECTDIR}/_ext/1472/aux_pin.o.d

# Object Files
OBJECTFILES=${OBJECTDIR}/_ext/1472/1wire.o ${OBJECTDIR}/_ext/1472/base.o ${OBJECTDIR}/_ext/1472/basic.o ${OBJECTDIR}/_ext/1472/bitbang.o ${OBJECTDIR}/_ext/1472/dio.o ${OBJECTDIR}/_ext/1472/jtag.o ${OBJECTDIR}/_ext/760884769/lenval.o ${OBJECTDIR}/_ext/760884769/micro.o ${OBJECTDIR}/_ext/760884769/ports.o ${OBJECTDIR}/_ext/1472/main.o ${OBJECTDIR}/_ext/1472/pc_at_keyboard.o ${OBJECTDIR}/_ext/1472/pic.o ${OBJECTDIR}/_ext/1472/raw2wire.o ${OBJECTDIR}/_ext/1472/raw3wire.o ${OBJECTDIR}/_ext/1472/selftest.o ${OBJECTDIR}/_ext/1472/smps.o ${OBJECTDIR}/_ext/1472/sump.o ${OBJECTDIR}/_ext/1472/i2c.o ${OBJECTDIR}/_ext/1472/hd44780.o ${OBJECTDIR}/_ext/1472/spi.o ${OBJECTDIR}/_ext/1472/uart.o ${OBJECTDIR}/_ext/1472/openocd.o ${OBJECTDIR}/_ext/1472/openocd_asm.o ${OBJECTDIR}/_ext/1472/messages_v3.o ${OBJECTDIR}/_ext/1472/messages.o ${OBJECTDIR}/_ext/1472/binary_io.o ${OBJECTDIR}/_ext/1472/proc_menu.o ${OBJECTDIR}/_ext/1472/core.o ${OBJECTDIR}/_ext/1472/uart2.o ${OBJECTDIR}/_ext/1472/aux_pin.o

# Source Files
SOURCEFILES=../1wire.c ../base.c ../basic.c ../bitbang.c ../dio.c ../jtag.c ../jtag/lenval.c ../jtag/micro.c ../jtag/ports.c ../main.c ../pc_at_keyboard.c ../pic.c ../raw2wire.c ../raw3wire.c ../selftest.c ../smps.c ../sump.c ../i2c.c ../hd44780.c ../spi.c ../uart.c ../openocd.c ../openocd_asm.s ../messages_v3.s ../messages.c ../binary_io.c ../proc_menu.c ../core.c ../uart2.c ../aux_pin.c



CFLAGS=
ASFLAGS=
LDLIBSOPTIONS=

############# Tool locations ##########################################
# If you copy a project from one host to another, the path where the  #
# compiler is installed may be different.                             #
# If you open this project with MPLAB X in the new host, this         #
# makefile will be regenerated and the paths will be corrected.       #
#######################################################################
# fixDeps replaces a bunch of sed/cat/printf statements that slow down the build
FIXDEPS=fixDeps

.build-conf:  ${BUILD_SUBPROJECTS}
ifneq ($(INFORMATION_MESSAGE), )
	@echo $(INFORMATION_MESSAGE)
endif
	${MAKE}  -f nbproject/Makefile-BusPirate_v3.mk ${DISTDIR}/busPirate.X.${IMAGE_TYPE}.${OUTPUT_SUFFIX}

MP_PROCESSOR_OPTION=24FJ64GA002
MP_LINKER_FILE_OPTION=,--script="..\p24FJ64GA002.gld"
# ------------------------------------------------------------------------------------
# Rules for buildStep: compile
ifeq ($(TYPE_IMAGE), DEBUG_RUN)
${OBJECTDIR}/_ext/1472/1wire.o: ../1wire.c  .generated_files/flags/BusPirate_v3/355bacc2cb0f041eef897c8ddfa5038cb79ce60d .generated_files/flags/BusPirate_v3/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1472" 
	@${RM} ${OBJECTDIR}/_ext/1472/1wire.o.d 
	@${RM} ${OBJECTDIR}/_ext/1472/1wire.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  ../1wire.c  -o ${OBJECTDIR}/_ext/1472/1wire.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/_ext/1472/1wire.o.d"      -g -D__DEBUG     -omf=elf -DXPRJ_BusPirate_v3=$(CND_CONF)    $(COMPARISON_BUILD)  -std=c99 -mlarge-code -mlarge-data -O1 -fomit-frame-pointer -I".." -mcci -msmart-io=1 -Werror -Wall -msfr-warn=off -finline  -save-temps -finline  -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/_ext/1472/base.o: ../base.c  .generated_files/flags/BusPirate_v3/e0e5f200cd2e1bad5bbd682e990d6ffac01e0646 .generated_files/flags/BusPirate_v3/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1472" 
	@${RM} ${OBJECTDIR}/_ext/1472/base.o.d 
	@${RM} ${OBJECTDIR}/_ext/1472/base.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  ../base.c  -o ${OBJECTDIR}/_ext/1472/base.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/_ext/1472/base.o.d"      -g -D__DEBUG     -omf=elf -DXPRJ_BusPirate_v3=$(CND_CONF)    $(COMPARISON_BUILD)  -std=c99 -mlarge-code -mlarge-data -O1 -fomit-frame-pointer -I".." -mcci -msmart-io=1 -Werror -Wall -msfr-warn=off -finline  -save-temps -finline  -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/_ext/1472/basic.o: ../basic.c  .generated_files/flags/BusPirate_v3/dd95ae6410ddee64c794ba1a53d7ae4fb0125c43 .generated_files/flags/BusPirate_v3/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1472" 
	@${RM} ${OBJECTDIR}/_ext/1472/basic.o.d 
	@${RM} ${OBJECTDIR}/_ext/1472/basic.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  ../basic.c  -o ${OBJECTDIR}/_ext/1472/basic.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/_ext/1472/basic.o.d"      -g -D__DEBUG     -omf=elf -DXPRJ_BusPirate_v3=$(CND_CONF)    $(COMPARISON_BUILD)  -std=c99 -mlarge-code -mlarge-data -O1 -fomit-frame-pointer -I".." -mcci -msmart-io=1 -Werror -Wall -msfr-warn=off -finline  -save-temps -finline  -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/_ext/1472/bitbang.o: ../bitbang.c  .generated_files/flags/BusPirate_v3/24aad21d5a3eee54271c7230a691726592f8378d .generated_files/flags/BusPirate_v3/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1472" 
	@${RM} ${OBJECTDIR}/_ext/1472/bitbang.o.d 
	@${RM} ${OBJECTDIR}/_ext/1472/bitbang.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  ../bitbang.c  -o ${OBJECTDIR}/_ext/1472/bitbang.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/_ext/1472/bitbang.o.d"      -g -D__DEBUG     -omf=elf -DXPRJ_BusPirate_v3=$(CND_CONF)    $(COMPARISON_BUILD)  -std=c99 -mlarge-code -mlarge-data -O1 -fomit-frame-pointer -I".." -mcci -msmart-io=1 -Werror -Wall -msfr-warn=off -finline  -save-temps -finline  -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/_ext/1472/dio.o: ../dio.c  .generated_files/flags/BusPirate_v3/42c6e63320c6daae5513306537e91ee043c5d9e9 .generated_files/flags/BusPirate_v3/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1472" 
	@${RM} ${OBJECTDIR}/_ext/1472/dio.o.d 
	@${RM} ${OBJECTDIR}/_ext/1472/dio.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  ../dio.c  -o ${OBJECTDIR}/_ext/1472/dio.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/_ext/1472/dio.o.d"      -g -D__DEBUG     -omf=elf -DXPRJ_BusPirate_v3=$(CND_CONF)    $(COMPARISON_BUILD)  -std=c99 -mlarge-code -mlarge-data -O1 -fomit-frame-pointer -I".." -mcci -msmart-io=1 -Werror -Wall -msfr-warn=off -finline  -save-temps -finline  -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/_ext/1472/jtag.o: ../jtag.c  .generated_files/flags/BusPirate_v3/a7b85241fdfde5d29c87b1fad71195ac3676bf40 .generated_files/flags/BusPirate_v3/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1472" 
	@${RM} ${OBJECTDIR}/_ext/1472/jtag.o.d 
	@${RM} ${OBJECTDIR}/_ext/1472/jtag.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  ../jtag.c  -o ${OBJECTDIR}/_ext/1472/jtag.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/_ext/1472/jtag.o.d"      -g -D__DEBUG     -omf=elf -DXPRJ_BusPirate_v3=$(CND_CONF)    $(COMPARISON_BUILD)  -std=c99 -mlarge-code -mlarge-data -O1 -fomit-frame-pointer -I".." -mcci -msmart-io=1 -Werror -Wall -msfr-warn=off -finline  -save-temps -finline  -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/_ext/760884769/lenval.o: ../jtag/lenval.c  .generated_files/flags/BusPirate_v3/67376d8ace67b1f0385e66d0de30b7cc94f06d1f .generated_files/flags/BusPirate_v3/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/760884769" 
	@${RM} ${OBJECTDIR}/_ext/760884769/lenval.o.d 
	@${RM} ${OBJECTDIR}/_ext/760884769/lenval.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  ../jtag/lenval.c  -o ${OBJECTDIR}/_ext/760884769/lenval.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/_ext/760884769/lenval.o.d"      -g -D__DEBUG     -omf=elf -DXPRJ_BusPirate_v3=$(CND_CONF)    $(COMPARISON_BUILD)  -std=c99 -mlarge-code -mlarge-data -O1 -fomit-frame-pointer -I".." -mcci -msmart-io=1 -Werror -Wall -msfr-warn=off -finline  -save-temps -finline  -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/_ext/760884769/micro.o: ../jtag/micro.c  .generated_files/flags/BusPirate_v3/9ae48f2b8d17b57197d3e221aa517ca4eb23e996 .generated_files/flags/BusPirate_v3/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/760884769" 
	@${RM} ${OBJECTDIR}/_ext/760884769/micro.o.d 
	@${RM} ${OBJECTDIR}/_ext/760884769/micro.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  ../jtag/micro.c  -o ${OBJECTDIR}/_ext/760884769/micro.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/_ext/760884769/micro.o.d"      -g -D__DEBUG     -omf=elf -DXPRJ_BusPirate_v3=$(CND_CONF)    $(COMPARISON_BUILD)  -std=c99 -mlarge-code -mlarge-data -O1 -fomit-frame-pointer -I".." -mcci -msmart-io=1 -Werror -Wall -msfr-warn=off -finline  -save-temps -finline  -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/_ext/760884769/ports.o: ../jtag/ports.c  .generated_files/flags/BusPirate_v3/ff6161b91d2189c6693d452f17d6011bfac48b22 .generated_files/flags/BusPirate_v3/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/760884769" 
	@${RM} ${OBJECTDIR}/_ext/760884769/ports.o.d 
	@${RM} ${OBJECTDIR}/_ext/760884769/ports.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  ../jtag/ports.c  -o ${OBJECTDIR}/_ext/760884769/ports.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/_ext/760884769/ports.o.d"      -g -D__DEBUG     -omf=elf -DXPRJ_BusPirate_v3=$(CND_CONF)    $(COMPARISON_BUILD)  -std=c99 -mlarge-code -mlarge-data -O1 -fomit-frame-pointer -I".." -mcci -msmart-io=1 -Werror -Wall -msfr-warn=off -finline  -save-temps -finline  -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/_ext/1472/main.o: ../main.c  .generated_files/flags/BusPirate_v3/67037c198a887486571d15bc99cc0b4fe5448226 .generated_files/flags/BusPirate_v3/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1472" 
	@${RM} ${OBJECTDIR}/_ext/1472/main.o.d 
	@${RM} ${OBJECTDIR}/_ext/1472/main.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  ../main.c  -o ${OBJECTDIR}/_ext/1472/main.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/_ext/1472/main.o.d"      -g -D__DEBUG     -omf=elf -DXPRJ_BusPirate_v3=$(CND_CONF)    $(COMPARISON_BUILD)  -std=c99 -mlarge-code -mlarge-data -O1 -fomit-frame-pointer -I".." -mcci -msmart-io=1 -Werror -Wall -msfr-warn=off -finline  -save-temps -finline  -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/_ext/1472/pc_at_keyboard.o: ../pc_at_keyboard.c  .generated_files/flags/BusPirate_v3/17c1b28cf82709c813aab1b2d97629b4ed0d4269 .generated_files/flags/BusPirate_v3/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1472" 
	@${RM} ${OBJECTDIR}/_ext/1472/pc_at_keyboard.o.d 
	@${RM} ${OBJECTDIR}/_ext/1472/pc_at_keyboard.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  ../pc_at_keyboard.c  -o ${OBJECTDIR}/_ext/1472/pc_at_keyboard.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/_ext/1472/pc_at_keyboard.o.d"      -g -D__DEBUG     -omf=elf -DXPRJ_BusPirate_v3=$(CND_CONF)    $(COMPARISON_BUILD)  -std=c99 -mlarge-code -mlarge-data -O1 -fomit-frame-pointer -I".." -mcci -msmart-io=1 -Werror -Wall -msfr-warn=off -finline  -save-temps -finline  -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/_ext/1472/pic.o: ../pic.c  .generated_files/flags/BusPirate_v3/4ec8412bc1c866582cda35c18c53146b8874eb5f .generated_files/flags/BusPirate_v3/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1472" 
	@${RM} ${OBJECTDIR}/_ext/1472/pic.o.d 
	@${RM} ${OBJECTDIR}/_ext/1472/pic.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  ../pic.c  -o ${OBJECTDIR}/_ext/1472/pic.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/_ext/1472/pic.o.d"      -g -D__DEBUG     -omf=elf -DXPRJ_BusPirate_v3=$(CND_CONF)    $(COMPARISON_BUILD)  -std=c99 -mlarge-code -mlarge-data -O1 -fomit-frame-pointer -I".." -mcci -msmart-io=1 -Werror -Wall -msfr-warn=off -finline  -save-temps -finline  -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/_ext/1472/raw2wire.o: ../raw2wire.c  .generated_files/flags/BusPirate_v3/c1d75881f93e2bb06fee4fe6974ab16b56545d61 .generated_files/flags/BusPirate_v3/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1472" 
	@${RM} ${OBJECTDIR}/_ext/1472/raw2wire.o.d 
	@${RM} ${OBJECTDIR}/_ext/1472/raw2wire.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  ../raw2wire.c  -o ${OBJECTDIR}/_ext/1472/raw2wire.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/_ext/1472/raw2wire.o.d"      -g -D__DEBUG     -omf=elf -DXPRJ_BusPirate_v3=$(CND_CONF)    $(COMPARISON_BUILD)  -std=c99 -mlarge-code -mlarge-data -O1 -fomit-frame-pointer -I".." -mcci -msmart-io=1 -Werror -Wall -msfr-warn=off -finline  -save-temps -finline  -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/_ext/1472/raw3wire.o: ../raw3wire.c  .generated_files/flags/BusPirate_v3/6a69cee4942e0e4d08d93de455a2664c4216a6b3 .generated_files/flags/BusPirate_v3/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1472" 
	@${RM} ${OBJECTDIR}/_ext/1472/raw3wire.o.d 
	@${RM} ${OBJECTDIR}/_ext/1472/raw3wire.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  ../raw3wire.c  -o ${OBJECTDIR}/_ext/1472/raw3wire.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/_ext/1472/raw3wire.o.d"      -g -D__DEBUG     -omf=elf -DXPRJ_BusPirate_v3=$(CND_CONF)    $(COMPARISON_BUILD)  -std=c99 -mlarge-code -mlarge-data -O1 -fomit-frame-pointer -I".." -mcci -msmart-io=1 -Werror -Wall -msfr-warn=off -finline  -save-temps -finline  -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/_ext/1472/selftest.o: ../selftest.c  .generated_files/flags/BusPirate_v3/15e7083771540e1130742ce0c3d5afb541a7ac73 .generated_files/flags/BusPirate_v3/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1472" 
	@${RM} ${OBJECTDIR}/_ext/1472/selftest.o.d 
	@${RM} ${OBJECTDIR}/_ext/1472/selftest.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  ../selftest.c  -o ${OBJECTDIR}/_ext/1472/selftest.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/_ext/1472/selftest.o.d"      -g -D__DEBUG     -omf=elf -DXPRJ_BusPirate_v3=$(CND_CONF)    $(COMPARISON_BUILD)  -std=c99 -mlarge-code -mlarge-data -O1 -fomit-frame-pointer -I".." -mcci -msmart-io=1 -Werror -Wall -msfr-warn=off -finline  -save-temps -finline  -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/_ext/1472/smps.o: ../smps.c  .generated_files/flags/BusPirate_v3/cbc8614a3ad7407cb701ab61a8fbf97392cf0872 .generated_files/flags/BusPirate_v3/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1472" 
	@${RM} ${OBJECTDIR}/_ext/1472/smps.o.d 
	@${RM} ${OBJECTDIR}/_ext/1472/smps.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  ../smps.c  -o ${OBJECTDIR}/_ext/1472/smps.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/_ext/1472/smps.o.d"      -g -D__DEBUG     -omf=elf -DXPRJ_BusPirate_v3=$(CND_CONF)    $(COMPARISON_BUILD)  -std=c99 -mlarge-code -mlarge-data -O1 -fomit-frame-pointer -I".." -mcci -msmart-io=1 -Werror -Wall -msfr-warn=off -finline  -save-temps -finline  -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/_ext/1472/sump.o: ../sump.c  .generated_files/flags/BusPirate_v3/868814da1b9091b2cb81d3299c93e462d322298c .generated_files/flags/BusPirate_v3/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1472" 
	@${RM} ${OBJECTDIR}/_ext/1472/sump.o.d 
	@${RM} ${OBJECTDIR}/_ext/1472/sump.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  ../sump.c  -o ${OBJECTDIR}/_ext/1472/sump.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/_ext/1472/sump.o.d"      -g -D__DEBUG     -omf=elf -DXPRJ_BusPirate_v3=$(CND_CONF)    $(COMPARISON_BUILD)  -std=c99 -mlarge-code -mlarge-data -O1 -fomit-frame-pointer -I".." -mcci -msmart-io=1 -Werror -Wall -msfr-warn=off -finline  -save-temps -finline  -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/_ext/1472/i2c.o: ../i2c.c  .generated_files/flags/BusPirate_v3/e417e9c9ff6b8bf1f1cee1dd8f745da0cce34f97 .generated_files/flags/BusPirate_v3/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1472" 
	@${RM} ${OBJECTDIR}/_ext/1472/i2c.o.d 
	@${RM} ${OBJECTDIR}/_ext/1472/i2c.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  ../i2c.c  -o ${OBJECTDIR}/_ext/1472/i2c.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/_ext/1472/i2c.o.d"      -g -D__DEBUG     -omf=elf -DXPRJ_BusPirate_v3=$(CND_CONF)    $(COMPARISON_BUILD)  -std=c99 -mlarge-code -mlarge-data -O1 -fomit-frame-pointer -I".." -mcci -msmart-io=1 -Werror -Wall -msfr-warn=off -finline  -save-temps -finline  -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/_ext/1472/hd44780.o: ../hd44780.c  .generated_files/flags/BusPirate_v3/91ad34f43835930449e24d952422a6e995464da1 .generated_files/flags/BusPirate_v3/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1472" 
	@${RM} ${OBJECTDIR}/_ext/1472/hd44780.o.d 
	@${RM} ${OBJECTDIR}/_ext/1472/hd44780.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  ../hd44780.c  -o ${OBJECTDIR}/_ext/1472/hd44780.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/_ext/1472/hd44780.o.d"      -g -D__DEBUG     -omf=elf -DXPRJ_BusPirate_v3=$(CND_CONF)    $(COMPARISON_BUILD)  -std=c99 -mlarge-code -mlarge-data -O1 -fomit-frame-pointer -I".." -mcci -msmart-io=1 -Werror -Wall -msfr-warn=off -finline  -save-temps -finline  -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/_ext/1472/spi.o: ../spi.c  .generated_files/flags/BusPirate_v3/541f308157a22f4ace22d140ff4dd3fc2eee8d15 .generated_files/flags/BusPirate_v3/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1472" 
	@${RM} ${OBJECTDIR}/_ext/1472/spi.o.d 
	@${RM} ${OBJECTDIR}/_ext/1472/spi.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  ../spi.c  -o ${OBJECTDIR}/_ext/1472/spi.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/_ext/1472/spi.o.d"      -g -D__DEBUG     -omf=elf -DXPRJ_BusPirate_v3=$(CND_CONF)    $(COMPARISON_BUILD)  -std=c99 -mlarge-code -mlarge-data -O1 -fomit-frame-pointer -I".." -mcci -msmart-io=1 -Werror -Wall -msfr-warn=off -finline  -save-temps -finline  -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/_ext/1472/uart.o: ../uart.c  .generated_files/flags/BusPirate_v3/4bbfde49c6a11d7e32de669df928968442a2a9b1 .generated_files/flags/BusPirate_v3/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1472" 
	@${RM} ${OBJECTDIR}/_ext/1472/uart.o.d 
	@${RM} ${OBJECTDIR}/_ext/1472/uart.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  ../uart.c  -o ${OBJECTDIR}/_ext/1472/uart.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/_ext/1472/uart.o.d"      -g -D__DEBUG     -omf=elf -DXPRJ_BusPirate_v3=$(CND_CONF)    $(COMPARISON_BUILD)  -std=c99 -mlarge-code -mlarge-data -O1 -fomit-frame-pointer -I".." -mcci -msmart-io=1 -Werror -Wall -msfr-warn=off -finline  -save-temps -finline  -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/_ext/1472/openocd.o: ../openocd.c  .generated_files/flags/BusPirate_v3/c9f3d12f454016f0b00f9ae341cd07ac431305a1 .generated_files/flags/BusPirate_v3/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1472" 
	@${RM} ${OBJECTDIR}/_ext/1472/openocd.o.d 
	@${RM} ${OBJECTDIR}/_ext/1472/openocd.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  ../openocd.c  -o ${OBJECTDIR}/_ext/1472/openocd.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/_ext/1472/openocd.o.d"      -g -D__DEBUG     -omf=elf -DXPRJ_BusPirate_v3=$(CND_CONF)    $(COMPARISON_BUILD)  -std=c99 -mlarge-code -mlarge-data -O1 -fomit-frame-pointer -I".." -mcci -msmart-io=1 -Werror -Wall -msfr-warn=off -finline  -save-temps -finline  -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/_ext/1472/messages.o: ../messages.c  .generated_files/flags/BusPirate_v3/32fa75b8e262aeeb6c1fcc9f78560f6f420c3f84 .generated_files/flags/BusPirate_v3/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1472" 
	@${RM} ${OBJECTDIR}/_ext/1472/messages.o.d 
	@${RM} ${OBJECTDIR}/_ext/1472/messages.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  ../messages.c  -o ${OBJECTDIR}/_ext/1472/messages.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/_ext/1472/messages.o.d"      -g -D__DEBUG     -omf=elf -DXPRJ_BusPirate_v3=$(CND_CONF)    $(COMPARISON_BUILD)  -std=c99 -mlarge-code -mlarge-data -O1 -fomit-frame-pointer -I".." -mcci -msmart-io=1 -Werror -Wall -msfr-warn=off -finline  -save-temps -finline  -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/_ext/1472/binary_io.o: ../binary_io.c  .generated_files/flags/BusPirate_v3/444a6111d5824cd70cd8bd772f9d9d783464a4cc .generated_files/flags/BusPirate_v3/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1472" 
	@${RM} ${OBJECTDIR}/_ext/1472/binary_io.o.d 
	@${RM} ${OBJECTDIR}/_ext/1472/binary_io.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  ../binary_io.c  -o ${OBJECTDIR}/_ext/1472/binary_io.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/_ext/1472/binary_io.o.d"      -g -D__DEBUG     -omf=elf -DXPRJ_BusPirate_v3=$(CND_CONF)    $(COMPARISON_BUILD)  -std=c99 -mlarge-code -mlarge-data -O1 -fomit-frame-pointer -I".." -mcci -msmart-io=1 -Werror -Wall -msfr-warn=off -finline  -save-temps -finline  -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/_ext/1472/proc_menu.o: ../proc_menu.c  .generated_files/flags/BusPirate_v3/d7bf3fda1f3ea223a9fbf3b84fefd4b20bb724d7 .generated_files/flags/BusPirate_v3/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1472" 
	@${RM} ${OBJECTDIR}/_ext/1472/proc_menu.o.d 
	@${RM} ${OBJECTDIR}/_ext/1472/proc_menu.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  ../proc_menu.c  -o ${OBJECTDIR}/_ext/1472/proc_menu.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/_ext/1472/proc_menu.o.d"      -g -D__DEBUG     -omf=elf -DXPRJ_BusPirate_v3=$(CND_CONF)    $(COMPARISON_BUILD)  -std=c99 -mlarge-code -mlarge-data -O1 -fomit-frame-pointer -I".." -mcci -msmart-io=1 -Werror -Wall -msfr-warn=off -finline  -save-temps -finline  -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/_ext/1472/core.o: ../core.c  .generated_files/flags/BusPirate_v3/3153e8c3015c49af59b249ada25b8d9a9f0d1841 .generated_files/flags/BusPirate_v3/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1472" 
	@${RM} ${OBJECTDIR}/_ext/1472/core.o.d 
	@${RM} ${OBJECTDIR}/_ext/1472/core.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  ../core.c  -o ${OBJECTDIR}/_ext/1472/core.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/_ext/1472/core.o.d"      -g -D__DEBUG     -omf=elf -DXPRJ_BusPirate_v3=$(CND_CONF)    $(COMPARISON_BUILD)  -std=c99 -mlarge-code -mlarge-data -O1 -fomit-frame-pointer -I".." -mcci -msmart-io=1 -Werror -Wall -msfr-warn=off -finline  -save-temps -finline  -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/_ext/1472/uart2.o: ../uart2.c  .generated_files/flags/BusPirate_v3/8408c346a86e89f6e4892a90f56c09c54cda09f8 .generated_files/flags/BusPirate_v3/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1472" 
	@${RM} ${OBJECTDIR}/_ext/1472/uart2.o.d 
	@${RM} ${OBJECTDIR}/_ext/1472/uart2.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  ../uart2.c  -o ${OBJECTDIR}/_ext/1472/uart2.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/_ext/1472/uart2.o.d"      -g -D__DEBUG     -omf=elf -DXPRJ_BusPirate_v3=$(CND_CONF)    $(COMPARISON_BUILD)  -std=c99 -mlarge-code -mlarge-data -O1 -fomit-frame-pointer -I".." -mcci -msmart-io=1 -Werror -Wall -msfr-warn=off -finline  -save-temps -finline  -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/_ext/1472/aux_pin.o: ../aux_pin.c  .generated_files/flags/BusPirate_v3/1ee3291fe9d5ffd83beee8cce0fb022854f92d33 .generated_files/flags/BusPirate_v3/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1472" 
	@${RM} ${OBJECTDIR}/_ext/1472/aux_pin.o.d 
	@${RM} ${OBJECTDIR}/_ext/1472/aux_pin.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  ../aux_pin.c  -o ${OBJECTDIR}/_ext/1472/aux_pin.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/_ext/1472/aux_pin.o.d"      -g -D__DEBUG     -omf=elf -DXPRJ_BusPirate_v3=$(CND_CONF)    $(COMPARISON_BUILD)  -std=c99 -mlarge-code -mlarge-data -O1 -fomit-frame-pointer -I".." -mcci -msmart-io=1 -Werror -Wall -msfr-warn=off -finline  -save-temps -finline  -mdfp="${DFP_DIR}/xc16"
	
else
${OBJECTDIR}/_ext/1472/1wire.o: ../1wire.c  .generated_files/flags/BusPirate_v3/49b678630a009d2c00c7fc5180df0a8c954520a4 .generated_files/flags/BusPirate_v3/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1472" 
	@${RM} ${OBJECTDIR}/_ext/1472/1wire.o.d 
	@${RM} ${OBJECTDIR}/_ext/1472/1wire.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  ../1wire.c  -o ${OBJECTDIR}/_ext/1472/1wire.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/_ext/1472/1wire.o.d"        -g -omf=elf -DXPRJ_BusPirate_v3=$(CND_CONF)    $(COMPARISON_BUILD)  -std=c99 -mlarge-code -mlarge-data -O1 -fomit-frame-pointer -I".." -mcci -msmart-io=1 -Werror -Wall -msfr-warn=off -finline  -save-temps -finline  -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/_ext/1472/base.o: ../base.c  .generated_files/flags/BusPirate_v3/1947fb327a6114435332e44e462ddea77602c229 .generated_files/flags/BusPirate_v3/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1472" 
	@${RM} ${OBJECTDIR}/_ext/1472/base.o.d 
	@${RM} ${OBJECTDIR}/_ext/1472/base.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  ../base.c  -o ${OBJECTDIR}/_ext/1472/base.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/_ext/1472/base.o.d"        -g -omf=elf -DXPRJ_BusPirate_v3=$(CND_CONF)    $(COMPARISON_BUILD)  -std=c99 -mlarge-code -mlarge-data -O1 -fomit-frame-pointer -I".." -mcci -msmart-io=1 -Werror -Wall -msfr-warn=off -finline  -save-temps -finline  -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/_ext/1472/basic.o: ../basic.c  .generated_files/flags/BusPirate_v3/8580149fa2ede20b1b190e445472cd0ec236adca .generated_files/flags/BusPirate_v3/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1472" 
	@${RM} ${OBJECTDIR}/_ext/1472/basic.o.d 
	@${RM} ${OBJECTDIR}/_ext/1472/basic.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  ../basic.c  -o ${OBJECTDIR}/_ext/1472/basic.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/_ext/1472/basic.o.d"        -g -omf=elf -DXPRJ_BusPirate_v3=$(CND_CONF)    $(COMPARISON_BUILD)  -std=c99 -mlarge-code -mlarge-data -O1 -fomit-frame-pointer -I".." -mcci -msmart-io=1 -Werror -Wall -msfr-warn=off -finline  -save-temps -finline  -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/_ext/1472/bitbang.o: ../bitbang.c  .generated_files/flags/BusPirate_v3/75a9c062db010023c609244a166495d1db8afe3f .generated_files/flags/BusPirate_v3/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1472" 
	@${RM} ${OBJECTDIR}/_ext/1472/bitbang.o.d 
	@${RM} ${OBJECTDIR}/_ext/1472/bitbang.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  ../bitbang.c  -o ${OBJECTDIR}/_ext/1472/bitbang.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/_ext/1472/bitbang.o.d"        -g -omf=elf -DXPRJ_BusPirate_v3=$(CND_CONF)    $(COMPARISON_BUILD)  -std=c99 -mlarge-code -mlarge-data -O1 -fomit-frame-pointer -I".." -mcci -msmart-io=1 -Werror -Wall -msfr-warn=off -finline  -save-temps -finline  -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/_ext/1472/dio.o: ../dio.c  .generated_files/flags/BusPirate_v3/863d70cd616db501e190ade89b8d2c5e2f6a5089 .generated_files/flags/BusPirate_v3/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1472" 
	@${RM} ${OBJECTDIR}/_ext/1472/dio.o.d 
	@${RM} ${OBJECTDIR}/_ext/1472/dio.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  ../dio.c  -o ${OBJECTDIR}/_ext/1472/dio.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/_ext/1472/dio.o.d"        -g -omf=elf -DXPRJ_BusPirate_v3=$(CND_CONF)    $(COMPARISON_BUILD)  -std=c99 -mlarge-code -mlarge-data -O1 -fomit-frame-pointer -I".." -mcci -msmart-io=1 -Werror -Wall -msfr-warn=off -finline  -save-temps -finline  -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/_ext/1472/jtag.o: ../jtag.c  .generated_files/flags/BusPirate_v3/44e1689225d3b6b8f926afac8be617b7e94acf94 .generated_files/flags/BusPirate_v3/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1472" 
	@${RM} ${OBJECTDIR}/_ext/1472/jtag.o.d 
	@${RM} ${OBJECTDIR}/_ext/1472/jtag.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  ../jtag.c  -o ${OBJECTDIR}/_ext/1472/jtag.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/_ext/1472/jtag.o.d"        -g -omf=elf -DXPRJ_BusPirate_v3=$(CND_CONF)    $(COMPARISON_BUILD)  -std=c99 -mlarge-code -mlarge-data -O1 -fomit-frame-pointer -I".." -mcci -msmart-io=1 -Werror -Wall -msfr-warn=off -finline  -save-temps -finline  -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/_ext/760884769/lenval.o: ../jtag/lenval.c  .generated_files/flags/BusPirate_v3/620af8cf0d590bf61b5558b930adea603f7a86e5 .generated_files/flags/BusPirate_v3/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/760884769" 
	@${RM} ${OBJECTDIR}/_ext/760884769/lenval.o.d 
	@${RM} ${OBJECTDIR}/_ext/760884769/lenval.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  ../jtag/lenval.c  -o ${OBJECTDIR}/_ext/760884769/lenval.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/_ext/760884769/lenval.o.d"        -g -omf=elf -DXPRJ_BusPirate_v3=$(CND_CONF)    $(COMPARISON_BUILD)  -std=c99 -mlarge-code -mlarge-data -O1 -fomit-frame-pointer -I".." -mcci -msmart-io=1 -Werror -Wall -msfr-warn=off -finline  -save-temps -finline  -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/_ext/760884769/micro.o: ../jtag/micro.c  .generated_files/flags/BusPirate_v3/455ac9f2e86e0478646df1877fc26a0e07766ac7 .generated_files/flags/BusPirate_v3/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/760884769" 
	@${RM} ${OBJECTDIR}/_ext/760884769/micro.o.d 
	@${RM} ${OBJECTDIR}/_ext/760884769/micro.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  ../jtag/micro.c  -o ${OBJECTDIR}/_ext/760884769/micro.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/_ext/760884769/micro.o.d"        -g -omf=elf -DXPRJ_BusPirate_v3=$(CND_CONF)    $(COMPARISON_BUILD)  -std=c99 -mlarge-code -mlarge-data -O1 -fomit-frame-pointer -I".." -mcci -msmart-io=1 -Werror -Wall -msfr-warn=off -finline  -save-temps -finline  -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/_ext/760884769/ports.o: ../jtag/ports.c  .generated_files/flags/BusPirate_v3/cadd36faea51ea098da77dd8fffc70d0b38fed .generated_files/flags/BusPirate_v3/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/760884769" 
	@${RM} ${OBJECTDIR}/_ext/760884769/ports.o.d 
	@${RM} ${OBJECTDIR}/_ext/760884769/ports.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  ../jtag/ports.c  -o ${OBJECTDIR}/_ext/760884769/ports.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/_ext/760884769/ports.o.d"        -g -omf=elf -DXPRJ_BusPirate_v3=$(CND_CONF)    $(COMPARISON_BUILD)  -std=c99 -mlarge-code -mlarge-data -O1 -fomit-frame-pointer -I".." -mcci -msmart-io=1 -Werror -Wall -msfr-warn=off -finline  -save-temps -finline  -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/_ext/1472/main.o: ../main.c  .generated_files/flags/BusPirate_v3/1624793fcd939c24e78f8d306c32a1fe25d7d640 .generated_files/flags/BusPirate_v3/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1472" 
	@${RM} ${OBJECTDIR}/_ext/1472/main.o.d 
	@${RM} ${OBJECTDIR}/_ext/1472/main.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  ../main.c  -o ${OBJECTDIR}/_ext/1472/main.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/_ext/1472/main.o.d"        -g -omf=elf -DXPRJ_BusPirate_v3=$(CND_CONF)    $(COMPARISON_BUILD)  -std=c99 -mlarge-code -mlarge-data -O1 -fomit-frame-pointer -I".." -mcci -msmart-io=1 -Werror -Wall -msfr-warn=off -finline  -save-temps -finline  -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/_ext/1472/pc_at_keyboard.o: ../pc_at_keyboard.c  .generated_files/flags/BusPirate_v3/a80cdf4834c8ed08837d7db4c8e775c895125dea .generated_files/flags/BusPirate_v3/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1472" 
	@${RM} ${OBJECTDIR}/_ext/1472/pc_at_keyboard.o.d 
	@${RM} ${OBJECTDIR}/_ext/1472/pc_at_keyboard.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  ../pc_at_keyboard.c  -o ${OBJECTDIR}/_ext/1472/pc_at_keyboard.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/_ext/1472/pc_at_keyboard.o.d"        -g -omf=elf -DXPRJ_BusPirate_v3=$(CND_CONF)    $(COMPARISON_BUILD)  -std=c99 -mlarge-code -mlarge-data -O1 -fomit-frame-pointer -I".." -mcci -msmart-io=1 -Werror -Wall -msfr-warn=off -finline  -save-temps -finline  -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/_ext/1472/pic.o: ../pic.c  .generated_files/flags/BusPirate_v3/38348867c43dc18027b3fabd50be280d9fa8db76 .generated_files/flags/BusPirate_v3/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1472" 
	@${RM} ${OBJECTDIR}/_ext/1472/pic.o.d 
	@${RM} ${OBJECTDIR}/_ext/1472/pic.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  ../pic.c  -o ${OBJECTDIR}/_ext/1472/pic.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/_ext/1472/pic.o.d"        -g -omf=elf -DXPRJ_BusPirate_v3=$(CND_CONF)    $(COMPARISON_BUILD)  -std=c99 -mlarge-code -mlarge-data -O1 -fomit-frame-pointer -I".." -mcci -msmart-io=1 -Werror -Wall -msfr-warn=off -finline  -save-temps -finline  -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/_ext/1472/raw2wire.o: ../raw2wire.c  .generated_files/flags/BusPirate_v3/e12a4c7648780be11ab78193add8cc29cbd51404 .generated_files/flags/BusPirate_v3/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1472" 
	@${RM} ${OBJECTDIR}/_ext/1472/raw2wire.o.d 
	@${RM} ${OBJECTDIR}/_ext/1472/raw2wire.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  ../raw2wire.c  -o ${OBJECTDIR}/_ext/1472/raw2wire.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/_ext/1472/raw2wire.o.d"        -g -omf=elf -DXPRJ_BusPirate_v3=$(CND_CONF)    $(COMPARISON_BUILD)  -std=c99 -mlarge-code -mlarge-data -O1 -fomit-frame-pointer -I".." -mcci -msmart-io=1 -Werror -Wall -msfr-warn=off -finline  -save-temps -finline  -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/_ext/1472/raw3wire.o: ../raw3wire.c  .generated_files/flags/BusPirate_v3/ad51b2ede2c0039ad93570705ddfe50398b9b8e9 .generated_files/flags/BusPirate_v3/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1472" 
	@${RM} ${OBJECTDIR}/_ext/1472/raw3wire.o.d 
	@${RM} ${OBJECTDIR}/_ext/1472/raw3wire.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  ../raw3wire.c  -o ${OBJECTDIR}/_ext/1472/raw3wire.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/_ext/1472/raw3wire.o.d"        -g -omf=elf -DXPRJ_BusPirate_v3=$(CND_CONF)    $(COMPARISON_BUILD)  -std=c99 -mlarge-code -mlarge-data -O1 -fomit-frame-pointer -I".." -mcci -msmart-io=1 -Werror -Wall -msfr-warn=off -finline  -save-temps -finline  -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/_ext/1472/selftest.o: ../selftest.c  .generated_files/flags/BusPirate_v3/b131fedfae1e3d4716f9c252ad7d5200baf37d9e .generated_files/flags/BusPirate_v3/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1472" 
	@${RM} ${OBJECTDIR}/_ext/1472/selftest.o.d 
	@${RM} ${OBJECTDIR}/_ext/1472/selftest.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  ../selftest.c  -o ${OBJECTDIR}/_ext/1472/selftest.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/_ext/1472/selftest.o.d"        -g -omf=elf -DXPRJ_BusPirate_v3=$(CND_CONF)    $(COMPARISON_BUILD)  -std=c99 -mlarge-code -mlarge-data -O1 -fomit-frame-pointer -I".." -mcci -msmart-io=1 -Werror -Wall -msfr-warn=off -finline  -save-temps -finline  -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/_ext/1472/smps.o: ../smps.c  .generated_files/flags/BusPirate_v3/de9cbcdb5b2e8246d4debb706a77229573444ebe .generated_files/flags/BusPirate_v3/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1472" 
	@${RM} ${OBJECTDIR}/_ext/1472/smps.o.d 
	@${RM} ${OBJECTDIR}/_ext/1472/smps.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  ../smps.c  -o ${OBJECTDIR}/_ext/1472/smps.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/_ext/1472/smps.o.d"        -g -omf=elf -DXPRJ_BusPirate_v3=$(CND_CONF)    $(COMPARISON_BUILD)  -std=c99 -mlarge-code -mlarge-data -O1 -fomit-frame-pointer -I".." -mcci -msmart-io=1 -Werror -Wall -msfr-warn=off -finline  -save-temps -finline  -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/_ext/1472/sump.o: ../sump.c  .generated_files/flags/BusPirate_v3/83cb54eaefafe821551df10bd5baf5ecaa9c740 .generated_files/flags/BusPirate_v3/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1472" 
	@${RM} ${OBJECTDIR}/_ext/1472/sump.o.d 
	@${RM} ${OBJECTDIR}/_ext/1472/sump.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  ../sump.c  -o ${OBJECTDIR}/_ext/1472/sump.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/_ext/1472/sump.o.d"        -g -omf=elf -DXPRJ_BusPirate_v3=$(CND_CONF)    $(COMPARISON_BUILD)  -std=c99 -mlarge-code -mlarge-data -O1 -fomit-frame-pointer -I".." -mcci -msmart-io=1 -Werror -Wall -msfr-warn=off -finline  -save-temps -finline  -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/_ext/1472/i2c.o: ../i2c.c  .generated_files/flags/BusPirate_v3/95997a63cf074d353eff8ac7a6a8a99647e481b1 .generated_files/flags/BusPirate_v3/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1472" 
	@${RM} ${OBJECTDIR}/_ext/1472/i2c.o.d 
	@${RM} ${OBJECTDIR}/_ext/1472/i2c.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  ../i2c.c  -o ${OBJECTDIR}/_ext/1472/i2c.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/_ext/1472/i2c.o.d"        -g -omf=elf -DXPRJ_BusPirate_v3=$(CND_CONF)    $(COMPARISON_BUILD)  -std=c99 -mlarge-code -mlarge-data -O1 -fomit-frame-pointer -I".." -mcci -msmart-io=1 -Werror -Wall -msfr-warn=off -finline  -save-temps -finline  -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/_ext/1472/hd44780.o: ../hd44780.c  .generated_files/flags/BusPirate_v3/cf622793d629bc41519d8343a3984c9b753499be .generated_files/flags/BusPirate_v3/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1472" 
	@${RM} ${OBJECTDIR}/_ext/1472/hd44780.o.d 
	@${RM} ${OBJECTDIR}/_ext/1472/hd44780.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  ../hd44780.c  -o ${OBJECTDIR}/_ext/1472/hd44780.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/_ext/1472/hd44780.o.d"        -g -omf=elf -DXPRJ_BusPirate_v3=$(CND_CONF)    $(COMPARISON_BUILD)  -std=c99 -mlarge-code -mlarge-data -O1 -fomit-frame-pointer -I".." -mcci -msmart-io=1 -Werror -Wall -msfr-warn=off -finline  -save-temps -finline  -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/_ext/1472/spi.o: ../spi.c  .generated_files/flags/BusPirate_v3/c9b47fd55ed1801e33b77307ec3419bd07dbbe29 .generated_files/flags/BusPirate_v3/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1472" 
	@${RM} ${OBJECTDIR}/_ext/1472/spi.o.d 
	@${RM} ${OBJECTDIR}/_ext/1472/spi.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  ../spi.c  -o ${OBJECTDIR}/_ext/1472/spi.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/_ext/1472/spi.o.d"        -g -omf=elf -DXPRJ_BusPirate_v3=$(CND_CONF)    $(COMPARISON_BUILD)  -std=c99 -mlarge-code -mlarge-data -O1 -fomit-frame-pointer -I".." -mcci -msmart-io=1 -Werror -Wall -msfr-warn=off -finline  -save-temps -finline  -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/_ext/1472/uart.o: ../uart.c  .generated_files/flags/BusPirate_v3/353d05fd10475c9175e86c2c3cd75ffb7fc0cce8 .generated_files/flags/BusPirate_v3/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1472" 
	@${RM} ${OBJECTDIR}/_ext/1472/uart.o.d 
	@${RM} ${OBJECTDIR}/_ext/1472/uart.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  ../uart.c  -o ${OBJECTDIR}/_ext/1472/uart.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/_ext/1472/uart.o.d"        -g -omf=elf -DXPRJ_BusPirate_v3=$(CND_CONF)    $(COMPARISON_BUILD)  -std=c99 -mlarge-code -mlarge-data -O1 -fomit-frame-pointer -I".." -mcci -msmart-io=1 -Werror -Wall -msfr-warn=off -finline  -save-temps -finline  -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/_ext/1472/openocd.o: ../openocd.c  .generated_files/flags/BusPirate_v3/d21263e1b44e5bf515a96bc81fa8f4958f8c7ea4 .generated_files/flags/BusPirate_v3/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1472" 
	@${RM} ${OBJECTDIR}/_ext/1472/openocd.o.d 
	@${RM} ${OBJECTDIR}/_ext/1472/openocd.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  ../openocd.c  -o ${OBJECTDIR}/_ext/1472/openocd.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/_ext/1472/openocd.o.d"        -g -omf=elf -DXPRJ_BusPirate_v3=$(CND_CONF)    $(COMPARISON_BUILD)  -std=c99 -mlarge-code -mlarge-data -O1 -fomit-frame-pointer -I".." -mcci -msmart-io=1 -Werror -Wall -msfr-warn=off -finline  -save-temps -finline  -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/_ext/1472/messages.o: ../messages.c  .generated_files/flags/BusPirate_v3/664bc4ce20a88c91200c33e171b67b81ea6acb25 .generated_files/flags/BusPirate_v3/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1472" 
	@${RM} ${OBJECTDIR}/_ext/1472/messages.o.d 
	@${RM} ${OBJECTDIR}/_ext/1472/messages.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  ../messages.c  -o ${OBJECTDIR}/_ext/1472/messages.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/_ext/1472/messages.o.d"        -g -omf=elf -DXPRJ_BusPirate_v3=$(CND_CONF)    $(COMPARISON_BUILD)  -std=c99 -mlarge-code -mlarge-data -O1 -fomit-frame-pointer -I".." -mcci -msmart-io=1 -Werror -Wall -msfr-warn=off -finline  -save-temps -finline  -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/_ext/1472/binary_io.o: ../binary_io.c  .generated_files/flags/BusPirate_v3/a943307acc85912ec8c3ee44fea7b0d31108087d .generated_files/flags/BusPirate_v3/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1472" 
	@${RM} ${OBJECTDIR}/_ext/1472/binary_io.o.d 
	@${RM} ${OBJECTDIR}/_ext/1472/binary_io.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  ../binary_io.c  -o ${OBJECTDIR}/_ext/1472/binary_io.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/_ext/1472/binary_io.o.d"        -g -omf=elf -DXPRJ_BusPirate_v3=$(CND_CONF)    $(COMPARISON_BUILD)  -std=c99 -mlarge-code -mlarge-data -O1 -fomit-frame-pointer -I".." -mcci -msmart-io=1 -Werror -Wall -msfr-warn=off -finline  -save-temps -finline  -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/_ext/1472/proc_menu.o: ../proc_menu.c  .generated_files/flags/BusPirate_v3/845f226a98b5c4bfd557322520291558fe36fa .generated_files/flags/BusPirate_v3/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1472" 
	@${RM} ${OBJECTDIR}/_ext/1472/proc_menu.o.d 
	@${RM} ${OBJECTDIR}/_ext/1472/proc_menu.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  ../proc_menu.c  -o ${OBJECTDIR}/_ext/1472/proc_menu.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/_ext/1472/proc_menu.o.d"        -g -omf=elf -DXPRJ_BusPirate_v3=$(CND_CONF)    $(COMPARISON_BUILD)  -std=c99 -mlarge-code -mlarge-data -O1 -fomit-frame-pointer -I".." -mcci -msmart-io=1 -Werror -Wall -msfr-warn=off -finline  -save-temps -finline  -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/_ext/1472/core.o: ../core.c  .generated_files/flags/BusPirate_v3/a7d4be3916f3038fb506ffa60a89a086fd616bcd .generated_files/flags/BusPirate_v3/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1472" 
	@${RM} ${OBJECTDIR}/_ext/1472/core.o.d 
	@${RM} ${OBJECTDIR}/_ext/1472/core.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  ../core.c  -o ${OBJECTDIR}/_ext/1472/core.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/_ext/1472/core.o.d"        -g -omf=elf -DXPRJ_BusPirate_v3=$(CND_CONF)    $(COMPARISON_BUILD)  -std=c99 -mlarge-code -mlarge-data -O1 -fomit-frame-pointer -I".." -mcci -msmart-io=1 -Werror -Wall -msfr-warn=off -finline  -save-temps -finline  -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/_ext/1472/uart2.o: ../uart2.c  .generated_files/flags/BusPirate_v3/2e8d38775e1c3872c998f8ffe93c7a1bc386f9b8 .generated_files/flags/BusPirate_v3/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1472" 
	@${RM} ${OBJECTDIR}/_ext/1472/uart2.o.d 
	@${RM} ${OBJECTDIR}/_ext/1472/uart2.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  ../uart2.c  -o ${OBJECTDIR}/_ext/1472/uart2.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/_ext/1472/uart2.o.d"        -g -omf=elf -DXPRJ_BusPirate_v3=$(CND_CONF)    $(COMPARISON_BUILD)  -std=c99 -mlarge-code -mlarge-data -O1 -fomit-frame-pointer -I".." -mcci -msmart-io=1 -Werror -Wall -msfr-warn=off -finline  -save-temps -finline  -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/_ext/1472/aux_pin.o: ../aux_pin.c  .generated_files/flags/BusPirate_v3/6f59ff192321eaa024c72b6202e4f588d0f96096 .generated_files/flags/BusPirate_v3/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1472" 
	@${RM} ${OBJECTDIR}/_ext/1472/aux_pin.o.d 
	@${RM} ${OBJECTDIR}/_ext/1472/aux_pin.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  ../aux_pin.c  -o ${OBJECTDIR}/_ext/1472/aux_pin.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/_ext/1472/aux_pin.o.d"        -g -omf=elf -DXPRJ_BusPirate_v3=$(CND_CONF)    $(COMPARISON_BUILD)  -std=c99 -mlarge-code -mlarge-data -O1 -fomit-frame-pointer -I".." -mcci -msmart-io=1 -Werror -Wall -msfr-warn=off -finline  -save-temps -finline  -mdfp="${DFP_DIR}/xc16"
	
endif

# ------------------------------------------------------------------------------------
# Rules for buildStep: assemble
ifeq ($(TYPE_IMAGE), DEBUG_RUN)
${OBJECTDIR}/_ext/1472/openocd_asm.o: ../openocd_asm.s  .generated_files/flags/BusPirate_v3/21127bdd09630c90f0d84e19f721bbd5d54e1463 .generated_files/flags/BusPirate_v3/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1472" 
	@${RM} ${OBJECTDIR}/_ext/1472/openocd_asm.o.d 
	@${RM} ${OBJECTDIR}/_ext/1472/openocd_asm.o 
	${MP_CC} $(MP_EXTRA_AS_PRE)  ../openocd_asm.s  -o ${OBJECTDIR}/_ext/1472/openocd_asm.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -D__DEBUG   -omf=elf -DXPRJ_BusPirate_v3=$(CND_CONF)    -std=c99 -I".." -Wa,-MD,"${OBJECTDIR}/_ext/1472/openocd_asm.o.d",--defsym=__MPLAB_BUILD=1,--defsym=__ICD2RAM=1,--defsym=__MPLAB_DEBUG=1,--defsym=__DEBUG=1,,-g,--no-relax,-ahmlsi=${OBJECTDIR}/_ext/1472/openocd_asm.lst$(MP_EXTRA_AS_POST)  -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/_ext/1472/messages_v3.o: ../messages_v3.s  .generated_files/flags/BusPirate_v3/3f0def6e567f9ca68cc5b8bcfe037b3572b7b802 .generated_files/flags/BusPirate_v3/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1472" 
	@${RM} ${OBJECTDIR}/_ext/1472/messages_v3.o.d 
	@${RM} ${OBJECTDIR}/_ext/1472/messages_v3.o 
	${MP_CC} $(MP_EXTRA_AS_PRE)  ../messages_v3.s  -o ${OBJECTDIR}/_ext/1472/messages_v3.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -D__DEBUG   -omf=elf -DXPRJ_BusPirate_v3=$(CND_CONF)    -std=c99 -I".." -Wa,-MD,"${OBJECTDIR}/_ext/1472/messages_v3.o.d",--defsym=__MPLAB_BUILD=1,--defsym=__ICD2RAM=1,--defsym=__MPLAB_DEBUG=1,--defsym=__DEBUG=1,,-g,--no-relax,-ahmlsi=${OBJECTDIR}/_ext/1472/messages_v3.lst$(MP_EXTRA_AS_POST)  -mdfp="${DFP_DIR}/xc16"
	
else
${OBJECTDIR}/_ext/1472/openocd_asm.o: ../openocd_asm.s  .generated_files/flags/BusPirate_v3/a15fedbcdba84d87a24c7d0ca31deccac0d9210e .generated_files/flags/BusPirate_v3/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1472" 
	@${RM} ${OBJECTDIR}/_ext/1472/openocd_asm.o.d 
	@${RM} ${OBJECTDIR}/_ext/1472/openocd_asm.o 
	${MP_CC} $(MP_EXTRA_AS_PRE)  ../openocd_asm.s  -o ${OBJECTDIR}/_ext/1472/openocd_asm.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -omf=elf -DXPRJ_BusPirate_v3=$(CND_CONF)    -std=c99 -I".." -Wa,-MD,"${OBJECTDIR}/_ext/1472/openocd_asm.o.d",--defsym=__MPLAB_BUILD=1,-g,--no-relax,-ahmlsi=${OBJECTDIR}/_ext/1472/openocd_asm.lst$(MP_EXTRA_AS_POST)  -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/_ext/1472/messages_v3.o: ../messages_v3.s  .generated_files/flags/BusPirate_v3/c79b3d9596b83c0e869dbe195580886158a85669 .generated_files/flags/BusPirate_v3/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1472" 
	@${RM} ${OBJECTDIR}/_ext/1472/messages_v3.o.d 
	@${RM} ${OBJECTDIR}/_ext/1472/messages_v3.o 
	${MP_CC} $(MP_EXTRA_AS_PRE)  ../messages_v3.s  -o ${OBJECTDIR}/_ext/1472/messages_v3.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -omf=elf -DXPRJ_BusPirate_v3=$(CND_CONF)    -std=c99 -I".." -Wa,-MD,"${OBJECTDIR}/_ext/1472/messages_v3.o.d",--defsym=__MPLAB_BUILD=1,-g,--no-relax,-ahmlsi=${OBJECTDIR}/_ext/1472/messages_v3.lst$(MP_EXTRA_AS_POST)  -mdfp="${DFP_DIR}/xc16"
	
endif

# ------------------------------------------------------------------------------------
# Rules for buildStep: assemblePreproc
ifeq ($(TYPE_IMAGE), DEBUG_RUN)
else
endif

# ------------------------------------------------------------------------------------
# Rules for buildStep: link
ifeq ($(TYPE_IMAGE), DEBUG_RUN)
${DISTDIR}/busPirate.X.${IMAGE_TYPE}.${OUTPUT_SUFFIX}: ${OBJECTFILES}  nbproject/Makefile-${CND_CONF}.mk    ../p24FJ64GA002.gld
	@${MKDIR} ${DISTDIR} 
	${MP_CC} $(MP_EXTRA_LD_PRE)  -o ${DISTDIR}/busPirate.X.${IMAGE_TYPE}.${OUTPUT_SUFFIX}  ${OBJECTFILES_QUOTED_IF_SPACED}      -mcpu=$(MP_PROCESSOR_OPTION)        -D__DEBUG=__DEBUG   -omf=elf -DXPRJ_BusPirate_v3=$(CND_CONF)    $(COMPARISON_BUILD)  -std=c99  -mreserve=data@0x800:0x81F -mreserve=data@0x820:0x821 -mreserve=data@0x822:0x823 -mreserve=data@0x824:0x825 -mreserve=data@0x826:0x84F   -Wl,,,--defsym=__MPLAB_BUILD=1,--defsym=__MPLAB_DEBUG=1,--defsym=__DEBUG=1,-D__DEBUG=__DEBUG,,$(MP_LINKER_FILE_OPTION),--check-sections,--data-init,--pack-data,--handles,--isr,--gc-sections,--fill-upper=0,--stackguard=16,--library-path="../../../../Program Files/Microchip/MPLAB C30/lib",--library-path="..",--no-force-link,--smart-io,-Map="BusPirate_V3.map",--report-mem,--cref,--warn-section-align,--memorysummary,${DISTDIR}/memoryfile.xml$(MP_EXTRA_LD_POST)  -mdfp="${DFP_DIR}/xc16" 
	
else
${DISTDIR}/busPirate.X.${IMAGE_TYPE}.${OUTPUT_SUFFIX}: ${OBJECTFILES}  nbproject/Makefile-${CND_CONF}.mk   ../p24FJ64GA002.gld
	@${MKDIR} ${DISTDIR} 
	${MP_CC} $(MP_EXTRA_LD_PRE)  -o ${DISTDIR}/busPirate.X.${IMAGE_TYPE}.${DEBUGGABLE_SUFFIX}  ${OBJECTFILES_QUOTED_IF_SPACED}      -mcpu=$(MP_PROCESSOR_OPTION)        -omf=elf -DXPRJ_BusPirate_v3=$(CND_CONF)    $(COMPARISON_BUILD)  -std=c99 -Wl,,,--defsym=__MPLAB_BUILD=1,$(MP_LINKER_FILE_OPTION),--check-sections,--data-init,--pack-data,--handles,--isr,--gc-sections,--fill-upper=0,--stackguard=16,--library-path="../../../../Program Files/Microchip/MPLAB C30/lib",--library-path="..",--no-force-link,--smart-io,-Map="BusPirate_V3.map",--report-mem,--cref,--warn-section-align,--memorysummary,${DISTDIR}/memoryfile.xml$(MP_EXTRA_LD_POST)  -mdfp="${DFP_DIR}/xc16" 
	${MP_CC_DIR}\\xc16-bin2hex ${DISTDIR}/busPirate.X.${IMAGE_TYPE}.${DEBUGGABLE_SUFFIX} -a  -omf=elf   -mdfp="${DFP_DIR}/xc16" 
	
endif


# Subprojects
.build-subprojects:


# Subprojects
.clean-subprojects:

# Clean Targets
.clean-conf: ${CLEAN_SUBPROJECTS}
	${RM} -r ${OBJECTDIR}
	${RM} -r ${DISTDIR}

# Enable dependency checking
.dep.inc: .depcheck-impl

DEPFILES=$(wildcard ${POSSIBLE_DEPFILES})
ifneq (${DEPFILES},)
include ${DEPFILES}
endif
