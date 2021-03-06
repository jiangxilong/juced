# C++ Console Executable Makefile autogenerated by premake
# Don't edit this file! Instead edit `premake.lua` then rerun `make`

ifndef CONFIG
  CONFIG=Debug
endif

# if multiple archs are defined turn off automated dependency generation
DEPFLAGS := $(if $(word 2, $(TARGET_ARCH)), , -MMD)

ifeq ($(CONFIG),Debug)
  BINDIR := ../../../../bin
  LIBDIR := ../../../../bin
  OBJDIR := ../../../../bin/intermediate_linux/HybridReverb2Debug
  OUTDIR := ../../../../bin
  CPPFLAGS := $(DEPFLAGS) -D "LINUX=1" -D "JUCE_USE_XSHM=1" -D "JUCE_ALSA=1" -D "JUCE_JACK=1" -D "JUCE_USE_VSTSDK_2_4=1" -D "DEBUG=1" -D "_DEBUG=1" -I "/usr/include" -I "/usr/include/freetype2" -I "../../src" -I "../../../../juce" -I "../../../../vst/vstsdk2.4" -I "../../../../juce/extras/audio plugins" -I "../../../../juce/extras/audio plugins/wrapper"
  CFLAGS += $(CPPFLAGS) $(TARGET_ARCH) -g  -O0 -march=pentium3 -fopenmp  `pkg-config fftw3f --cflags`
  CXXFLAGS += $(CFLAGS)
  LDFLAGS += -L$(BINDIR) -L$(LIBDIR) `pkg-config fftw3f --libs` -L"/usr/X11R6/lib/" -L"../../../../bin/" -L"/usr/X11R6/lib/" -L"/usr/lib/" -lfreetype -lpthread -lrt -lX11 -lXext -lasound -lfreetype -lpthread -lrt -lX11 -lGL -lGLU -lXinerama -lasound -ljuce_debug -lm -lgomp
  LDDEPS :=
  RESFLAGS := -D "LINUX=1" -D "JUCE_USE_XSHM=1" -D "JUCE_ALSA=1" -D "JUCE_JACK=1" -D "JUCE_USE_VSTSDK_2_4=1" -D "DEBUG=1" -D "_DEBUG=1" -I "/usr/include" -I "/usr/include/freetype2" -I "../../src" -I "../../../../juce" -I "../../../../vst/vstsdk2.4" -I "../../../../juce/extras/audio plugins" -I "../../../../juce/extras/audio plugins/wrapper"
  TARGET := HybridReverb2_debug
 BLDCMD = $(CXX) -o $(OUTDIR)/$(TARGET) $(OBJECTS) $(LDFLAGS) $(RESOURCES) $(TARGET_ARCH)
endif

ifeq ($(CONFIG),Release)
  BINDIR := ../../../../bin
  LIBDIR := ../../../../bin
  OBJDIR := ../../../../bin/intermediate_linux/HybridReverb2Release
  OUTDIR := ../../../../bin
  CPPFLAGS := $(DEPFLAGS) -D "LINUX=1" -D "JUCE_USE_XSHM=1" -D "JUCE_ALSA=1" -D "JUCE_JACK=1" -D "JUCE_USE_VSTSDK_2_4=1" -D "NDEBUG=1" -I "/usr/include" -I "/usr/include/freetype2" -I "../../src" -I "../../../../juce" -I "../../../../vst/vstsdk2.4" -I "../../../../juce/extras/audio plugins" -I "../../../../juce/extras/audio plugins/wrapper"
  CFLAGS += $(CPPFLAGS) $(TARGET_ARCH) -O3 -fomit-frame-pointer  -O2 -march=pentium3 -fomit-frame-pointer -funroll-loops -fopenmp  `pkg-config fftw3f --cflags`
  CXXFLAGS += $(CFLAGS)
  LDFLAGS += -L$(BINDIR) -L$(LIBDIR) -s `pkg-config fftw3f --libs` -L"/usr/X11R6/lib/" -L"../../../../bin/" -L"/usr/X11R6/lib/" -L"/usr/lib/" -lfreetype -lpthread -lrt -lX11 -lXext -lasound -lfreetype -lpthread -lrt -lX11 -lGL -lGLU -lXinerama -lasound -ljuce -lm -lgomp
  LDDEPS :=
  RESFLAGS := -D "LINUX=1" -D "JUCE_USE_XSHM=1" -D "JUCE_ALSA=1" -D "JUCE_JACK=1" -D "JUCE_USE_VSTSDK_2_4=1" -D "NDEBUG=1" -I "/usr/include" -I "/usr/include/freetype2" -I "../../src" -I "../../../../juce" -I "../../../../vst/vstsdk2.4" -I "../../../../juce/extras/audio plugins" -I "../../../../juce/extras/audio plugins/wrapper"
  TARGET := HybridReverb2
 BLDCMD = $(CXX) -o $(OUTDIR)/$(TARGET) $(OBJECTS) $(LDFLAGS) $(RESOURCES) $(TARGET_ARCH)
endif

OBJECTS := \
	$(OBJDIR)/MasterAndCommander.o \
	$(OBJDIR)/TextList.o \
	$(OBJDIR)/SystemConfig.o \
	$(OBJDIR)/LagrangeInterpolator.o \
	$(OBJDIR)/PresetManager.o \
	$(OBJDIR)/HybridConvolver.o \
	$(OBJDIR)/HybridConvolverDual.o \
	$(OBJDIR)/Partitioner.o \
	$(OBJDIR)/HybridConvolverTripple.o \
	$(OBJDIR)/HybridReverb2Processor.o \
	$(OBJDIR)/Main.o \
	$(OBJDIR)/HybridConvolverSingle.o \
	$(OBJDIR)/SampleData.o \
	$(OBJDIR)/FreqPlot.o \
	$(OBJDIR)/TabModulation.o \
	$(OBJDIR)/IRPlot.o \
	$(OBJDIR)/TabAbout.o \
	$(OBJDIR)/EditorComponent.o \
	$(OBJDIR)/TabMain.o \
	$(OBJDIR)/TabTimbre.o \
	$(OBJDIR)/TabPresetEditor.o \
	$(OBJDIR)/TabPreferences.o \
	$(OBJDIR)/libHybridConv.o \

MKDIR_TYPE := msdos
CMD := $(subst \,\\,$(ComSpec)$(COMSPEC))
ifeq (,$(CMD))
  MKDIR_TYPE := posix
endif
ifeq (/bin,$(findstring /bin,$(SHELL)))
  MKDIR_TYPE := posix
endif
ifeq ($(MKDIR_TYPE),posix)
  CMD_MKBINDIR := mkdir -p $(BINDIR)
  CMD_MKLIBDIR := mkdir -p $(LIBDIR)
  CMD_MKOUTDIR := mkdir -p $(OUTDIR)
  CMD_MKOBJDIR := mkdir -p $(OBJDIR)
else
  CMD_MKBINDIR := $(CMD) /c if not exist $(subst /,\\,$(BINDIR)) mkdir $(subst /,\\,$(BINDIR))
  CMD_MKLIBDIR := $(CMD) /c if not exist $(subst /,\\,$(LIBDIR)) mkdir $(subst /,\\,$(LIBDIR))
  CMD_MKOUTDIR := $(CMD) /c if not exist $(subst /,\\,$(OUTDIR)) mkdir $(subst /,\\,$(OUTDIR))
  CMD_MKOBJDIR := $(CMD) /c if not exist $(subst /,\\,$(OBJDIR)) mkdir $(subst /,\\,$(OBJDIR))
endif

.PHONY: clean

$(OUTDIR)/$(TARGET): $(OBJECTS) $(LDDEPS) $(RESOURCES)
	@echo Linking HybridReverb2
	-@$(CMD_MKBINDIR)
	-@$(CMD_MKLIBDIR)
	-@$(CMD_MKOUTDIR)
	@$(BLDCMD)

clean:
	@echo Cleaning HybridReverb2
ifeq ($(MKDIR_TYPE),posix)
	-@rm -f $(OUTDIR)/$(TARGET)
	-@rm -rf $(OBJDIR)
else
	-@if exist $(subst /,\,$(OUTDIR)/$(TARGET)) del /q $(subst /,\,$(OUTDIR)/$(TARGET))
	-@if exist $(subst /,\,$(OBJDIR)) del /q $(subst /,\,$(OBJDIR))
	-@if exist $(subst /,\,$(OBJDIR)) rmdir /s /q $(subst /,\,$(OBJDIR))
endif

$(OBJDIR)/MasterAndCommander.o: ../../src/MasterAndCommander.cpp
	-@$(CMD_MKOBJDIR)
	@echo $(notdir $<)
	@$(CXX) $(CXXFLAGS) -o "$@" -c "$<"

$(OBJDIR)/TextList.o: ../../src/TextList.cpp
	-@$(CMD_MKOBJDIR)
	@echo $(notdir $<)
	@$(CXX) $(CXXFLAGS) -o "$@" -c "$<"

$(OBJDIR)/SystemConfig.o: ../../src/SystemConfig.cpp
	-@$(CMD_MKOBJDIR)
	@echo $(notdir $<)
	@$(CXX) $(CXXFLAGS) -o "$@" -c "$<"

$(OBJDIR)/LagrangeInterpolator.o: ../../src/LagrangeInterpolator.cpp
	-@$(CMD_MKOBJDIR)
	@echo $(notdir $<)
	@$(CXX) $(CXXFLAGS) -o "$@" -c "$<"

$(OBJDIR)/PresetManager.o: ../../src/PresetManager.cpp
	-@$(CMD_MKOBJDIR)
	@echo $(notdir $<)
	@$(CXX) $(CXXFLAGS) -o "$@" -c "$<"

$(OBJDIR)/HybridConvolver.o: ../../src/HybridConvolver.cpp
	-@$(CMD_MKOBJDIR)
	@echo $(notdir $<)
	@$(CXX) $(CXXFLAGS) -o "$@" -c "$<"

$(OBJDIR)/HybridConvolverDual.o: ../../src/HybridConvolverDual.cpp
	-@$(CMD_MKOBJDIR)
	@echo $(notdir $<)
	@$(CXX) $(CXXFLAGS) -o "$@" -c "$<"

$(OBJDIR)/Partitioner.o: ../../src/Partitioner.cpp
	-@$(CMD_MKOBJDIR)
	@echo $(notdir $<)
	@$(CXX) $(CXXFLAGS) -o "$@" -c "$<"

$(OBJDIR)/HybridConvolverTripple.o: ../../src/HybridConvolverTripple.cpp
	-@$(CMD_MKOBJDIR)
	@echo $(notdir $<)
	@$(CXX) $(CXXFLAGS) -o "$@" -c "$<"

$(OBJDIR)/HybridReverb2Processor.o: ../../src/HybridReverb2Processor.cpp
	-@$(CMD_MKOBJDIR)
	@echo $(notdir $<)
	@$(CXX) $(CXXFLAGS) -o "$@" -c "$<"

$(OBJDIR)/Main.o: ../../src/Main.cpp
	-@$(CMD_MKOBJDIR)
	@echo $(notdir $<)
	@$(CXX) $(CXXFLAGS) -o "$@" -c "$<"

$(OBJDIR)/HybridConvolverSingle.o: ../../src/HybridConvolverSingle.cpp
	-@$(CMD_MKOBJDIR)
	@echo $(notdir $<)
	@$(CXX) $(CXXFLAGS) -o "$@" -c "$<"

$(OBJDIR)/SampleData.o: ../../src/SampleData.cpp
	-@$(CMD_MKOBJDIR)
	@echo $(notdir $<)
	@$(CXX) $(CXXFLAGS) -o "$@" -c "$<"

$(OBJDIR)/FreqPlot.o: ../../src/gui/FreqPlot.cpp
	-@$(CMD_MKOBJDIR)
	@echo $(notdir $<)
	@$(CXX) $(CXXFLAGS) -o "$@" -c "$<"

$(OBJDIR)/TabModulation.o: ../../src/gui/TabModulation.cpp
	-@$(CMD_MKOBJDIR)
	@echo $(notdir $<)
	@$(CXX) $(CXXFLAGS) -o "$@" -c "$<"

$(OBJDIR)/IRPlot.o: ../../src/gui/IRPlot.cpp
	-@$(CMD_MKOBJDIR)
	@echo $(notdir $<)
	@$(CXX) $(CXXFLAGS) -o "$@" -c "$<"

$(OBJDIR)/TabAbout.o: ../../src/gui/TabAbout.cpp
	-@$(CMD_MKOBJDIR)
	@echo $(notdir $<)
	@$(CXX) $(CXXFLAGS) -o "$@" -c "$<"

$(OBJDIR)/EditorComponent.o: ../../src/gui/EditorComponent.cpp
	-@$(CMD_MKOBJDIR)
	@echo $(notdir $<)
	@$(CXX) $(CXXFLAGS) -o "$@" -c "$<"

$(OBJDIR)/TabMain.o: ../../src/gui/TabMain.cpp
	-@$(CMD_MKOBJDIR)
	@echo $(notdir $<)
	@$(CXX) $(CXXFLAGS) -o "$@" -c "$<"

$(OBJDIR)/TabTimbre.o: ../../src/gui/TabTimbre.cpp
	-@$(CMD_MKOBJDIR)
	@echo $(notdir $<)
	@$(CXX) $(CXXFLAGS) -o "$@" -c "$<"

$(OBJDIR)/TabPresetEditor.o: ../../src/gui/TabPresetEditor.cpp
	-@$(CMD_MKOBJDIR)
	@echo $(notdir $<)
	@$(CXX) $(CXXFLAGS) -o "$@" -c "$<"

$(OBJDIR)/TabPreferences.o: ../../src/gui/TabPreferences.cpp
	-@$(CMD_MKOBJDIR)
	@echo $(notdir $<)
	@$(CXX) $(CXXFLAGS) -o "$@" -c "$<"

$(OBJDIR)/libHybridConv.o: ../../src/libHybridConv/libHybridConv.c
	-@$(CMD_MKOBJDIR)
	@echo $(notdir $<)
	@$(CC) $(CFLAGS) -o "$@" -c "$<"

-include $(OBJECTS:%.o=%.d)

