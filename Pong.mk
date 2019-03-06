##
## Auto Generated makefile by CodeLite IDE
## any manual changes will be erased      
##
## Debug
ProjectName            :=Pong
ConfigurationName      :=Debug
WorkspacePath          :=C:/Users/isake/Documents/Laboration5
ProjectPath            :=C:/Users/isake/Documents/Laboration5/Pong
IntermediateDirectory  :=./Debug
OutDir                 := $(IntermediateDirectory)
CurrentFileName        :=
CurrentFilePath        :=
CurrentFileFullPath    :=
User                   :=isake
Date                   :=06/03/2019
CodeLitePath           :=C:/cseapp3/CodeLite
LinkerName             :=$(CodeLiteDir)/tools/gcc-arm/bin/arm-none-eabi-g++.exe
SharedObjectLinkerName :=$(CodeLiteDir)/tools/gcc-arm/arm-none-eabi-g++.exe -shared -fPIC
ObjectSuffix           :=.o
DependSuffix           :=.o.d
PreprocessSuffix       :=.i
DebugSwitch            :=-g 
IncludeSwitch          :=-I
LibrarySwitch          :=-l
OutputSwitch           :=-o 
LibraryPathSwitch      :=-L
PreprocessorSwitch     :=-D
SourceSwitch           :=-c 
OutputFile             :=$(IntermediateDirectory)/$(ProjectName).elf
Preprocessors          :=$(PreprocessorSwitch)SIMULATOR 
ObjectSwitch           :=-o 
ArchiveOutputSwitch    := 
PreprocessOnlySwitch   :=-E
ObjectsFileList        :="Pong.txt"
PCHCompileFlags        :=
MakeDirCommand         :=makedir
RcCmpOptions           := 
RcCompilerName         :=
LinkOptions            :=  -T$(ProjectPath)/md407-ram.x -L$(ARM_V6LIB) -L$(ARM_GCC_V6LIB) -nostdlib
IncludePath            :=  $(IncludeSwitch). $(IncludeSwitch)include 
IncludePCH             := 
RcIncludePath          := 
Libs                   := $(LibrarySwitch)gcc $(LibrarySwitch)c_nano 
ArLibs                 :=  "gcc" "c_nano" 
LibPath                := $(LibraryPathSwitch). 

##
## Common variables
## AR, CXX, CC, AS, CXXFLAGS and CFLAGS can be overriden using an environment variables
##
AR       := $(CodeLiteDir)/tools/gcc-arm/bin/arm-none-eabi-ar.exe rcu
CXX      := $(CodeLiteDir)/tools/gcc-arm/bin/arm-none-eabi-g++.exe
CC       := $(CodeLiteDir)/tools/gcc-arm/bin/arm-none-eabi-gcc.exe
CXXFLAGS :=  -g -O0 -Wall $(Preprocessors)
CFLAGS   :=  -g -O0 -mthumb -Wall -march=armv6-m -msoft-float -Wa,-adhln=test.s $(Preprocessors)
ASFLAGS  := 
AS       := $(CodeLiteDir)/tools/gcc-arm/bin/arm-none-eabi-as.exe


##
## User defined environment variables
##
CodeLiteDir:=C:\cseapp3\CodeLite
ARM_V6LIB:=$(GccArmDir)/arm-none-eabi/lib/thumb/v6-m
ARM_GCC_V6LIB:=$(GccArmDir)/lib/gcc/arm-none-eabi/7.2.1/thumb/v6-m
ARM_M4FPLIB:=$(GccArmDir)/arm-none-eabi/lib/thumb/v7e-m/fpv4-sp/hard
ARM_GCC_M4FPLIB:=$(GccArmDir)/lib/gcc/arm-none-eabi/7.2.1/thumb/v7e-m
Objects0=$(IntermediateDirectory)/startup.c$(ObjectSuffix) $(IntermediateDirectory)/graphicdisplay.c$(ObjectSuffix) $(IntermediateDirectory)/delay.c$(ObjectSuffix) $(IntermediateDirectory)/asciidisplay.c$(ObjectSuffix) $(IntermediateDirectory)/keyboard.c$(ObjectSuffix) $(IntermediateDirectory)/GPIO.c$(ObjectSuffix) $(IntermediateDirectory)/object.c$(ObjectSuffix) 



Objects=$(Objects0) 

##
## Main Build Targets 
##
.PHONY: all clean PreBuild PrePreBuild PostBuild MakeIntermediateDirs
all: $(OutputFile)

$(OutputFile): $(IntermediateDirectory)/.d $(Objects) 
	@$(MakeDirCommand) $(@D)
	@echo "" > $(IntermediateDirectory)/.d
	@echo $(Objects0)  > $(ObjectsFileList)
	$(LinkerName) $(OutputSwitch)$(OutputFile) @$(ObjectsFileList) $(LibPath) $(Libs) $(LinkOptions)

MakeIntermediateDirs:
	@$(MakeDirCommand) "./Debug"


$(IntermediateDirectory)/.d:
	@$(MakeDirCommand) "./Debug"

PreBuild:


##
## Objects
##
$(IntermediateDirectory)/startup.c$(ObjectSuffix): startup.c $(IntermediateDirectory)/startup.c$(DependSuffix)
	$(CC) $(SourceSwitch) "C:/Users/isake/Documents/Laboration5/Pong/startup.c" $(CFLAGS) $(ObjectSwitch)$(IntermediateDirectory)/startup.c$(ObjectSuffix) $(IncludePath)
$(IntermediateDirectory)/startup.c$(DependSuffix): startup.c
	@$(CC) $(CFLAGS) $(IncludePath) -MG -MP -MT$(IntermediateDirectory)/startup.c$(ObjectSuffix) -MF$(IntermediateDirectory)/startup.c$(DependSuffix) -MM startup.c

$(IntermediateDirectory)/startup.c$(PreprocessSuffix): startup.c
	$(CC) $(CFLAGS) $(IncludePath) $(PreprocessOnlySwitch) $(OutputSwitch) $(IntermediateDirectory)/startup.c$(PreprocessSuffix) startup.c

$(IntermediateDirectory)/graphicdisplay.c$(ObjectSuffix): graphicdisplay.c $(IntermediateDirectory)/graphicdisplay.c$(DependSuffix)
	$(CC) $(SourceSwitch) "C:/Users/isake/Documents/Laboration5/Pong/graphicdisplay.c" $(CFLAGS) $(ObjectSwitch)$(IntermediateDirectory)/graphicdisplay.c$(ObjectSuffix) $(IncludePath)
$(IntermediateDirectory)/graphicdisplay.c$(DependSuffix): graphicdisplay.c
	@$(CC) $(CFLAGS) $(IncludePath) -MG -MP -MT$(IntermediateDirectory)/graphicdisplay.c$(ObjectSuffix) -MF$(IntermediateDirectory)/graphicdisplay.c$(DependSuffix) -MM graphicdisplay.c

$(IntermediateDirectory)/graphicdisplay.c$(PreprocessSuffix): graphicdisplay.c
	$(CC) $(CFLAGS) $(IncludePath) $(PreprocessOnlySwitch) $(OutputSwitch) $(IntermediateDirectory)/graphicdisplay.c$(PreprocessSuffix) graphicdisplay.c

$(IntermediateDirectory)/delay.c$(ObjectSuffix): delay.c $(IntermediateDirectory)/delay.c$(DependSuffix)
	$(CC) $(SourceSwitch) "C:/Users/isake/Documents/Laboration5/Pong/delay.c" $(CFLAGS) $(ObjectSwitch)$(IntermediateDirectory)/delay.c$(ObjectSuffix) $(IncludePath)
$(IntermediateDirectory)/delay.c$(DependSuffix): delay.c
	@$(CC) $(CFLAGS) $(IncludePath) -MG -MP -MT$(IntermediateDirectory)/delay.c$(ObjectSuffix) -MF$(IntermediateDirectory)/delay.c$(DependSuffix) -MM delay.c

$(IntermediateDirectory)/delay.c$(PreprocessSuffix): delay.c
	$(CC) $(CFLAGS) $(IncludePath) $(PreprocessOnlySwitch) $(OutputSwitch) $(IntermediateDirectory)/delay.c$(PreprocessSuffix) delay.c

$(IntermediateDirectory)/asciidisplay.c$(ObjectSuffix): asciidisplay.c $(IntermediateDirectory)/asciidisplay.c$(DependSuffix)
	$(CC) $(SourceSwitch) "C:/Users/isake/Documents/Laboration5/Pong/asciidisplay.c" $(CFLAGS) $(ObjectSwitch)$(IntermediateDirectory)/asciidisplay.c$(ObjectSuffix) $(IncludePath)
$(IntermediateDirectory)/asciidisplay.c$(DependSuffix): asciidisplay.c
	@$(CC) $(CFLAGS) $(IncludePath) -MG -MP -MT$(IntermediateDirectory)/asciidisplay.c$(ObjectSuffix) -MF$(IntermediateDirectory)/asciidisplay.c$(DependSuffix) -MM asciidisplay.c

$(IntermediateDirectory)/asciidisplay.c$(PreprocessSuffix): asciidisplay.c
	$(CC) $(CFLAGS) $(IncludePath) $(PreprocessOnlySwitch) $(OutputSwitch) $(IntermediateDirectory)/asciidisplay.c$(PreprocessSuffix) asciidisplay.c

$(IntermediateDirectory)/keyboard.c$(ObjectSuffix): keyboard.c $(IntermediateDirectory)/keyboard.c$(DependSuffix)
	$(CC) $(SourceSwitch) "C:/Users/isake/Documents/Laboration5/Pong/keyboard.c" $(CFLAGS) $(ObjectSwitch)$(IntermediateDirectory)/keyboard.c$(ObjectSuffix) $(IncludePath)
$(IntermediateDirectory)/keyboard.c$(DependSuffix): keyboard.c
	@$(CC) $(CFLAGS) $(IncludePath) -MG -MP -MT$(IntermediateDirectory)/keyboard.c$(ObjectSuffix) -MF$(IntermediateDirectory)/keyboard.c$(DependSuffix) -MM keyboard.c

$(IntermediateDirectory)/keyboard.c$(PreprocessSuffix): keyboard.c
	$(CC) $(CFLAGS) $(IncludePath) $(PreprocessOnlySwitch) $(OutputSwitch) $(IntermediateDirectory)/keyboard.c$(PreprocessSuffix) keyboard.c

$(IntermediateDirectory)/GPIO.c$(ObjectSuffix): GPIO.c $(IntermediateDirectory)/GPIO.c$(DependSuffix)
	$(CC) $(SourceSwitch) "C:/Users/isake/Documents/Laboration5/Pong/GPIO.c" $(CFLAGS) $(ObjectSwitch)$(IntermediateDirectory)/GPIO.c$(ObjectSuffix) $(IncludePath)
$(IntermediateDirectory)/GPIO.c$(DependSuffix): GPIO.c
	@$(CC) $(CFLAGS) $(IncludePath) -MG -MP -MT$(IntermediateDirectory)/GPIO.c$(ObjectSuffix) -MF$(IntermediateDirectory)/GPIO.c$(DependSuffix) -MM GPIO.c

$(IntermediateDirectory)/GPIO.c$(PreprocessSuffix): GPIO.c
	$(CC) $(CFLAGS) $(IncludePath) $(PreprocessOnlySwitch) $(OutputSwitch) $(IntermediateDirectory)/GPIO.c$(PreprocessSuffix) GPIO.c

$(IntermediateDirectory)/object.c$(ObjectSuffix): object.c $(IntermediateDirectory)/object.c$(DependSuffix)
	$(CC) $(SourceSwitch) "C:/Users/isake/Documents/Laboration5/Pong/object.c" $(CFLAGS) $(ObjectSwitch)$(IntermediateDirectory)/object.c$(ObjectSuffix) $(IncludePath)
$(IntermediateDirectory)/object.c$(DependSuffix): object.c
	@$(CC) $(CFLAGS) $(IncludePath) -MG -MP -MT$(IntermediateDirectory)/object.c$(ObjectSuffix) -MF$(IntermediateDirectory)/object.c$(DependSuffix) -MM object.c

$(IntermediateDirectory)/object.c$(PreprocessSuffix): object.c
	$(CC) $(CFLAGS) $(IncludePath) $(PreprocessOnlySwitch) $(OutputSwitch) $(IntermediateDirectory)/object.c$(PreprocessSuffix) object.c


-include $(IntermediateDirectory)/*$(DependSuffix)
##
## Clean
##
clean:
	$(RM) -r ./Debug/


