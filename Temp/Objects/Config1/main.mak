SHELL := cmd.exe
CYGWIN=nontsec
export PATH := C:\Oracle\product\12.1.0\client_1\bin;C:\WINDOWS\system32;C:\WINDOWS;C:\WINDOWS\System32\Wbem;C:\WINDOWS\System32\WindowsPowerShell\v1.0\;C:\Program Files\dotnet\;C:\Program Files (x86)\Windows Kits\10\Windows Performance Toolkit\;C:\Program Files\Git\cmd;C:\Users\bjacot\AppData\Local\Programs\Python\Launcher\;C:\Users\bjacot\AppData\Local\Microsoft\WindowsApps;C:\Users\bjacot\AppData\Local\Programs\Microsoft VS Code\bin;C:\Program Files (x86)\Common Files\Hilscher GmbH\TLRDecode;C:\Users\bjacot\AppData\Local\Programs\Python\Launcher\;C:\Users\bjacot\AppData\Local\Microsoft\WindowsApps;C:\Users\bjacot\AppData\Local\Programs\Microsoft VS Code\bin;C:\Program Files (x86)\Common Files\Hilscher GmbH\TLRDecode;C:\Program Files (x86)\BrAutomation\AS6\Bin-en
export AS_BUILD_MODE := Build
export AS_VERSION := 6.5.0.306
export AS_WORKINGVERSION := 6.0
export AS_COMPANY_NAME :=  
export AS_USER_NAME := BJacot
export AS_PATH := C:/Program Files (x86)/BrAutomation/AS6
export AS_BIN_PATH := C:/Program Files (x86)/BrAutomation/AS6/Bin-en
export AS_PROJECT_PATH := C:/Projects/BR/AS/6/Desk/AS6BaseProjectwGitHub
export AS_PROJECT_NAME := baseProject
export AS_SYSTEM_PATH := C:/Program\ Files\ (x86)/BrAutomation/AS6/AS/System
export AS_VC_PATH := C:/Program\ Files\ (x86)/BrAutomation/AS6/AS/VC
export AS_TEMP_PATH := C:/Projects/BR/AS/6/Desk/AS6BaseProjectwGitHub/Temp
export AS_CONFIGURATION := Config1
export AS_BINARIES_PATH := C:/Projects/BR/AS/6/Desk/AS6BaseProjectwGitHub/Binaries
export AS_GNU_INST_PATH := C:/Program\ Files\ \(x86\)/BrAutomation/AS6/AS/GnuInst/V11.3.0
export AS_GNU_BIN_PATH := C:/Program\ Files\ \(x86\)/BrAutomation/AS6/AS/GnuInst/V11.3.0/6.0/bin
export AS_GNU_INST_PATH_SUB_MAKE := C:/Program Files (x86)/BrAutomation/AS6/AS/GnuInst/V11.3.0
export AS_GNU_BIN_PATH_SUB_MAKE := C:/Program Files (x86)/BrAutomation/AS6/AS/GnuInst/V11.3.0/6.0/bin
export AS_INSTALL_PATH := C:/Program\ Files\ \(x86\)/BrAutomation/AS6
export WIN32_AS_PATH := "C:\Program Files (x86)\BrAutomation\AS6"
export WIN32_AS_BIN_PATH := "C:\Program Files (x86)\BrAutomation\AS6\Bin-en"
export WIN32_AS_PROJECT_PATH := "C:\Projects\BR\AS\6\Desk\AS6BaseProjectwGitHub"
export WIN32_AS_SYSTEM_PATH := "C:\Program Files (x86)\BrAutomation\AS6\AS\System"
export WIN32_AS_VC_PATH := "C:\Program Files (x86)\BrAutomation\AS6\AS\VC"
export WIN32_AS_TEMP_PATH := "C:\Projects\BR\AS\6\Desk\AS6BaseProjectwGitHub\Temp"
export WIN32_AS_BINARIES_PATH := "C:\Projects\BR\AS\6\Desk\AS6BaseProjectwGitHub\Binaries"
export WIN32_AS_GNU_INST_PATH := "C:\Program Files (x86)\BrAutomation\AS6\AS\GnuInst\V11.3.0"
export WIN32_AS_GNU_BIN_PATH := "C:\Program Files (x86)\BrAutomation\AS6\AS\GnuInst\V11.3.0\bin"
export WIN32_AS_INSTALL_PATH := "C:\Program Files (x86)\BrAutomation\AS6"

.suffixes:

ProjectMakeFile:

	@'$(AS_BIN_PATH)/BR.AS.AnalyseProject.exe' '$(AS_PROJECT_PATH)/baseProject.apj' -t '$(AS_TEMP_PATH)' -c '$(AS_CONFIGURATION)' -o '$(AS_BINARIES_PATH)'   -sfas -buildMode 'Build'   

