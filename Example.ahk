;OPTIMIZATIONS START
#NoEnv
#MaxHotkeysPerInterval 99000000
#HotkeyInterval 99000000
#KeyHistory 0
ListLines Off
;Process, Priority, , A
;ZGVkaWNhdGVkIHRvIG15IHdpZmUgTGl6YSBCYXNlbmtv
SetBatchLines, -1
SetKeyDelay, -1, -1
SetMouseDelay, -1
SetDefaultMouseSpeed, 0
SetWinDelay, -1
SetControlDelay, -1
SendMode Input
SetTitleMatchMode, 2
;OPTIMIZATIONS END

;Include FastCode.AHK library that includes automation functions to simplify codding
#Include Lib\FastCode.ahk

;Globals variables to use in script, related to functions of FastCode.AHK library
Global winname, btnname, timeifwin, messagetext, text_keys, menu1, submenu1, sleeptime

;Automation code START

;wait for specific window START
winname := "Snipping Tool" ;window name/class
btnname := "Try Snip & Sketch" ;button class/text
Window.wait() ;function that waits for specific window and then specific button inside of it
;wait for specific window FINISH

;Show message box with text START
messagetext := "done!" ;text to show in message box
ShowMessage() ;function that shows message box with specific text inside
;Show message box with text FINISH



return
;Automation code END


