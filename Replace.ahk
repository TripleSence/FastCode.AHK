;/*
;===========================================
;  Replace - Hotstring commands set-up for FastCode AHK Library.
;  https://www.autohotkey.com/boards/viewtopic.php?f=6&t=107165
;  https://github.com/TripleSence/FastCode.AHK  
;
;  Author  : MostWanted (TripleSence)
;  Version : 1.5
;  Date    : 2022-08-14
;
;  Usage:  (required AHK v1.1.31+)
;  1. Contains functions with the most used commands, so that coders can just use functions to make simple AHK coding. 
;  2. Zip file also comes with an AHK file called "Replace" that allows you to simplify the input of functions to speed-up coding.
;  3. When test is successful, you may copy the code
;  4. To start using FastCode, don't forget to include the library into the code with the "#Include" command.
;  5. Global variables related to functions, that need to be created in scripts: winname, btnname, timeifwin, messagetext, text_keys, menu1, submenu1. Example of usage: put "Global winname, btnname, timeifwin, messagetext, text_keys, menu1, submenu1, sleeptime" in the beginning of the script, that you create
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

;User interface START
GuiRight := SizeRight - 300
Button_Right := SizeRight - 200
Button_Bottom := SizeBottom - 10
Gui, 1: Color, cFFFFFF
;List of commands in user interface START
Gui, Add, ListView, w300 ReplaceListView r15 Grid, Hotstring|Description  
LV_Add("", "wwa.", "ads function of WAIT for Window")
LV_Add("", "ifwa.", "ads function of WAIT for POSSIBLE Window")
LV_Add("", "wba.", "ads function of Waiting for ENABLED Button")
LV_Add("", "wbv.", "ads function of Waiting for VISSIBLE Button")
LV_Add("", "wa.", "ads function of ACTIVATE Window")
LV_Add("", "", "")
LV_Add("", "click.", "ads function of CLICK on Button")
LV_Add("", "close.", "ads function of CLOSE a Window")
LV_Add("", "focus.", "ads function of FOCUS on Button")
LV_Add("", "", "")
LV_Add("", "wms.", "ads function of SELECT Menu")
LV_Add("", "sn.", "ads function of SEND some Text/Keys")
LV_Add("", "sl.", "ads function of HOLD for some period of time")
LV_Add("", "msg.", "ads function of pop-up some MESSAGE box")
LV_Add("", "", "")
Loop % LV_GetCount()
{
   LV_Modify(A_Index, "AutoHdr")  ; Select each row whose first field contains the filter-text.
}
;List of commands in user interface FINISH

YPos += 50
GuiBottom := SizeBottom - YPos - 1
TitlePos := YPos - 21
ButtonPos := YPos - 25
Gui, 1: Font, w700 c000000
Gui, 1: Font, c000000
Gui, 1: Add, Button, w60 h30, &Exit app
Gui, 1: +AlwaysOnTop -Sysmenu +Caption +ToolWindow +Border
Gui, 1: Show, x1300 y150, Replace Script 1.5 - by TripleSence
return



2Button+:
Gui, 2: Destroy
Gui, 1: Show, NoActivate x1300 y300, Replace Script 1.5 - by TripleSence
return

ButtonExitapp:
2ButtonX:
ExitApp
;User interface FINISH

;Hotstrings START

;Hotstring that prepares code for "activate specific window" function START
:*:wa.::
(
;activate specific window START
winname := "WindowName" ;window name/class ;window name/class
btnname := "ButtonName" ;button class/text ;button class/text
Window.activate() ;function that activates specific window and then specific button
;activate specific window FINISH


)
;Hotstring that prepares code for "activate specific window" function FINISH


;Hotstring that prepares code for "waiting for visible button" function START
:*:wbv.::
(
;waiting for visible button START
winname := "WindowName" ;window name/class
btnname := "ButtonName" ;button class/text
Button.wait_visible() ; function that waits for specific visible button
;waiting for visible button FINISH


)
;Hotstring that prepares code for "waiting for visible button" function FINISH


;Hotstring that prepares code for "waiting for active button" function START
:*:wba.::
(
;waiting for active button START
winname := "WindowName" ;window name/class
btnname := "ButtonName" ;button class/text
Button.wait_active() ;function that waits for specific active button
;waiting for active button FINISH


)
;Hotstring that prepares code for "waiting for active button" function FINISH


;Hotstring that prepares code for "wait for possible window" function START
:*:ifwa.::
(
;wait for possible window START
winname := "WindowName" ;window name/class
btnname := "ButtonName" ;button class/text
timeifwin := "SLEEPTIME" ;how much time to wait for possible window, for example "300" (0.3 miliseconds)
Window.possible() ;function that waits for possible window and button inside and click on it
;wait for possible window FINISH


)
;Hotstring that prepares code for "wait for possible window" function FINISH


;Hotstring that prepares code for "wait for specific window" function START
:*:wwa.::
(
;wait for specific window START
winname := "WindowName" ;window name/class
btnname := "ButtonName" ;button class/text
Window.wait() ;function that waits for specific window and then specific button inside of it
;wait for specific window FINISH


)
;Hotstring that prepares code for "wait for specific window" function FINISH


;Hotstring that prepares code for "hold for sometime" function START
:*:sl.::
(
;hold for sometime START
sleeptime := "SLEEPTIME" ;time to wait. put a number, for example "300" (0.3 miliseconds)
Wait() ;function that holds script performance for special period of time
;hold for sometime FINISH


)
;Hotstring that prepares code for "hold for sometime" function FINISH


;Hotstring that prepares code for "click on specific button" function START
:*:click.::
(
;click on specific button START;
winname := "WindowName" ;window name/class
btnname := "ButtonName" ;button class/text
Button.click() ;function that clicks on specific button in specific window
;click on specific button FINISH;


)
;Hotstring that prepares code for "click on specific button" function FINISH


;Hotstring that prepares code for "close specific window" function START
:*:close.::
(
;close specific window START
winname := "WindowName" ;window name/class
Window.close() ;function that closes specific window 
;close specific window FINISH


)
;Hotstring that prepares code for "close specific window" function FINISH


;Hotstring that prepares code for "focus on specific button" function START
:*:focus.::
(
;focus on specific button START
winname := "WindowName" ;window name/class
btnname := "ButtonName" ;button class/text
Button.focus() ;function that focuses cursor on specific button in specific window
;focus on specific button FINISH


)
;Hotstring that prepares code for "focus on specific button" function FINISH


;Hotstring that prepares code for "select specific menu" function START
:*:wms.::
(
;select specific menu START
winname := "WindowName" ;window name/class
menu1 := "MenuIteamName" ;menu item name, for example "File"
submenu1 := "SubMenuItemName" ;submenu item name, for example "New"
menu_select() ;finction that selects specific item of menu of the specific window
;select specific menu FINISH


)
;Hotstring that prepares code for "select specific menu" function FINISH


;Hotstring that prepares code for "send some text or keys combination" function START
:*:sn.::
(
;send some text or keys combination START
text_keys := "SomeText" ;text or keys compination to send, for example "Hi!" or "^m" (Ctr+M combination)
Send() ;function that sends some text or keys combination
;send some text or keys combination FINISH


)
;Hotstring that prepares code for "send some text or keys combination" function FINISH


;Hotstring that prepares code for "Show message box with text" function START
:*:msg.::
(
;Show message box with text START
messagetext := "TextHere" ;text to show in message box
ShowMessage() ;function that shows message box with specific text inside
;Show message box with text FINISH


)
;Hotstring that prepares code for "Show message box with text" function FINISH
;Hotstrings FINISH