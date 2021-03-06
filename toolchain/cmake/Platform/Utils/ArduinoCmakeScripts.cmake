# `arduino-cmake` requires ARDUINO_SDK_VERSION
set(ARDUINO_SDK_VERSION 1.8.5)
set(ARDUINO_SDK_VERSION_MAJOR 1)
set(ARDUINO_SDK_VERSION_MINOR 8)
set(ARDUINO_SDK_VERSION_PATCH 5)
# `arduino-cmake` requires these paths for operation
set(ARDUINO_SIZE_SCRIPT ${COSA_FIRMWARE_SCRIPT_PATH})
set(ARDUINO_AVRDUDE_PROGRAM ${COSA_AVRDUDE_PROGRAM})
set(AVRSIZE_PROGRAM ${COSA_AVRSIZE_PROGRAM})
set(ARDUINO_AVRDUDE_CONFIG_PATH ${COSA_AVRDUDE_CONFIG_PATH})
set(ARDUINO_PLATFORM_HEADER_FILE_PATH ${HEADER_ARDUINO_H})
# Variables for library generation
set(ARDUINO_LIBRARIES_PATH ${COSA_LIBRARIES_PATH})
set(ARDUINO_CMAKE_RECURSION_DEFAULT ${COSA_DEFAULT_CMAKE_RECURSION})
#=====================================================#
include(Macros)
include(BoardPropertiesReader)
include(FlagsSetter)
include(SourceFinder)
include(LibraryFinder)
include(DebugOptions)
include(Printer)
include(GeneratorSettingsLoader)
include(ArduinoSketchToCppConverter)
include(ArduinoSketchFactory)

# Include an overridden library factory method
# include(CoreLibraryFactory)
include(CosaCoreLibraryFactory)

include(ArduinoLibraryFactory)
include(BlacklistedLibrariesRemover)
include(ArduinoExampleFactory)
include(ArduinoLibraryExampleFactory)
include(ArduinoBootloaderArgumentsBuilder)
include(ArduinoBootloaderBurnTargetCreator)
include(ArduinoBootloaderUploadTargetCreator)
include(ArduinoFirmwareTargetCreator)
include(ArduinoProgrammerArgumentsBuilder)
include(ArduinoProgrammerBurnTargetCreator)
include(ArduinoSerialTargetCreator)
include(ArduinoUploadTargetCreator)
include(AvrLibraryGenerator)
include(AvrFirmwareGenerator)
include(ArduinoLibraryGenerator)
include(ArduinoFirmwareGenerator)
include(ArduinoExampleGenerator)
include(ArduinoLibraryExampleGenerator)
set(Wire_RECURSE True)
set(Ethernet_RECURSE True)
set(SD_RECURSE True)
#=====================================================#
