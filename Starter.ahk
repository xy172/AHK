#NoEnv  ; Recommended for performance and compatibility with future AutoHotkey releases.
;#Warn  ; Enable warnings to assist with detecting common errors.
SendMode Input  ; Recommended for new scripts due to its superior speed and reliability.
SetWorkingDir %A_MyDocuments%\AutoHotkey\Lib\  ; Ensures a consistent starting directory.
#SingleInstance Force  ; Replaces the old instance automatically.
SetBatchLines -1  ; Run the script at maximum speed.
Menu, Tray, Tip, XY's AHK scripts. ; Changes tray menu tooltip.

global appVar := ["Default","Period"] ; Global Variable for keeping track of current menu selections.
global winid := ""
#Include, %A_MyDocuments%\AutoHotkey\Lib\autoExecute.ahk

;Start of hotkeys

^#F5:: restarter()

$CapsLock:: capsLockToggler()
$NumLock:: numLocktoggler()
$ScrollLock:: scrollLockToggler()
$SC121:: calcuToggler() ;Calculator key
AppsKey:: appMenu()

$SC16D:: macroMenu() ;Media Player key (bound to cherry key on work KB)

$XButton1:: ^c
$XButton2:: appMenu_paste()

$NumpadDot:: appMenu_numpadDot()

$Media_Play_Pause:: Volume_Mute
$Media_Prev:: Volume_Down
$Media_Next:: Volume_Up

$Volume_Mute:: Media_Play_Pause
$Volume_Down:: Media_Prev
$Volume_Up:: Media_Next
