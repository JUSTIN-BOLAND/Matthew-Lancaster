; ---------------------------------------------------------------
; I MADE MENU ITEM INTO INCLUDE FILE IN 3 PART 
; 01. INTRO SETUP MENU
; 02. THE MENU ROUTINE
; 03. ANY ROUTINE THE MENU USE
; ---------------------------------------------------------------
; SAVER OF RSI INJURY AND MORE ACCURATE
; THE INCLUDE FILE ARE SAME FOLDER
; ---------------------------------------------------------------
; FROM __ Sun 09-Jun-2019 07:03:00 __ Clipboard Count = 024
; TO   __ Sun 09-Jun-2019 09:50:00 __ Clipboard Count = 139 __ NEAR 3 HOUR 
; AND THEN 
; TO   __ Sun 09-Jun-2019 17:48:00 __ Clipboard Count = 452 __ 10 HOURING 45 MINUTE
; ---------------------------------------------------------------


; MsgBox You selected %A_ThisMenuItem% from the menu %A_ThisMenu%.

; A_ThisMenuItem=RELOAD ALL NET - VB CODE.exe
; A_ThisMenuItem=KILL   ALL NET - VB CODE.exe
; TIMER_KILL_RELOAD_ALL_NET_ARRAY_CODE_EXE

if A_ThisMenuItem=RELAUNCH CODE
{
	Run, "C:\SCRIPTER\SCRIPTER CODE -- AUTOHOTKEY\Autokey -- 28-AUTOHOTKEYS SET RELAUNCH CODE.ahk"
	Process, Close,% DllCall("GetCurrentProcessId")
}


if A_ThisMenuItem=RESTORE_VB_KEEP_RUNNER AND ELITESPY -- RIGHT(Ctrl)+F1
{
	GOSUB SUB_RESTORE_VB_KEEP_RUNNER
	GOSUB SUB_RESTORE_ELITESPY
}

if A_ThisMenuItem=Terminate Script
	Process, Close,% DllCall("GetCurrentProcessId")

if A_ThisMenuItem=Terminate All AutoHotKey.exe -- LEFT(Ctrl)+WInKEY+ESCAPE
{
	; Run, "C:\SCRIPTER\SCRIPTER CODE -- VBS\VBS 39-KILL PROCESS.VBS" /F /IM AutoHotKey.exe /T , , Max
	GOSUB TERMINATE_ALL_AUTOHOTKEYS_SCRIPT_BY_EXE_NAME
	
	;  ----------------------------------------------------------
	; PROBLEM HERE IF PROGRAM THAT CALL THE BATCH FILE IS KILL SO IS THEN BATCH FILE
	; AND WE GET OVER THAT BY GO EXTRA VIA VBSCRIPT ANOTHER FILE
	; COULD OF RUN A  LOOP AND KILL BUT TRY NOT LOSE OWN ONE FIRST
	; [ Saturday 14:55:00 Pm_02 March 2019 ]
	;  ----------------------------------------------------------

	;  ----------------------------------------------------------
	; OTHER OPTION SET PROCESS KILLER
	;  ----------------------------------------------------------
	; Run, BAT_03_PROCESS_KILLER.BAT /F /IM AutoHotKey.exe /T , , Max
	; Run, %ComSpec% /k ""BAT_03_PROCESS_KILLER.BAT" "/F" "/IM" "AutoHotKey.exe" "/T"" , , Max
	; Process, Close, AutoHotKey.exe
	;  ----------------------------------------------------------

	; AUTO GENERATED FILE BY HERE VISUAL BASIC ORIGINAL LONG BEFORE AUTOHOTKEY WANT
	; D:\VB6\VB-NT\00_Best_VB_01\VB_KEEP_RUNNER\VB_KEEP_RUNNER.exe
	; D:\VB6\VB-NT\00_Best_VB_01\EliteSpy\EliteSpy.exe
	; -------------------------------------------------------------------
	; AND USED BY HERE
	; LOT OF AUTOHOTKEYS TRAY MENU ITEM
	; -------------------------------------------------------------------
	; [ Saturday 14:52:10 Pm_02 March 2019 ]
	; -------------------------------------------------------------------
	; EDITOR COPY PASTE FROM VBS 39-KILL PROCESS.VBS
	; THIS FILE BECAME USE BY
	; LOT OF AUTOHOTKEYS TRAY MENU ITEM
	; AND THEY USE IT HERE THIS ONE
	; C:\SCRIPTER\SCRIPTER CODE -- AUTOHOTKEY\BAT_03_PROCESS_KILLER.BAT
	; ORIGINAL AT HERE LOCATION 
	; C:\SCRIPTER\SCRIPTER CODE -- VBS\VBS 39-KILL PROCESS.VBS
	; AND MOVED HERE MAYBE 
	; -------------------------------------------------------------------
	; MOST LIKELY TRY AND KEEP IN SYNC LATER
	; EXCEPT THE AUTO GENERATOR
	; -------------------------------------------------------------------
}

; 01 OF 04
; ---------------------------------------------------------------
; ---------------------------------------------------------------
if A_ThisMenuItem=RELOAD    ALL NET - VB CODE.exe
{
	GOSUB RELOAD_OR_KILL_PATH_ARRAY_SET_NETWORK_ALL_CODE_01_OF_04
}

; 02 OF 04
; ---------------------------------------------------------------
; ---------------------------------------------------------------
if A_ThisMenuItem=TERMINATE ALL NET - VB CODE.exe
{
	GOSUB RELOAD_OR_KILL_PATH_ARRAY_SET_NETWORK_ALL_CODE_02_OF_04
}

; 03 OF 04
; ---------------------------------------------------------------
; ---------------------------------------------------------------
if A_ThisMenuItem=RELOAD    All AutoHotKey Network.exe
{
	GOSUB RELOAD_OR_KILL_PATH_ARRAY_SET_NETWORK_ALL_CODE_03_OF_04
}

; 04 OF 04
; ---------------------------------------------------------------
; ---------------------------------------------------------------
if A_ThisMenuItem=TERMINATE All AutoHotKey Network.exe
{
	GOSUB RELOAD_OR_KILL_PATH_ARRAY_SET_NETWORK_ALL_CODE_04_OF_04
}


if A_ThisMenuItem=Pause __ Debby Hall
{
	IF DEBBY_HALL_PAUSE=TRUE
	{
		DEBBY_HALL_PAUSE=FALSE
		SOUNDBEEP 5000,200
	}
	ELSE
	{
		DEBBY_HALL_PAUSE=TRUE
		SOUNDBEEP 1000,200
	}
}