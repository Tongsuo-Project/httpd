# Microsoft Developer Studio Project File - Name="mod_brotli" - Package Owner=<4>
# Microsoft Developer Studio Generated Build File, Format Version 6.00
# ** DO NOT EDIT **

# TARGTYPE "Win32 (x86) Dynamic-Link Library" 0x0102

CFG=mod_brotli - Win32 Release
!MESSAGE This is not a valid makefile. To build this project using NMAKE,
!MESSAGE use the Export Makefile command and run
!MESSAGE 
!MESSAGE NMAKE /f "mod_brotli.mak".
!MESSAGE 
!MESSAGE You can specify a configuration when running NMAKE
!MESSAGE by defining the macro CFG on the command line. For example:
!MESSAGE 
!MESSAGE NMAKE /f "mod_brotli.mak" CFG="mod_brotli - Win32 Release"
!MESSAGE 
!MESSAGE Possible choices for configuration are:
!MESSAGE 
!MESSAGE "mod_brotli - Win32 Release" (based on "Win32 (x86) Dynamic-Link Library")
!MESSAGE "mod_brotli - Win32 Debug" (based on "Win32 (x86) Dynamic-Link Library")
!MESSAGE 

# Begin Project
# PROP AllowPerConfigDependencies 0
# PROP Scc_ProjName ""
# PROP Scc_LocalPath ""
CPP=cl.exe
MTL=midl.exe
RSC=rc.exe

!IF  "$(CFG)" == "mod_brotli - Win32 Release"

# PROP BASE Use_MFC 0
# PROP BASE Use_Debug_Libraries 0
# PROP BASE Output_Dir "Release"
# PROP BASE Intermediate_Dir "Release"
# PROP BASE Target_Dir ""
# PROP Use_MFC 0
# PROP Use_Debug_Libraries 0
# PROP Output_Dir "Release"
# PROP Intermediate_Dir "Release"
# PROP Ignore_Export_Lib 0
# PROP Target_Dir ""
# ADD BASE CPP /nologo /MD /W3 /O2 /D "WIN32" /D "NDEBUG" /D "_WINDOWS" /D "HAVE_ZUTIL_H" /FD /c
# ADD CPP /nologo /MD /W3 /O2 /Oy- /Zi /I "../../include" /I "../../srclib/apr/include" /I "../../srclib/apr-util/include" /I "../../srclib/brotli/include" /I "../../srclib/brotli/c/include" /D "NDEBUG" /D "WIN32" /D "_WINDOWS" /Fd"Release\mod_brotli_src" /FD /c
# ADD BASE MTL /nologo /D "NDEBUG" /win32
# ADD MTL /nologo /D "NDEBUG" /mktyplib203 /win32
# ADD BASE RSC /l 0x409 /d "NDEBUG"
# ADD RSC /l 0x409 /fo"Release/mod_brotli.res" /i "../../include" /i "../../srclib/apr/include" /d "NDEBUG" /d BIN_NAME="mod_brotli.so" /d LONG_NAME="brotli_module for Apache"
BSC32=bscmake.exe
# ADD BASE BSC32 /nologo
# ADD BSC32 /nologo
LINK32=link.exe
# ADD BASE LINK32 kernel32.lib /nologo /subsystem:windows /dll /out:".\Release\mod_brotli.so" /libpath:"../../srclib/brotli" /base:@..\..\os\win32\BaseAddr.ref,mod_brotli.so
# ADD LINK32 kernel32.lib brotlicommon-static.lib brotlienc-static.lib /nologo /subsystem:windows /dll /incremental:no /debug /out:".\Release\mod_brotli.so" /libpath:"../../srclib/brotli" /base:@..\..\os\win32\BaseAddr.ref,mod_brotli.so /opt:ref
# Begin Special Build Tool
TargetPath=.\Release\mod_brotli.so
SOURCE="$(InputPath)"
PostBuild_Desc=Embed .manifest
PostBuild_Cmds=if exist $(TargetPath).manifest mt.exe -manifest $(TargetPath).manifest -outputresource:$(TargetPath);2
# End Special Build Tool

!ELSEIF  "$(CFG)" == "mod_brotli - Win32 Debug"

# PROP BASE Use_MFC 0
# PROP BASE Use_Debug_Libraries 1
# PROP BASE Output_Dir "Debug"
# PROP BASE Intermediate_Dir "Debug"
# PROP BASE Target_Dir ""
# PROP Use_MFC 0
# PROP Use_Debug_Libraries 1
# PROP Output_Dir "Debug"
# PROP Intermediate_Dir "Debug"
# PROP Ignore_Export_Lib 0
# PROP Target_Dir ""
# ADD BASE CPP /nologo /MDd /W3 /EHsc /Zi /Od /D "WIN32" /D "_DEBUG" /D "_WINDOWS" /FD /c
# ADD CPP /nologo /MDd /W3 /EHsc /Zi /Od /I "../../include" /I "../../srclib/apr/include" /I "../../srclib/apr-util/include" /I "../../srclib/brotli/include" /I "../../srclib/brotli/c/include" /D "_DEBUG" /D "WIN32" /D "_WINDOWS" /D "HAVE_ZUTIL_H" /Fd"Debug\mod_brotli_src" /FD /c
# ADD BASE MTL /nologo /D "_DEBUG" /win32
# ADD MTL /nologo /D "_DEBUG" /mktyplib203 /win32
# ADD BASE RSC /l 0x409 /d "_DEBUG"
# ADD RSC /l 0x409 /fo"Debug/mod_brotli.res" /i "../../include" /i "../../srclib/apr/include" /d "_DEBUG" /d BIN_NAME="mod_brotli.so" /d LONG_NAME="brotli_module for Apache"
BSC32=bscmake.exe
# ADD BASE BSC32 /nologo
# ADD BSC32 /nologo
LINK32=link.exe
# ADD BASE LINK32 kernel32.lib /nologo /subsystem:windows /dll /incremental:no /debug /out:".\Debug\mod_brotli.so" /libpath:"../../srclib/brotli" /base:@..\..\os\win32\BaseAddr.ref,mod_brotli.so
# ADD LINK32 kernel32.lib brotlicommon-static.lib brotlienc-static.lib /nologo /subsystem:windows /dll /incremental:no /debug /out:".\Debug\mod_brotli.so" /libpath:"../../srclib/brotli" /base:@..\..\os\win32\BaseAddr.ref,mod_brotli.so
# Begin Special Build Tool
TargetPath=.\Debug\mod_brotli.so
SOURCE="$(InputPath)"
PostBuild_Desc=Embed .manifest
PostBuild_Cmds=if exist $(TargetPath).manifest mt.exe -manifest $(TargetPath).manifest -outputresource:$(TargetPath);2
# End Special Build Tool

!ENDIF 

# Begin Target

# Name "mod_brotli - Win32 Release"
# Name "mod_brotli - Win32 Debug"
# Begin Source File

SOURCE=.\mod_brotli.c
# End Source File
# Begin Source File

SOURCE=..\..\build\win32\httpd.rc
# End Source File
# End Target
# End Project