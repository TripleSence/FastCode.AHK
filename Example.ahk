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



return
;Automation code END

;Subroutines list START
;sburoutine of waitng for specific window and button of that window
wait_for_win:
wait_window(window_name, button_name)
return

wait_for_possible_win:
wait_possible_window(window_name, button_name, time_for_wait)
return

;sburoutine of waitng for specific window and button of that window
active_some_win:
activate_some_window(window_name, button_name)
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
sleep_some_time(sleeptime)
return 

;sburoutine will close specific window
close_some_win:
close_some_window(window_name)
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
;Subroutines list END