Unicode true
Name "InnoAllInOne"
OutFile "InnoAllInOneInstallerbyRikkoMats.exe"
!include "MUI2.nsh"
!insertmacro MUI_PAGE_WELCOME
!insertmacro MUI_PAGE_LICENSE "AGPL.txt"
!insertmacro MUI_PAGE_DIRECTORY
!insertmacro MUI_PAGE_INSTFILES
!insertmacro MUI_PAGE_FINISH
!insertmacro MUI_LANGUAGE "English"
!define SND_ASYNCLOOP 0x0009
BrandingText "InnoALLINONE"

;--------------------------------
; Required for big packages only
 
ReserveFile "${NSISDIR}\Plugins\x86-unicode\System.dll"
Function .onInit
  InitPluginsDir
FunctionEnd

Section 01
  SetOutPath "$INSTDIR"
  File /nonfatal /r "E:\InnoAllInOne\*.*"
SectionEnd