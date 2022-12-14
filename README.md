---
permalink: /FastCode.AHK/
title: FastCode.AHK library - boosting speed of coding
---

## A description of what the project is for.
FastCode library is a simple script, based on Autohotkey automation language.
The idea was to simplify and speed-up a coding process. In order to make it as simpler as possible and as fast as possible as well.
I've ended up with creating simple Library, that contains functions with the most commands of AHK that I was using all these years, automating different apps in Windows OS.

## Instructions for how to develop, use, and test the code.

**Usage:**
1. Required AHK v1.1.31+
2. File Replace.AHK that contains Hotstrings to type functions.
3. File FastCode.AHK - simple library that contains functions with most used commands of AHK.
Both files can be amended as per your requirements.

**Benefits:**
1. Speed coding
2. Smooth code
FastCode.AHK can be used independently from Replace.AHK, since Replace.AHK is only kind of tricky file as and addition to the main idea. 

**Example of usage:**
Task:
Let's say you want to program command, that will wait for specific window with specific visible button inside and then proceed further.

**So, before FastCode i was writing code like that:**
```
WinWaitActive, Snipping Tool ahk_class Microsoft-Windows-SnipperToolbar ;wait for window
Sleep, 200
Loop {
ControlGet bEnabled, Visible,, Button3, Snipping Tool ahk_class Microsoft-Windows-SnipperToolbar
If bEnabled
Break
}
}
```

**Minuses:**
- it took some time to code
- AHK file at the end contains plenty of lines of code.
- hard to read a code even with comments

## How I do it with FastCode:
![Screenshot of Replace.AHK user interface](https://raw.githubusercontent.com/TripleSence/FastCode.AHK/138be4c97de430afc55c035e5f7e2337088f9d8a/Replace%20GUI.JPG)

1. I run Replace.AHK file, that contains Hotstrings with needed function lines.
2. I type in code editor Hotstring, for example "wwa."

Script Replace.AHK that running in the background replaces the Hostring with next lines of code:
```
;wait for specific window START
winname := "WindowName" ;window name/class
btnname := "ButtonName" ;button class/text
Window.wait() ;function that waits for specific window and then specific button inside of it
;wait for specific window FINISH
```
So, again, "wwa." is my key-phrase for "WinWaitActive" command that encased in FastCode.AHK function.

3. After that I only need to replace "WindowName" and "ButtonName" parameter as per data from WindowSpy.AHK. 
So, for "WindowName" I can use title of the window or class and for "ButtonName" I can use button class or button text.

**As a result I have next final code:**
```
;wait for specific window START
winname := "Snipping Tool" ;window name/class
btnname := "Try Snip & Sketch" ;button class/text
Window.wait() ;function that waits for specific window and then specific button inside of it
;wait for specific window FINISH
```

**instead of:**
```
WinWaitActive, Snipping Tool ahk_class Microsoft-Windows-SnipperToolbar ;wait for window
Sleep, 200
Loop {
ControlGet bEnabled, Visible,, Button3, Snipping Tool ahk_class Microsoft-Windows-SnipperToolbar
If bEnabled
Break
}
}
```
So, now it's much easier for me to read a code and find needed line to amend a code if needed. And also it helps other developers to read my code.

**Minuses:**
1. You need some time to code needed commands in the FastCode.AHK file as per your requirements. I have some prepared, but if you use others, than you just would need to amend it.
2. You need some time to code needed Hotstrings for Replace.AHK file, so that you can write code faster.

**Benefits:**
1. Speed coding
2. Smooth code
3. FastCode.AHK can be used independently from Replace.AHK, since Replace.AHK is only kind of tricky file as and addition to the main idea. 

## Licensing information.

Script share under GNU general public license v3.0. [Details](https://www.gnu.org/licenses/gpl-3.0.en.html)

### Credit and licenses for embedded resources

Script works based on Autohotkey - automation language for Windows. [About Autohotkey](https://www.autohotkey.com/)
