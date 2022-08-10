;/*
;===========================================
;  Replace - Hotstring commands set-up for FastCode AHK Library.
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

GuiRight := SizeRight - 300
Button_Right := SizeRight - 200
Button_Bottom := SizeBottom - 10
Gui, 1: Color, cFFFFFF

Gui, Add, ListView, w300 ReplaceListView r12 Grid, Hotstring|Description  
LV_Add("", "wwa.", "ads function of waiting for window")
LV_Add("", "wa.", "ads function of activating needed window")
LV_Add("", "ifwa.", "ads function of waiting for possible window")
LV_Add("", "wbv.", "ads function of waiting for visible button")
LV_Add("", "wba.", "ads function of waiting for active/enabled button")
LV_Add("", "sl.", "ads function of sleep for 0.3 sec")
LV_Add("", "click.", "ads function of click on button")
LV_Add("", "close.", "ads function of closing needed window")
LV_Add("", "focus.", "ads function of focus on button")
LV_Add("", "wms.", "ads function of selecting menu")
LV_Add("", "sn.", "ads function of sending some text/keys")
LV_Add("", "msg.", "ads function of pop-up message box")
Loop % LV_GetCount()
{
   LV_Modify(A_Index, "AutoHdr")  ; Select each row whose first field contains the filter-text.
}


YPos += 50
GuiBottom := SizeBottom - YPos - 1
TitlePos := YPos - 21
ButtonPos := YPos - 25
Gui, 1: Font, w700 c000000
Gui, 1: Font, c000000
Gui, 1: Add, Button, w60 h30, &Exit app
Gui, 1: +AlwaysOnTop -Sysmenu +Caption +ToolWindow +Border
Gui, 1: Show, x1300 y150, Replace Script 1.4 - by MostWanted
return



2Button+:
Gui, 2: Destroy
Gui, 1: Show, NoActivate x1300 y300, Replace Script 1.4 - by MostWanted
return

ButtonExitapp:
2ButtonX:
ExitApp

:*:wa.::
(
;activate specific window and then specific button
window_name := "WindowName"
button_name := "ButtonName"
gosub, active_some_win


)
:*:wbv.::
(
;waiting for visible button
window_name := "WindowName"
button_name := "ButtonName"
gosub, wait_for_button_visible


)
:*:wba.::
(
;waiting for active button
window_name := "WindowName"
button_name := "ButtonName"
gosub, wait_for_button_enabled


)
:*:ifwa.::
(
;wait for possible window and button inside and click on it
window_name := "WindowName"
button_name := "ButtonName"
time_for_wait := "SLEEPTIME"
gosub, wait_for_possible_win


)
:*:wwa.::
(
;wait for specific window and then specific button
window_name := "WindowName"
button_name := "ButtonName"
gosub, wait_for_win


)
:*:sl.::
(
;hold for sometime
sleeptime := "SLEEPTIME" ;put number, example 300 = 0.3 miliseconds
gosub, sleep_some_time


)
:*:click.::
(
;click on specific button in specific window
window_name := "WindowName"
button_name := "ButtonName"
gosub, button_click


)
:*:close.::
(
;click on specific button in specific window
window_name := "WindowName"
gosub, close_some_win


)
:*:focus.::
(
;focus on specific button in specific window
window_name := "WindowName"
button_name := "ButtonName"
gosub, button_focus


)
:*:wms.::
(
;select specific menu
window_name := "WindowName"
menu1 := "ButtonName"
submenu1 := "ButtonName"
gosub, menu_select


)
:*:sn.::
(
;send some text or keys combination
sometext := "TextHere"
gosub, text_key_send


)
:*:msg.::
(
;Show message box with text
messagetext := "TextHere"
gosub, somemessagebox


)