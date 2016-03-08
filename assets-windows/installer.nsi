!include "MUI2.nsh"

Name "Pushatvde"
BrandingText "aluxian.com"

# set the icon
!define MUI_ICON "icon.ico"

# define the resulting installer's name:
OutFile "..\dist\PushatvdeSetup.exe"

# set the installation directory
InstallDir "$PROGRAMFILES\Pushatvde\"

# app dialogs
!insertmacro MUI_PAGE_WELCOME
!insertmacro MUI_PAGE_INSTFILES

!define MUI_FINISHPAGE_RUN_TEXT "Start Pushatvde"
!define MUI_FINISHPAGE_RUN "$INSTDIR\Pushatvde.exe"

!insertmacro MUI_PAGE_FINISH
!insertmacro MUI_LANGUAGE "English"

# default section start
Section

  # delete the installed files
  RMDir /r $INSTDIR

  # define the path to which the installer should install
  SetOutPath $INSTDIR

  # specify the files to go in the output path
  File /r ..\build\Pushatvde\win32\*

  # create the uninstaller
  WriteUninstaller "$INSTDIR\Uninstall Pushatvde.exe"

  # create shortcuts in the start menu and on the desktop
  CreateShortCut "$SMPROGRAMS\Pushatvde.lnk" "$INSTDIR\Pushatvde.exe"
  CreateShortCut "$SMPROGRAMS\Uninstall Pushatvde.lnk" "$INSTDIR\Uninstall Pushatvde.exe"
  CreateShortCut "$DESKTOP\Pushatvde.lnk" "$INSTDIR\Pushatvde.exe"

SectionEnd

# create a section to define what the uninstaller does
Section "Uninstall"

  # delete the installed files
  RMDir /r $INSTDIR

  # delete the shortcuts
  Delete "$SMPROGRAMS\Pushatvde.lnk"
  Delete "$SMPROGRAMS\Uninstall Pushatvde.lnk"
  Delete "$DESKTOP\Pushatvde.lnk"

SectionEnd
