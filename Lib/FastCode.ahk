;/*
;===========================================
;  FastCode - simplifying tool for coders
;  https://www.autohotkey.com/boards/viewtopic.php?f=6&t=107165
;
;  Author  : MostWanted
;  Version : 1.4
;  Date    : 2022-08-10
;
;  Usage:  (required AHK v1.1.31+)
;  1. Contains functions with the most used commands, so that coders can just use functions to make simple AHK coding. 
;  2. Zip file also comes with an AHK file called "Replace" that allows you to simplify the input of functions to speed-up coding.
;  3. When test is successful, you may copy the code
;  4. To start using FastCode, don't forget to include the library into the code with the "#Include" command.
;
;===========================================
;*/
;functions

;function will wait for window and some visible button inside
wait_window(winname, btnname) {
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
wait_possible_window(winname, btnname, timeifwin) {
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
activate_some_window(winname, btnname) {
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
close_some_window(winname) {
Sleep, 300
WinClose, %winname%
}
;end of function

;function holds a script performance for some specific time in miliseconds
sleep_some_time(sleeptime) {
Sleep, %sleeptime%
}
;end of function

;function will wait for some visible button inside of specific winow
wait_button_visible(btnname, winname) {
Sleep, 300 ;hold for 0.3 sec 
Loop {
ControlGet bEnabled, Visible,, %btnname%, %winname%
If bEnabled
Break
}
}
;end of function

;function will wait for some enabled (active) button inside of specific winow
wait_button_enabled(btnname, winname) {
Sleep, 300 ;hold for 0.3 sec 
Loop {
ControlGet bEnabled, Enabled,, %btnname%, %winname%
If bEnabled
Break
}
}
;end of function

;function will click on specific button of specific window
click_button(btnname, winname) {
Sleep, 300 ;hold for 0.3 sec 
ControlClick, %btnname%, %winname%
}
;end of function

;function will focus on specific button of specific window
focus_button(btnname, winname) {
Sleep, 300 ;hold for 0.3 sec 
ControlFocus, %btnname%, %winname%
}
;end of function

;function will select needed menu in the window
select_needed_menu(winname, menu1, submenu1) {
Sleep, 300 ;hold for 0.3 sec 
WinMenuSelectItem, %winname%, , %menu1%, %submenu1%
}
;end of function

;function will send needed text or keys combination
type_send_something(sometext) {
Sleep, 300 ;hold for 0.3 sec 
Send %sometext%
}
;end of function

;function will send needed text or keys combination
some_message_box(messagetext) {
Sleep, 300 ;hold for 0.3 sec 
Msgbox, %messagetext%
}
;end of function