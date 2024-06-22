##
## Auto Generated makefile by CodeLite IDE
## any manual changes will be erased      
##
## Debug
ProjectName            :=Servidor
ConfigurationName      :=Debug
WorkspaceConfiguration :=Debug
WorkspacePath          :=C:/PersonalProjects/DefaultWorkspace
ProjectPath            :=C:/PersonalProjects/DefaultWorkspace/Servidor
IntermediateDirectory  :=../build-$(WorkspaceConfiguration)/Servidor
OutDir                 :=$(IntermediateDirectory)
CurrentFileName        :=
CurrentFilePath        :=
CurrentFileFullPath    :=
User                   :=Mateus Oliveira
Date                   :=22/06/2024
CodeLitePath           :="C:/Program Files/CodeLite"
MakeDirCommand         :=mkdir -p
LinkerName             :=C:/cygwin64/bin/gcc.exe
SharedObjectLinkerName :=C:/cygwin64/bin/gcc.exe
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
OutputDirectory        :=C:/PersonalProjects/DefaultWorkspace/build-$(WorkspaceConfiguration)/bin
OutputFile             :=..\build-$(WorkspaceConfiguration)\bin\$(ProjectName).exe
Preprocessors          :=
ObjectSwitch           :=-o 
ArchiveOutputSwitch    := 
PreprocessOnlySwitch   :=-E
ObjectsFileList        :=$(IntermediateDirectory)/ObjectsList.txt
PCHCompileFlags        :=
RcCmpOptions           := 
RcCompilerName         :=windres
LinkOptions            :=  -static
IncludePath            :=  $(IncludeSwitch). $(IncludeSwitch). 
IncludePCH             := 
RcIncludePath          := 
Libs                   := 
ArLibs                 :=  
LibPath                := $(LibraryPathSwitch). 

##
## Common variables
## AR, CXX, CC, AS, CXXFLAGS and CFLAGS can be overridden using an environment variable
##
AR       := C:/cygwin64/bin/ar.exe
CXX      := C:/cygwin64/bin/x86_64-pc-cygwin-g++.exe
CC       := C:/cygwin64/bin/gcc.exe
CXXFLAGS :=  -gdwarf-2 -O0 -Wall $(Preprocessors)
CFLAGS   :=  -O0 -gdwarf-2 -std=c99 -Wall $(Preprocessors)
ASFLAGS  := 
AS       := C:/cygwin64/bin/as.exe


##
## User defined environment variables
##
CodeLiteDir:=C:\Program Files\CodeLite
Objects0=$(IntermediateDirectory)/home.c$(ObjectSuffix) $(IntermediateDirectory)/contact.c$(ObjectSuffix) $(IntermediateDirectory)/about.c$(ObjectSuffix) $(IntermediateDirectory)/main.c$(ObjectSuffix) 



Objects=$(Objects0) 

##
## Main Build Targets 
##
.PHONY: all clean PreBuild PrePreBuild PostBuild MakeIntermediateDirs
all: MakeIntermediateDirs $(OutputFile)

$(OutputFile): $(IntermediateDirectory)/.d $(Objects) 
	@$(MakeDirCommand) "$(IntermediateDirectory)"
	@echo "" > $(IntermediateDirectory)/.d
	@echo $(Objects0)  > $(ObjectsFileList)
	$(LinkerName) $(OutputSwitch)$(OutputFile) @$(ObjectsFileList) $(LibPath) $(Libs) $(LinkOptions)

MakeIntermediateDirs:
	@$(MakeDirCommand) "$(IntermediateDirectory)"
	@$(MakeDirCommand) "$(OutputDirectory)"

$(IntermediateDirectory)/.d:
	@$(MakeDirCommand) "$(IntermediateDirectory)"

PreBuild:


##
## Objects
##
$(IntermediateDirectory)/home.c$(ObjectSuffix): home.c $(IntermediateDirectory)/home.c$(DependSuffix)
	$(CC) $(SourceSwitch) "C:/PersonalProjects/DefaultWorkspace/Servidor/home.c" $(CFLAGS) $(ObjectSwitch)$(IntermediateDirectory)/home.c$(ObjectSuffix) $(IncludePath)
$(IntermediateDirectory)/home.c$(DependSuffix): home.c
	@$(CC) $(CFLAGS) $(IncludePath) -MG -MP -MT$(IntermediateDirectory)/home.c$(ObjectSuffix) -MF$(IntermediateDirectory)/home.c$(DependSuffix) -MM home.c

$(IntermediateDirectory)/home.c$(PreprocessSuffix): home.c
	$(CC) $(CFLAGS) $(IncludePath) $(PreprocessOnlySwitch) $(OutputSwitch) $(IntermediateDirectory)/home.c$(PreprocessSuffix) home.c

$(IntermediateDirectory)/contact.c$(ObjectSuffix): contact.c $(IntermediateDirectory)/contact.c$(DependSuffix)
	$(CC) $(SourceSwitch) "C:/PersonalProjects/DefaultWorkspace/Servidor/contact.c" $(CFLAGS) $(ObjectSwitch)$(IntermediateDirectory)/contact.c$(ObjectSuffix) $(IncludePath)
$(IntermediateDirectory)/contact.c$(DependSuffix): contact.c
	@$(CC) $(CFLAGS) $(IncludePath) -MG -MP -MT$(IntermediateDirectory)/contact.c$(ObjectSuffix) -MF$(IntermediateDirectory)/contact.c$(DependSuffix) -MM contact.c

$(IntermediateDirectory)/contact.c$(PreprocessSuffix): contact.c
	$(CC) $(CFLAGS) $(IncludePath) $(PreprocessOnlySwitch) $(OutputSwitch) $(IntermediateDirectory)/contact.c$(PreprocessSuffix) contact.c

$(IntermediateDirectory)/about.c$(ObjectSuffix): about.c $(IntermediateDirectory)/about.c$(DependSuffix)
	$(CC) $(SourceSwitch) "C:/PersonalProjects/DefaultWorkspace/Servidor/about.c" $(CFLAGS) $(ObjectSwitch)$(IntermediateDirectory)/about.c$(ObjectSuffix) $(IncludePath)
$(IntermediateDirectory)/about.c$(DependSuffix): about.c
	@$(CC) $(CFLAGS) $(IncludePath) -MG -MP -MT$(IntermediateDirectory)/about.c$(ObjectSuffix) -MF$(IntermediateDirectory)/about.c$(DependSuffix) -MM about.c

$(IntermediateDirectory)/about.c$(PreprocessSuffix): about.c
	$(CC) $(CFLAGS) $(IncludePath) $(PreprocessOnlySwitch) $(OutputSwitch) $(IntermediateDirectory)/about.c$(PreprocessSuffix) about.c

$(IntermediateDirectory)/main.c$(ObjectSuffix): main.c $(IntermediateDirectory)/main.c$(DependSuffix)
	$(CC) $(SourceSwitch) "C:/PersonalProjects/DefaultWorkspace/Servidor/main.c" $(CFLAGS) $(ObjectSwitch)$(IntermediateDirectory)/main.c$(ObjectSuffix) $(IncludePath)
$(IntermediateDirectory)/main.c$(DependSuffix): main.c
	@$(CC) $(CFLAGS) $(IncludePath) -MG -MP -MT$(IntermediateDirectory)/main.c$(ObjectSuffix) -MF$(IntermediateDirectory)/main.c$(DependSuffix) -MM main.c

$(IntermediateDirectory)/main.c$(PreprocessSuffix): main.c
	$(CC) $(CFLAGS) $(IncludePath) $(PreprocessOnlySwitch) $(OutputSwitch) $(IntermediateDirectory)/main.c$(PreprocessSuffix) main.c


-include $(IntermediateDirectory)/*$(DependSuffix)
##
## Clean
##
clean:
	$(RM) -r $(IntermediateDirectory)


