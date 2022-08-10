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

;function library with Automation functions
#Include Lib\FastCode.ahk

;Globals variables to use in script
Global window_name, button_name

;Automation code START
;wait for specific window and then specific button
window_name := "new 1 - Notepad++"
button_name := "ToolbarWindow321"
gosub, wait_for_win

;send some text or keys combination
sometext := "Hi, dear!"
gosub, text_key_send

;Show message box with text
messagetext := "done!"
gosub, somemessagebox


return
;Automation code END

;Subroutines list START
;sburoutine of waitng for specific window and button of that window
wait_for_win:
wait_window(window_name, button_name)
return

;sburoutine of waitng for visible button
wait_for_button_visible:
wait_button_visible(button_name, window_name)
return

;sburoutine of waitng for active/enabled button
wait_for_button_enabled:
wait_button_enabled(button_name, window_name)
return

;sburoutine of click on button
button_click:
click_button(button_name, window_name)
return

;sburoutine of focus on button
button_focus:
focus_button(button_name, window_name)
return 

;sburoutine of waitng for specific window and button of that window
sleep_some_time:
Sleep, 300
return 

;sburoutine of selecting needed menu
menu_select:
select_needed_menu(winname, menu1, submenu1)
return 

;sburoutine of selecting needed menu
text_key_send:
type_send_something(sometext)
return 

;sburoutine of selecting needed menu
somemessagebox:
some_message_box(messagetext)
return 
;Subroutines list START