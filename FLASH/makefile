################################################################################
# Automatically-generated file. Do not edit!
################################################################################

#Progress monitor hint: 1
first : all
-include ../makefile.init

# This file contains definitions of environment variables used in the makefiles and .args files if exist.
-include makefile.local

RM := "$(GNU_Make_Install_DirEnv)/rm" -f

# All of the sources participating in the build are defined here
-include sources.mk
-include subdir.mk
-include Sources/subdir.mk
-include Project_Settings/Linker_Files/subdir.mk
-include objects.mk

ifneq ($(MAKECMDGOALS),clean)
ifneq ($(strip $(ASM_DEPS)),)
-include $(ASM_DEPS)
endif
ifneq ($(strip $(ASM_UPPER_DEPS)),)
-include $(ASM_UPPER_DEPS)
endif
ifneq ($(strip $(S_DEPS)),)
-include $(S_DEPS)
endif
ifneq ($(strip $(S_UPPER_DEPS)),)
-include $(S_UPPER_DEPS)
endif
endif

-include ../makefile.defs

# Add inputs and outputs from these tool invocations to the build variables 
OBJS += \
default.lst \
SerialCOM.obj \

OBJS_QUOTED += \
"default.lst" \
"SerialCOM.obj" \

OBJS_OS_FORMAT += \
default.lst \
SerialCOM.obj \

EXECUTABLES += \
SerialCOM.obj \

EXECUTABLES_QUOTED += \
"SerialCOM.obj" \

EXECUTABLES_OS_FORMAT += \
SerialCOM.obj \

BURNER_OUTPUT_OUTPUTS += \
SerialCOM.obj.s19 \

BURNER_OUTPUT_OUTPUTS_QUOTED += \
"SerialCOM.obj.s19" \

BURNER_OUTPUT_OUTPUTS_OS_FORMAT += \
SerialCOM.obj.s19 \


# All Target
call-burner := 0
ifneq ($(strip $(EXECUTABLES)),)
ifneq ($(strip $(BBL_SRCS_QUOTED)),)
call-burner := 1
endif
endif
ifeq ($(call-burner),1)
all: SerialCOM.obj SerialCOM.obj.s19
else
all: SerialCOM.obj
endif

# Tool invocations
SerialCOM.obj: $(ASM_SRCS)
	@echo 'Building target: $@'
	@echo 'Executing target #2 $@'
	@echo 'Invoking: HCS08 Assembler'
	"$(HC08ToolsEnv)/ahc08" -Objn"SerialCOM.obj" -ArgFile"SerialCOM.args" $(ASM_SRCS_QUOTED) $(ASM_SRCS_QUOTED)
	@echo 'Finished building target: $@'
	@echo ' '

SerialCOM.obj.s19: $(BBL_SRCS) $(EXECUTABLES)
	@echo 'Executing target #3 $@'
	@echo 'Invoking: S08 Burner'
	"$(HC08ToolsEnv)/burner" -ArgFile"SerialCOM.obj.args" -f="$<" -env"ABS_FILE=$(strip $(EXECUTABLES_OS_FORMAT))"
	@echo 'Finished building: $@'
	@echo ' '

# Other Targets
clean:
	-$(RM) $(S_DEPS_QUOTED) "./*/*.d"  $(BURNER_OUTPUT_OUTPUTS_QUOTED) $(ASM_UPPER_DEPS_QUOTED) "./*/*.obj"  $(EXECUTABLES_QUOTED) $(S_UPPER_DEPS_QUOTED) $(ProjDirPath)/FLASH/SerialCOM.obj $(ProjDirPath)/FLASH/SerialCOM.args $(ProjDirPath)/FLASH/SerialCOM.obj.args $(ProjDirPath)/FLASH/SerialCOM.obj.s19 $(ProjDirPath)/FLASH/SerialCOM.sx
	-@echo ' '

.PHONY: all clean dependents explicit-dependencies warning-messages
.SECONDARY:

-include ../makefile.targets

explicit-dependencies: 

warning-messages: 

