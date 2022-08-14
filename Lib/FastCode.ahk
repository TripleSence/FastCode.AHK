;/*
;===========================================
;  FastCode - simplifying tool for coders
;  https://www.autohotkey.com/boards/viewtopic.php?f=6&t=107165
;  https://github.com/TripleSence/FastCode.AHK  
;
;  Author  : MostWanted (TripleSence)
;  Version : 1.5
;  Date    : 2022-08-13
;
;  Usage:  (required AHK v1.1.31+)
;  1. Contains functions with the most used commands, so that coders can just use functions to make simple AHK coding. 
;  2. Zip file also comes with an AHK file called "Replace" that allows you to simplify the input of functions to speed-up coding.
;  3. When test is successful, you may copy the code
;  4. To start using FastCode, don't forget to include the library into the code with the "#Include" command.
;  5. Global variables related to functions, that need to be created in scripts: winname, btnname, timeifwin, messagetext, text_keys, menu1, submenu1. Example of usage: put "Global winname, btnname, timeifwin, messagetext, text_keys, menu1, submenu1" in the beginning of the script, that you create
;===========================================
;*/

;Functions list START
;Class that contains functions that work with Windows of apps START
class Window {
;function will wait for window and some visible button inside
wait() {
WinWaitActive, %winname% ;wait for window
Sleep, 200
Loop {
ControlGet bEnabled, Visible,, %btnname%, %winname%
If bEnabled
Break
}
}
;end of function

;function will wait for possible window and will click on it
possible() {
Sleep, %timeifwin%
If WinActive(winname) ;server connection window
{
Loop {
ControlGet bEnabled, Visible,, %btnname%, %winname%
If bEnabled
Break
}
Sleep, 400
ControlClick, %btnname%, %winname%
}
}
;end of function

;function will activate specific window from background and some visible button inside
activate() {
WinActivate, %winname% ;activate window
WinWaitActive, %winname% ;wait for window
Sleep, 200
Loop {
ControlGet bEnabled, Visible,, %btnname%, %winname%
If bEnabled
Break
}
}
;end of function

;function will close specific window
close() {
Sleep, 300
WinClose, %winname%
}
;end of function
}
;Class that contains functions that work with Windows of apps FINISH


;function holds a script performance for some specific time in miliseconds
Wait() {
Sleep, %sleeptime%
}
;end of function


;Class that contains functions that work with Buttons of apps START
class Button {
;function will wait for some visible button inside of specific winow
wait_visible() {
Sleep, 300 ;hold for 0.3 sec 
Loop {
ControlGet bEnabled, Visible,, %btnname%, %winname%
If bEnabled
Break
}
}
;end of function

;function will wait for some enabled (active) button inside of specific winow
wait_active() {
Sleep, 300 ;hold for 0.3 sec 
Loop {
ControlGet bEnabled, Enabled,, %btnname%, %winname%
If bEnabled
Break
}
}
;end of function

;function will click on specific button of specific window
click() {
Sleep, 300 ;hold for 0.3 sec 
ControlClick, %btnname%, %winname%
}
;end of function

;function will focus on specific button of specific window
focus() {
Sleep, 300 ;hold for 0.3 sec 
ControlFocus, %btnname%, %winname%
}
;end of function
}
;Class that contains functions that work with Buttons of apps FINISH


;function will select needed menu in the window
menu_select() {
Sleep, 300 ;hold for 0.3 sec 
WinMenuSelectItem, %winname%, , %menu1%, %submenu1%
}
;end of function

;function will send needed text or keys combination
Send() {
Sleep, 300 ;hold for 0.3 sec 
Send %text_keys%
}
;end of function

;function will send needed text or keys combination
ShowMessage() {
Sleep, 300 ;hold for 0.3 sec 
Msgbox, %messagetext%
}
;end of function
;Functions list FINISH