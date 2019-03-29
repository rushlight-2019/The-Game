#Region ;**** Directives created by AutoIt3Wrapper_GUI ****
#AutoIt3Wrapper_Outfile=TheGame.exe
#AutoIt3Wrapper_Outfile_x64=TheGame64.exe
#AutoIt3Wrapper_Compile_Both=y
#AutoIt3Wrapper_UseX64=y
#EndRegion ;**** Directives created by AutoIt3Wrapper_GUI ****
AutoItSetOption("MustDeclareVars", 1)

Global $g_ver = "0.76c 28 Mar 19 Edit title"

#include <Debug.au3>
;_DebugSetup("The Game", True) ; start

;_DebugOut($g_ver)
Global $_debug = @error = 0
Global $TESTING = True

#cs ----------------------------------------------------------------------------
	to do int

	lift instant up not wait to next tick
	see instruction.txt

	0.77   Mar 19 Load / Quit / Demo if level changed warning.

	0.76c 28 Mar 19 Edit title
	0.76b 28 Mar 19 Delay in C or Esc cause by mouses in Msg, added a fix
	0.76a 28 Mar 19 Fix KEY it the bonus over paints it.
	0.76 27 Mar 19 Make Demo work again
	0.75 26 Mar 19 Add Game Title and date
	0.74 26 Mar 19 Edit layout better
	0.73 21 Mar 19 Add game title game screen
	0.72 17 Mar 19 Change High Score
	0.71 17 Mar 19 Fix Edit keys
	0.70 14 Mar 19 Revert to the way I did Start Menu
	0.69 11 Mar 19 Fix hot key in game.
	0.68 10 Mar 19 Fix Torch Edit
	0.67 9 Mar 19 Convert Start Menu to something better
	0.66 3 Mar 19 Objects fixed (Torch)(Missile switch)
	0.65 1 Mar 19 Objects fixed
	0.64 28 Feb 19 Fixed Read
	0.63 27 Feb 19 Setting size
	0.62 26 Feb 19 Bonus
	0.61 25 Feb 19 High Score, Settings.
	0.60 24 Feb 19 Demo Level in startup. Exit to Startup DONE

	0.58 23 Feb 19 Define variables  Fixed the edit screen hide unhide problem
	0.57 11 Feb 19 Letter, need picturs A-Z 0-9 done.  Other?
	0.56 9 Feb 19 Fix Key Torch problems
	0.55 9 Feb 19 Stuck exit ESC
	0.54 8 Feb 19 Load level edit
	Had to change how filename work in edit.  Old way still in game.
	0.53 6 Feb 19 Level skip codes.  Instructions
	0.52 3 Feb 19 Board thing work.
	0.51 2 Feb 19 Hidden moving obj horz
	0.50.3 1 Feb 19 Hidden moving show around you.
	Started 31 Jan 19 - 1 & 2 idea fails.  3 make list of cell to change,
	0.49 20 Dec 19 Tick
	0.48 19 Dec 18 Fix Hor/Ver collision  try 2 OK now
	0.47 29 Nov 18 Hidden walls
	0.46 28 Nov 18 Fix Hor/Ver collision to both switch direction
	0.45 27 Nov 18 Door
	0.44 25 Nov 18 Add ~ functions
	0.43 23 Nov 18 you drop fast  MoveObj first removed you down each round
	Added _debug flag
	0.42 22 Nov 18 ~ Reds Pictures
	0.41 21	Nov 18 Test of edit  - missle better
	0.40 21 Nov 18 Change file type to 1 byte binary
	FileWrite($hlv, Binary(Mid(int($b,1), 1, 1))
	0.39 19 Nov 18 ComboBox Menu Specials
	0.38 19 Nov 18 ComboBox Menu Moving
	0.37 19 Nov 18 ComboBox Menu Moving
	0.36 19 Nov 18 Clear
	0.35 18 Nov 18 Fixed the editscreen reload problem. Problem in my code rest work (later). Found a way around it by delete the Form and recreate on next use
	0.34 17 Nov 18 Load
	0.33 17 Nov 18 Save
	0.32 16 Nov 18 Repeat
	0.31 16 Nov 18 Remove Obj Text from ShowObj -2 -3  to EditShow  Y speed for game.
	0.30 16 Nov 18 Mouse Cursor Edit You Empty
	0.29 13 Nov 18 Misc fixes
	0.28 11 Nov 18 Edit You
	0.27 7 Nov 18 Edit screen start
	0.26 6 Nov 18 Layout Start screen
	0.25 5 Nov 18 Moving wrong, Key remains, moving color need different
	0.24 5 Nov 18 Add 1st screen - Had to make Game Screen on / off without recreating win objects
	0.23 3 Nov 18 Black area 82 x 22
	0.22 31 Oct 18 Moving problem level 2
	0.21 31 Oct 18 Moving Vert & Hoz
	0.20 30 Oct 18 Tap missile on/off
	0.19 30 Oct 18 Fountain change to seeking missile
	0.18 29 Oct 18 Pick up Key & Torch
	0.17 29 Oct 18 Status
	0.16 29 Oct 18 Score
	0.15 28 Oct 18 Lives
	0.14 28 Oct 18 Cycle when DEAD  and display Lines
	0.12 27 Oct 18 Fix Picture location  Opps got it to work
	0.11 26 Oct 18 next level when all diamonds are picked up
	0.10 26 Oct 18 Lift
	0.09 24 Oct 18 Restart.  You move
	0.08 23 Oct 18 Restart. Game map layout.  0,0 Lower Left
	0.07 17 Oct 18 Lift
	0.06 2 Aug 18 Lift  fail back off
	0.05 30 Jul 18 Move You Down  Add Diamonds
	0.04 29 Jul 18 Move You  L & R but not down.
	0.03 1 Jul 18 Add Hot Keys
	0.02 30 Jun 18 Add pictures
	0.01 27 Jun 2018 Layout
	0.00 21 Jun 2018  Start test
	The Game with no name  Designed and programmed by Darren Heaton 1990

	a quick HELLO to	Martyn [Chuckie], Bernie, Matthew [Tee Hee], Mark [Technical Support], Andy, Walter, Elliot [Keep up the artwork],
	Tony, Dave, Karl, Lee, Pete, Steve, Dave H, Al, Lisa, Vicky, Roger, Richard, Derek, Neil, Mark [Brother], Mum, Dad

	0-31
	0 ;Empty Black
	1 ;you Face.jpg
	2 ;Diamond Diamond
	3 ;Key Key
	4 ;Torch
	5 ;Door
	6 ;Water
	7 ;Tap tapopen
	8 ;Lift
	9 ; ~

	11 ;Hor Right
	12   ;Hor Letter hidden block
	13 ;Hor Left
	14   ;Hor Block hidden
	15 ; V block  can ride down but not up.
	16   ; V block hidden

	17 Hidden walls black (default)
	18 Hidden Wall Show (not used in edit)

	30 ; Tap TapClose (changed in game only)
	31 Missile

	=32-126 ASCII

	=127 EOL

	=128-255 Color

	128 ;blue
	255 ;White
	129 ;green
	130 ;blue darkblue
	131 ;blue darkestblue
	132 ;dark green darkgreen

	133 ; darker red
	134 ;red
	135 ;earth
	136 Light Blue like water

	collision
#ce ----------------------------------------------------------------------------

#include <GUIConstantsEx.au3>
#include <StaticConstants.au3>
#include <WindowsConstants.au3>
#include <Array.au3>
#include <ColorConstants.au3>
#include <WinAPIConstants.au3>
#include <WinAPISysWin.au3>
#include <WinAPIConv.au3>
#include <Misc.au3>
#include <Constants.au3>
#include <Date.au3>
#include <File.au3>
#include <ProgressConstants.au3>

;Main
Global $g_FileName = ""

Global $g_ExitGameScreen = False

;Game
Global $g_GameTitle = ""
Global $g_GameDate = ""
Global $g_GameChanged = True
Global $g_iBonus = 0
Global $hDLL = DllOpen("user32.dll")

;Global Const
Static Global $s_iBoxX = 82 ;screen size = game size 80x20 + one edge row on each side 2
Static Global $s_iBoxY = 22

;****************Like to remove both 20Feb2019

Global Static $s_iBorder = 0 ; space between outside edge and edge of map, when added map border
Global Static $s_iTextBorder = 10 ; space between outside edge and edge of text, when added map border it not needed INI

Global Static $g_Top = 15 ; space between top edge and map Going to add the TITLE here.

Global Static $g_cSetting = "TheGame" & ".ini"

Global $g_Size = 15 ;15 ;INI Side of block side of picture 15 min 5  20 my big INI   ;Opps if you can something in INI you half to change the globals.
$g_Size = Int(IniRead($g_cSetting, "General", "SizeCell", 0))
If $g_Size = 0 Then
	IniWrite($g_cSetting, "General", "SizeCell", 15)
	$g_Size = 15
EndIf
;
Global $s_iHalfway = (($g_Size * $s_iBoxX) + $s_iTextBorder) / 2 ;used for game lines so left side in not overwriten
Global $s_iLineX = $g_Size * $s_iBoxX
Global $s_iLineTop = $g_Size * $s_iBoxY + $s_iBorder * 2 + 10 + $g_Top

Global $g_iEditLine = $g_Size * $s_iBoxY + $s_iBorder * 2 ; + (LINE# * $s_iLineSpace)

;Line Games Edit?
Global Static $s_iLines = 7 ; Lines used by Game
Global Static $s_iLineSpace = 24 ; Line spaces

Global $g_iDead = 0
Global $g_fLevelComplete = False

Global $g_hTick = TimerInit()

Global $g_iObjCnt = 0
Global $g_aObj[50][6] ; Obj defs at bottom of program (easy to find)
Global Static $s_ObjType = 0 ; Global static Obj defs
Global Static $s_ObjAct = 1 ; 0=off 1=on
Global Static $s_ObjX = 2
Global Static $s_ObjY = 3

Global Static $s_HVdir = 1 ;Moving HV direction
Global Static $s_LiftY = 4
Global Static $s_HalfSpeed = 5 ; Used in Lift and Vert and ~
Global Static $s_MissileX = 4
Global Static $s_MissileY = 5
Global Static $s_HidAtc = 5

Global Static $YOU = 1
Global $g_iYouX = 0
Global $g_iYouY = 0

Global Static $EMPTY = 0

Global Static $s_iMapSizeX = $s_iBoxX - 2
Global Static $s_iMapSizeY = $s_iBoxY - 2
Global Static $s_iMapOffsetX = 0 ; Edit full size no Offsets
Global Static $s_iMapOffsetY = 1 ; Minue thing

Global $g_cKeyEvent = "-"
Global $g_cMoveEvent = "-"

Global $g_iDiamondCnt = 0

Global $g_iDirection = 0

Global $g_fTap = True ; Tap is on
Global $g_iTapObj = 0 ;Object number of the Tap

Global $g_fPlatformDelay = True

Global $g_iLives = 6
Global $g_irLevel = 1
Global $g_iScore = 0
Global $g_fHitKey = False
;Global $g_fHitKeySave = False ;in case of restart level
Global $g_fKeyUsed = False ; Level keyused  Door is black

Global $g_fHitTorch = False

;Startup
Global $g_iSSkey = 0
Global $g_aHiScore[10][3] ; data load by INI.  10 = 8 date, 1 cnt, 1 update
Global $g_ScoreStr1 = False

;Edit Screen
Global $g_EdTitle
Global $g_iEditLines = 10
Global $g_aEditMap[$s_iBoxX][$s_iBoxY]
Global $g_iEditX = 0
Global $g_iEditY = 0
Global $g_iEdit_Xcur = 0
Global $g_iEdit_Ycur = 0
Global $g_fEdRepeat = False
Global $g_cEdStKp = "-"
Global $g_fEditDemo = False

Global $g_aDisplayMap[$s_iBoxX][$s_iBoxY]
;Global $g_aMap[$s_iBoxX][$s_iBoxY] ; Array start at 0,0  My map starts at 1,1  x,0 and 0,y not used.

Global $g_aMap[82][22] ; Array start at 0,0  My map starts at 1,1  x,0 and 0,y not used.

;------------------------------------

;Create Screens
Global $g_ScreenGame = 0
Global $g_ScreenStart = 0
Global $g_ScreenEdit = 0

Global $g_fEditMode = False
Global $g_hDLL = 0
Global $g_iPick = $EMPTY
Global $g_fHiddenActive = False
Global $g_aHidden[50][4] ;0 = 0,1 used : 1 New 1=Hide, 2=Show, 2 X : 3 Y
Global $g_iHiddenCnt = 0

Global $g_TorchLabel = 0

;game
Global $g_cGtitle = 0
Global $g_cGright
Global $g_cGleft
Global $g_cGquit
Global $g_cGdie
Global $g_cGdown

;Demo Level
Global $g_fDemoLevel = False

;Call Main at bottom

Func Pause($a = "")
	MsgBox(0, "", $a)
EndFunc   ;==>Pause
#CS INFO
	3687 V3 3/28/2019 9:21:27 PM V2 2/24/2019 6:05:52 PM V1 2/24/2019 10:03:19 AM
#CE

;----------------------------------- End of Global
Func Main()
	Local $i
	Local $fOkProgram = True

	ReadIni()

	;EditScreen()

	While $fOkProgram
		If $g_fEditDemo Then
			$i = 5
		Else
			$i = StartScreen()
		EndIf

		Switch $i
			Case 1
				GameScreen()

			Case 2
				DoDemoLevel()

			Case 3
				Instructions()

			Case 4
				MsgBox($MB_TOPMOST, "", "Function " & $i & " not active")

			Case 5
				EditScreen()
				If $g_fEditDemo Then
					GameScreen()
				EndIf

			Case 6
				$fOkProgram = False
		EndSwitch
	WEnd
	If $g_hDLL <> 0 Then
		DllClose($g_hDLL)
	EndIf
EndFunc   ;==>Main
#CS INFO
	33613 V4 3/28/2019 9:21:27 PM V3 3/25/2019 12:04:08 AM V2 2/24/2019 6:05:52 PM V1 2/24/2019 10:03:19 AM
#CE

;INI Section Score  ScoreWho
;Key 1-8

;-------------------------------------------------
Func UpDateHiScore()
	If $g_aHiScore[8][0] < $g_iScore Then
		MsgBox($MB_TOPMOST, "High Score", "New High Score: " & $g_iScore)

		$g_aHiScore[9][0] = $g_iScore
		$g_aHiScore[9][1] = _Now()
		$g_aHiScore[9][2] = $g_irLevel
		_ArraySort($g_aHiScore, 1, 1, 9)
		SaveHiScore()
	EndIf
EndFunc   ;==>UpDateHiScore
#CS INFO
	22628 V2 3/17/2019 2:57:13 AM V1 2/25/2019 1:58:55 AM
#CE

; Read HighScore
Func ReadIni()
	Local $i
	Local $a, $b ; temp array or not

	$a = IniReadSection($g_cSetting, "HighScore")
	If @error = 0 Then
		For $i = 1 To 8
			$b = StringSplit($a[$i][1], "|")
			$g_aHiScore[$i][0] = Int($b[1])
			$g_aHiScore[$i][1] = $b[2]
			If $b[0] = 3 Then
				$g_aHiScore[$i][2] = $b[3]
			Else
				$g_aHiScore[$i][2] = "-"
			EndIf
		Next
	Else
		For $i = 1 To 8 ; not found load
			$g_aHiScore[$i][0] = 0 ;value
			$g_aHiScore[$i][1] = "" ;date
			$g_aHiScore[$i][2] = "" ;level
		Next
		SaveHiScore()
	EndIf

	;SizeCell  default 20
	$g_Size = Int(IniRead($g_cSetting, "General", "SizeCell", 0))
	If $g_Size = 0 Then
		IniWrite($g_cSetting, "General", "SizeCell", 20)
		$g_Size = 20
	EndIf
	;Global $s_iHalfway = (($g_Size * $s_iBoxX) + $s_iTextBorder) / 2 ;used for game lines so left side in not overwriten
	;Global $s_iLineX = $g_Size * $s_iBoxX
	;Global $s_iLineTop = $g_Size * $s_iBoxY + $s_iBorder * 2 + $g_Top
	;Global $g_iEditLine = $g_Size * $s_iBoxY + $s_iBorder * 2 ; + (LINE# * $s_iLineSpace)

EndFunc   ;==>ReadIni
#CS INFO
	71920 V4 3/17/2019 2:57:13 AM V3 3/8/2019 8:44:22 AM V2 2/25/2019 1:58:55 AM V1 2/24/2019 6:05:52 PM
#CE

Func SaveHiScore()
	Local $x, $a[9][2]

	For $x = 1 To 8
		$a[$x][0] = String($x)
		$a[$x][1] = $g_aHiScore[$x][0] & "|" & $g_aHiScore[$x][1] & "|" & $g_aHiScore[$x][2]
	Next
	$a[0][0] = 8
	IniWriteSection($g_cSetting, "HighScore", $a)

EndFunc   ;==>SaveHiScore
#CS INFO
	18372 V3 3/17/2019 2:57:13 AM V2 2/25/2019 1:58:55 AM V1 2/24/2019 6:05:52 PM
#CE

;-------------------------------------------------
Func DoDemoLevel()
	$g_fDemoLevel = True
	GameScreen()
	$g_fDemoLevel = False
EndFunc   ;==>DoDemoLevel
#CS INFO
	8093 V2 2/24/2019 6:05:52 PM V1 2/24/2019 10:03:19 AM
#CE

;-------------------------------------------------=

Func Instructions()
	Local $_Run = "notepad.exe " & @ScriptDir & "\instructions.txt"
	Run($_Run, @WindowsDir, @SW_MAXIMIZE)

EndFunc   ;==>Instructions
#CS INFO
	12076 V2 2/24/2019 6:05:52 PM V1 2/24/2019 10:03:19 AM
#CE

#cs
	Func KeyInput()
	$Form1 = GUICreate("KeyInput", 338, 157, 1284, 170)
	$Label1 = GUICtrlCreateLabel("Input string will start at cursor.", 32, 16, 214, 24)
	GUICtrlSetFont(-1, 12, 400, 0, "MS Sans Serif")
	$Label2 = GUICtrlCreateLabel("Display upper case A-Z 0-9 /:-", 32, 56, 214, 24)
	GUICtrlSetFont(-1, 12, 400, 0, "MS Sans Serif")
	$Input1 = GUICtrlCreateInput("", 32, 96, 265, 24)
	GUICtrlSetFont(-1, 10, 400, 0, "MS Sans Serif")
	GUISetState(@SW_SHOW)

	EndFunc   ;==>KeyInput

#ce

Global $g_EdQuit
Global $Which0[25][2]
Global $Which1[25][2]
Global $Which2[25][2]
Global $g_Under, $g_Selected

;~~~~~~
Func EditScreen()
	;Edit Screen Button
	Local $iColumn, $fFac, $iColumnHalf, $iHalf, $iW, $string, $flag
	Local $mousePos, $tPoint, $x, $y, $z, $nMsg, $sLetters

	Local Static $Title, $Which[3], $b[25]
	Local Static $ls_idDown, $ls_idRight, $ls_idLeft, $ls_idUp, $ls_idSpace, $ls_bQuit
	Local Static $ls_bClear, $ls_bDemo, $ls_bKeyInput, $ls_bLoad, $ls_bRepeat, $ls_bSave

	If $g_fEditDemo = False Then
		$g_FileName = ""
	EndIf

	; $EditLint + (LINE# * $s_iLineSpace)
	$g_iPick = $EMPTY
	$g_fEdRepeat = False
	$g_cEdStKp = ""

	$g_fHitKey = False
	$g_fHitTorch = False

	If $g_hDLL = 0 Then
		$g_hDLL = DllOpen("user32.dll")
	EndIf

	$g_iYouX = 0
	$g_iYouY = 0

	If $g_ScreenEdit = 0 Then
		$g_ScreenEdit = GUICreate("The Game - Edit screen - " & $g_ver, $s_iLineX, $g_iEditLine + 320, -1, -1)
		GUISetState(@SW_SHOW, $g_ScreenEdit)

		For $y = 0 To $s_iBoxY - 1
			For $x = 0 To $s_iBoxX - 1
				$g_aMap[$x][$y] = -1
				$g_aEditMap[$x][$y] = GUICtrlCreatePic(@ScriptDir & "\Pic\Edge.jpg", $x * $g_Size + $s_iBorder, $y * $g_Size + $s_iBorder, $g_Size, $g_Size)
			Next
		Next

		$ls_idDown = GUICtrlCreateDummy()
		$ls_idRight = GUICtrlCreateDummy()
		$ls_idLeft = GUICtrlCreateDummy()
		$ls_idUp = GUICtrlCreateDummy()
		$ls_idSpace = GUICtrlCreateDummy()

		$iColumn = Int($s_iLineX / 10)
		$fFac = $iColumn / 123

		$iColumnHalf = Int($iColumn / 2)
		$iHalf = Int($s_iLineX / 2)
		$iW = Int($fFac * 100)
;~~
		$g_EdTitle = GUICtrlCreateLabel("Title - Date", $s_iBorder, $g_iEditLine, $s_iLineX, 20, $SS_CENTER)
		GUICtrlSetFont(-1, 12, 400, 0, "MS Sans Serif")

		$g_Under = GUICtrlCreateLabel("What under cursor", $iHalf - $iColumn, $g_iEditLine + 20, $iColumn * 2, 20, $SS_CENTER)
		GUICtrlSetFont(-1, 12, 800, 0, "Arial Black")

		$g_Selected = GUICtrlCreateLabel("Selected Object", $iHalf - $iColumn, $g_iEditLine + 40, $iColumn * 2, 20, $SS_CENTER)
		GUICtrlSetFont(-1, 12, 800, 0, "Arial Black")
		GUICtrlSetBkColor(-1, $COLOR_SKYBLUE)

		$ls_bRepeat = GUICtrlCreateButton("Repeat", $iHalf - $iColumn * 2, $g_iEditLine + 30, $iW, 30)
		$ls_bKeyInput = GUICtrlCreateButton("Add Text", $iHalf - $iColumn * 3, $g_iEditLine + 30, $iW, 30)
		$ls_bQuit = GUICtrlCreateButton("Quit", $iHalf + $iColumn * 4, $g_iEditLine + 30, $iW, 30)

		$Which[0] = GUICtrlCreateButton("Colors", $iHalf - $iColumn * 1.5, $g_iEditLine + 70, $iW, 30)
		$Which[1] = GUICtrlCreateButton("Objects", $iHalf - $iW * .5, $g_iEditLine + 70, $iW, 30)
		$Which[2] = GUICtrlCreateButton("Controls", (($iColumn * 1.5) - $iW) + $iHalf, $g_iEditLine + 70, $iW, 30)

		;$Which[0] ; Colors
		;$Which[1] ; Object
		;$Which[2] ; Controls

		$b[0] = GUICtrlCreateButton("", $iHalf - $iW * 2.5, $g_iEditLine + 110, $iW, 30)
		$b[1] = GUICtrlCreateButton("", $iHalf - $iW * 1.5, $g_iEditLine + 110, $iW, 30)
		$b[2] = GUICtrlCreateButton("", $iHalf - $iW * .5, $g_iEditLine + 110, $iW, 30)
		$b[3] = GUICtrlCreateButton("", $iHalf + $iW * .5, $g_iEditLine + 110, $iW, 30)
		$b[4] = GUICtrlCreateButton("", $iHalf + $iW * 1.5, $g_iEditLine + 110, $iW, 30)

		$b[5] = GUICtrlCreateButton("", $iHalf - $iW * 2.5, $g_iEditLine + 150, $iW, 30)
		$b[6] = GUICtrlCreateButton("", $iHalf - $iW * 1.5, $g_iEditLine + 150, $iW, 30)
		$b[7] = GUICtrlCreateButton("", $iHalf - $iW * .5, $g_iEditLine + 150, $iW, 30)
		$b[8] = GUICtrlCreateButton("", $iHalf + $iW * .5, $g_iEditLine + 150, $iW, 30)
		$b[9] = GUICtrlCreateButton("", $iHalf + $iW * 1.5, $g_iEditLine + 150, $iW, 30)

		$b[10] = GUICtrlCreateButton("", $iHalf - $iW * 2.5, $g_iEditLine + 190, $iW, 30)
		$b[11] = GUICtrlCreateButton("", $iHalf - $iW * 1.5, $g_iEditLine + 190, $iW, 30)
		$b[12] = GUICtrlCreateButton("", $iHalf - $iW * .5, $g_iEditLine + 190, $iW, 30)
		$b[13] = GUICtrlCreateButton("", $iHalf + $iW * .5, $g_iEditLine + 190, $iW, 30)
		$b[14] = GUICtrlCreateButton("", $iHalf + $iW * 1.5, $g_iEditLine + 190, $iW, 30)

		$b[15] = GUICtrlCreateButton("", $iHalf - $iW * 2.5, $g_iEditLine + 230, $iW, 30)
		$b[16] = GUICtrlCreateButton("", $iHalf - $iW * 1.5, $g_iEditLine + 230, $iW, 30)
		$b[17] = GUICtrlCreateButton("", $iHalf - $iW * .5, $g_iEditLine + 230, $iW, 30)
		$b[18] = GUICtrlCreateButton("", $iHalf + $iW * .5, $g_iEditLine + 230, $iW, 30)
		$b[19] = GUICtrlCreateButton("", $iHalf + $iW * 1.5, $g_iEditLine + 230, $iW, 30)

		$b[20] = GUICtrlCreateButton("", $iHalf - $iW * 2.5, $g_iEditLine + 270, $iW, 30)
		$b[21] = GUICtrlCreateButton("", $iHalf - $iW * 1.5, $g_iEditLine + 270, $iW, 30)
		$b[22] = GUICtrlCreateButton("", $iHalf - $iW * .5, $g_iEditLine + 270, $iW, 30)
		$b[23] = GUICtrlCreateButton("", $iHalf + $iW * .5, $g_iEditLine + 270, $iW, 30)
		$b[24] = GUICtrlCreateButton("", $iHalf + $iW * 1.5, $g_iEditLine + 270, $iW, 30)

		;Computer Which buttons
		$string = "0,Empty,0,1, blue,128,5,green,129,2,dark blue,130,3,darkest blue,131,4,light blue,136,6,dark green,132,8,darker red,133,7,red,134,9,earth,135,12, Hidden,17"
		; all use the same function so string the Color value for the function
		SetupWhich($Which0, $string)

		$string = "0,Empty,0,2,You,1,4,Diamond,2,5,Water,6,7,Key,3,9,Torch,4,8,Door,5"
		$string &= ",10,Lift,8,11,Platform Down,9,12,Missile Off,7,13,Missile,31,14,Hidden,17"
		$string &= ",15,Horz Right,11,16,Horz Left,13,18,Hid Right,12,19,Hid Left,14,17,Vertital,15"
		SetupWhich($Which1, $string)
;~~
		$string = "0,Load,EdLoadLevel, 2,Save,EdSaveLevel,12,Clear,ClearScreen,15,Demo,StrDemo,4,New,Pause,19,Edit Title,EditLevelTitle"
		SetupWhich($Which2, $string)
		;_ArrayDisplay($Which0)
		;_ArrayDisplay($Which1)
		;_ArrayDisplay($Which2)
	EndIf

	GUISetState(@SW_SHOW, $g_ScreenEdit)

	$g_fEditMode = True

	$s_iMapSizeX = $s_iBoxX - 2 ;80  Put this block before EdLoadLevel/Clearscreen
	$s_iMapSizeY = $s_iBoxY - 2 ;20
	$g_iEditX = $s_iMapSizeX / 2
	$g_iEditY = $s_iMapSizeY / 2
	$g_iEdit_Xcur = $g_iEditX
	$g_iEdit_Ycur = $g_iEditY

	If $g_fEditDemo Then
		EdLoadLevel()
		$g_fEditDemo = False
	Else
		ClearScreen()
	EndIf

	$g_iDirection = 0

	EditObject(-2)
	EditStatus()
	$g_EdQuit = True
	$nMsg = 0

	Local $WhichCur
	$WhichCur = 2
	GUICtrlSetFont($Which[2], 8.5, $FW_HEAVY)
	For $z = 0 To 24
		If $Which2[$z][0] = "" Then
			GUICtrlSetState($b[$z], $GUI_HIDE)
		Else
			GUICtrlSetData($b[$z], $Which2[$z][0])
			GUICtrlSetState($b[$z], $GUI_SHOW)
		EndIf
	Next
;~~~

	Local $aAccelKey2[][] = [["{RIGHT}", $ls_idRight], ["{LEFT}", $ls_idLeft], [" ", $ls_idSpace], ["{DOWN}", $ls_idDown], ["{UP}", $ls_idUp]]
	GUISetAccelerators($aAccelKey2, $g_ScreenEdit)

	;Edit Loop
	While $g_EdQuit ;1
		$nMsg = GUIGetMsg()
		If $nMsg > 0 Then
			$flag = True
			For $z = 0 To 24
				If $nMsg = $b[$z] Then
					$flag = False
					Switch $WhichCur
						Case 2
							Call($Which2[$z][1])
							If @error = 0xDEAD And @extended = 0xBEEF Then
								MsgBox($MB_SYSTEMMODAL, "", "Function does not exist. Z = " & $z & " Func: " & $Which2[$z][1])
								Exit
							EndIf
						Case 1
							$g_iPick = Int($Which1[$z][1])
						Case 0
							$g_iPick = Int($Which0[$z][1])
					EndSwitch
					ExitLoop
				EndIf
			Next
		EndIf

		If $flag Then
			Switch $nMsg

				Case $Which[0] ; Colors
					GUICtrlSetFont($Which[$WhichCur], 8.5, $FW_NORMAL)
					GUICtrlSetFont($Which[0], 8.5, $FW_HEAVY)

					$WhichCur = 0
					For $z = 0 To 19
						If $Which0[$z][0] = "" Then
							GUICtrlSetState($b[$z], $GUI_HIDE)
						Else
							GUICtrlSetData($b[$z], $Which0[$z][0])
							GUICtrlSetState($b[$z], $GUI_SHOW)
						EndIf
					Next

				Case $Which[1] ; Object
					GUICtrlSetFont($Which[$WhichCur], 8.5, $FW_NORMAL)
					GUICtrlSetFont($Which[1], 8.5, $FW_HEAVY)
					$WhichCur = 1
					For $z = 0 To 19
						If $Which1[$z][0] = "" Then
							GUICtrlSetState($b[$z], $GUI_HIDE)
						Else
							GUICtrlSetData($b[$z], $Which1[$z][0])
							GUICtrlSetState($b[$z], $GUI_SHOW + $GUI_ENABLE)
						EndIf
					Next

				Case $Which[2] ; Controls

					GUICtrlSetFont($Which[$WhichCur], 8.5, $FW_NORMAL)
					GUICtrlSetFont($Which[2], 8.5, $FW_HEAVY)

					$WhichCur = 2

					For $z = 0 To 24
						If $Which2[$z][0] = "" Then
							GUICtrlSetState($b[$z], $GUI_HIDE)
						Else
							GUICtrlSetData($b[$z], $Which2[$z][0])
							GUICtrlSetState($b[$z], $GUI_SHOW)
						EndIf
					Next

				Case $ls_idLeft
					Do
					Until GUIGetMsg() <> $ls_idLeft
					$g_iEditX -= 1
					If $g_iEditX < 1 Then
						$g_iEditX = $s_iBoxX - 2
					EndIf
					If $g_fEdRepeat Then
						$g_aMap[$g_iEdit_Xcur][$g_iEdit_Ycur] = $g_iPick
						$g_GameChanged = True
					EndIf
					ShowObject($g_iEdit_Xcur, $g_iEdit_Ycur, -1)
					ShowObject($g_iEditX, $g_iEditY, -1)
					$g_iEdit_Xcur = $g_iEditX
					$g_iEdit_Ycur = $g_iEditY
					EditStatus()

				Case $ls_idRight
					;					$g_iDirection = 2
					Do
					Until GUIGetMsg() <> $ls_idRight
					$g_iEditX += 1
					If $g_iEditX > $s_iBoxX - 2 Then
						$g_iEditX = 1
					EndIf
					If $g_fEdRepeat Then
						$g_aMap[$g_iEdit_Xcur][$g_iEdit_Ycur] = $g_iPick
						$g_GameChanged = True
					EndIf
					ShowObject($g_iEdit_Xcur, $g_iEdit_Ycur, -1)
					ShowObject($g_iEditX, $g_iEditY, -1)
					$g_iEdit_Xcur = $g_iEditX
					$g_iEdit_Ycur = $g_iEditY
					EditStatus()

				Case $ls_idUp
					;					$g_iDirection = 3
					Do
					Until GUIGetMsg() <> $ls_idUp
					$g_iEditY += 1
					If $g_iEditY > $s_iBoxY - 2 Then
						$g_iEditY = 1
					EndIf
					If $g_fEdRepeat Then
						$g_aMap[$g_iEdit_Xcur][$g_iEdit_Ycur] = $g_iPick
						$g_GameChanged = True
					EndIf
					ShowObject($g_iEdit_Xcur, $g_iEdit_Ycur, -1)
					ShowObject($g_iEditX, $g_iEditY, -1)
					$g_iEdit_Xcur = $g_iEditX
					$g_iEdit_Ycur = $g_iEditY
					EditStatus()
				Case $ls_idDown
					;					$g_iDirection = 4
					Do
					Until GUIGetMsg() <> $ls_idDown
					$g_iEditY -= 1
					If $g_iEditY < 1 Then
						$g_iEditY = $s_iBoxY - 2
					EndIf
					If $g_fEdRepeat Then
						$g_aMap[$g_iEdit_Xcur][$g_iEdit_Ycur] = $g_iPick
						$g_GameChanged = True
					EndIf
					ShowObject($g_iEdit_Xcur, $g_iEdit_Ycur, -1)
					ShowObject($g_iEditX, $g_iEditY, -1)
					$g_iEdit_Xcur = $g_iEditX
					$g_iEdit_Ycur = $g_iEditY
					EditStatus()
				Case $ls_idSpace
					;					$g_iDirection = 5
					$g_aMap[$g_iEdit_Xcur][$g_iEdit_Ycur] = $g_iPick
					$g_GameChanged = True
					ShowObject($g_iEdit_Xcur, $g_iEdit_Ycur, -1)
					ShowObject($g_iEditX, $g_iEditY, -1)
					$g_iEdit_Xcur = $g_iEditX
					$g_iEdit_Ycur = $g_iEditY
					EditStatus()

				Case $ls_bRepeat
					If $g_fEdRepeat Then
						$g_fEdRepeat = False
						GUICtrlSetBkColor($ls_bRepeat, $COLOR_RED)
					Else
						$g_fEdRepeat = True
						$g_aMap[$g_iEdit_Xcur][$g_iEdit_Ycur] = $g_iPick
						$g_GameChanged = True
						GUICtrlSetBkColor($ls_bRepeat, $COLOR_GREEN)
					EndIf

				Case $ls_bKeyInput
					;	HotKeySet("{Space}") ;5
					GUISetAccelerators(1, $g_ScreenEdit)
					$sLetters = InputBox("Input String", "Display upper case A-Z 0-9 /:-" & @CRLF)
					$sLetters = StringUpper($sLetters)
					GUISetAccelerators($aAccelKey2, $g_ScreenEdit)
					;	HotKeySet("{Space}", "EdSpace") ;5

					If StringLen($sLetters) + $g_iEdit_Xcur > 80 Then ;Too long
						MsgBox($MB_TOPMOST, "String too long", "String too long!")
					Else
						For $z = 1 To StringLen($sLetters)
							ShowObject($g_iEdit_Xcur + $z - 1, $g_iEdit_Ycur, Asc(StringMid($sLetters, $z, 1)))
						Next
					EndIf

				Case $ls_bQuit
					$g_EdQuit = False

			EndSwitch
		EndIf ;Flag
		EditStatus()

		If _IsPressed("02", $g_hDLL) Then ; 02 right button
			While _IsPressed("02", $g_hDLL)
				Sleep(200)
			WEnd
			$g_aMap[$g_iEdit_Xcur][$g_iEdit_Ycur] = $g_iPick
			$g_GameChanged = True
			;				ShowObject($g_iEdit_Xcur, $g_iEdit_Ycur, -1)
			EditStatus()

		ElseIf _IsPressed("01", $g_hDLL) Then ; 02 right button
			$mousePos = MouseGetPos()
			While _IsPressed("01", $g_hDLL)
				Sleep(200)
			WEnd

			Local $tPoint = DllStructCreate("int X;int Y")
			DllStructSetData($tPoint, "X", $mousePos[0])
			DllStructSetData($tPoint, "Y", $mousePos[1])
			_WinAPI_ScreenToClient($g_ScreenEdit, $tPoint)
			$x = (DllStructGetData($tPoint, "X") - ($g_Size + $s_iBorder))
			$y = (DllStructGetData($tPoint, "Y") - ($g_Size + $s_iBorder))
			If $x >= 0 And $y >= 0 And $x < 80 * $g_Size And $y < 20 * $g_Size Then

				$g_iEditX = Int($x / $g_Size) + 1
				$g_iEditY = 20 - Int($y / $g_Size)

				ShowObject($g_iEdit_Xcur, $g_iEdit_Ycur, -1)
				$g_iEdit_Xcur = $g_iEditX
				$g_iEdit_Ycur = $g_iEditY
				EditStatus()

			EndIf
		EndIf

	WEnd

	GUISetAccelerators($g_ScreenGame, $g_ScreenGame)
	$g_fEditMode = False
	GUISetState(@SW_HIDE, $g_ScreenEdit)

EndFunc   ;==>EditScreen
#CS INFO
	839372 V14 3/28/2019 9:21:27 PM V13 3/27/2019 9:45:39 PM V12 3/26/2019 8:43:36 PM V11 3/25/2019 9:26:18 PM
#CE

Func EditLevelTitle()
	Local $sInputBoxAnswer, $aMyDate, $aMyTime

	$sInputBoxAnswer = InputBox("Edit Level Title", "Title of Level , don't use date, that will be added at Level save.  Use a version number if you want.", $g_GameTitle)
	Select
		Case @error = 0 ;OK - The string returned is valid
			$g_GameTitle = $sInputBoxAnswer
			_DateTimeSplit(_Now(), $aMyDate, $aMyTime)
			$g_GameDate = StringRight($aMyDate[3], 2) & StringFormat("%2s%2s", $aMyDate[1], $aMyDate[2])
			$g_GameChanged = True
			DisplayTitleDate()
		Case @error = 1 ;The Cancel button was pushed

		Case @error = 3 ;The InputBox failed to open

	EndSelect

EndFunc   ;==>EditLevelTitle
#CS INFO
	50901 V1 3/28/2019 9:21:27 PM
#CE

Func SetupWhich(ByRef $aArray, $string)
	Local $array, $z

	For $z = 0 To 24
		$aArray[$z][0] = ""
		$aArray[$z][1] = ""
	Next

	$array = StringSplit($string, ",")
	;_ArrayDisplay($array)

	For $z = 1 To $array[0] Step 3
		$aArray[$array[$z]][0] = $array[$z + 1]
		$aArray[$array[$z]][1] = $array[$z + 2]
	Next
	;_ArrayDisplay($aArray)
EndFunc   ;==>SetupWhich
#CS INFO
	26008 V2 3/27/2019 9:45:39 PM V1 3/25/2019 9:26:18 PM
#CE

Func StrDemo()
	$g_EdQuit = False
	$g_fEditDemo = True
EndFunc   ;==>StrDemo
#CS INFO
	5765 V1 3/25/2019 9:26:18 PM
#CE

#cs
	; one time use
	Func ExpandLevel() ;One time use
	Local $y, $x, $z, $a, $rr
	$z = 3
	For $x = 77 To 1 Step -1
	For $y = 1 To 16
	$g_aMap[$x + $z][$y] = $g_aMap[$x][$y]
	Next
	If $x = 61 Or $x = 41 Or $x = 21 Then
	$z -= 1
	For $y = 1 To 16
	$g_aMap[$x + $z][$y] = 136
	Next
	EndIf
	Next
	$z = 4
	For $y = 16 To 1 Step -1
	For $x = 1 To 80
	$g_aMap[$x][$y + $z] = $g_aMap[$x][$y]
	Next
	If $y = 4 Or $y = 7 Or $y = 10 Or $y = 13 Then
	$z -= 1
	For $x = 1 To 80
	$g_aMap[$x][$y + $z] = 136
	Next
	EndIf
	Next
	EdSaveLevel()
	EdLoadLevel()
	EndFunc   ;==>ExpandLevel
#ce

Func EdSaveLevel()
	Local $e, $hlv, $x, $y, $aMyDate, $aMyTime

	If $g_FileName = "" Then
		MsgBox($MB_TOPMOST, "Save lever, filename not set", "No filename, on to do list")
		Return 0
	EndIf

	$hlv = FileOpen($g_FileName, $FO_OVERWRITE)
	If $hlv = -1 Then
		MsgBox(1, "Level error", $g_FileName & " Level did not save.")
		Return 0
	EndIf

	FileChangeDir(@ScriptDir)

	If $g_GameChanged Then
		; Write today's date as YYMMDD
		_DateTimeSplit(_Now(), $aMyDate, $aMyTime)
		FileWrite($hlv, StringRight($aMyDate[3], 2) & StringFormat("%2s%2s", $aMyDate[1], $aMyDate[2]))
	Else
		If $g_GameDate <> 0 Then
			FileWrite($hlv, $g_GameDate)
		EndIf
	EndIf
	FileWrite($hlv, $g_GameTitle)
	FileWrite($hlv, BinaryMid(127, 1, 1))

	For $y = 1 To 20 ;$s_iMapSizeY
		For $x = 1 To 80 ;$s_iMapSizeX
			$e = $g_aMap[$x][$y]
			FileWrite($hlv, BinaryMid(Int($e), 1, 1))
		Next
	Next

	FileClose($hlv)

	MsgBox($MB_TOPMOST, "Save level", "Level saved to " & $g_FileName, 2)

EndFunc   ;==>EdSaveLevel
#CS INFO
	70105 V4 3/28/2019 9:21:27 PM V3 3/27/2019 9:45:39 PM V2 2/24/2019 6:05:52 PM V1 2/24/2019 12:43:53 AM
#CE

Func EdLoadLevel()
	Local $hlv, $x, $y, $a, $PleaseWait, $FileName, $aPos, $aMyDate, $aMyTime

	While 1
		If $g_fEditDemo = False Then
			$FileName = FileOpenDialog("Load Level", @ScriptDir & "\Levels\", "Level (*.lvl)", "", $FD_FILEMUSTEXIST)
			If @error = 1 Then
				Return -1
			EndIf
		Else
			$FileName = $g_FileName
		EndIf

		$hlv = FileOpen($FileName, $FO_BINARY)

		If $hlv = -1 Then
			MsgBox(1, "Level error: ", $FileName & " Level did not open ")
		Else
			ExitLoop
		EndIf

	WEnd
	FileChangeDir(@ScriptDir)

	$g_FileName = $FileName

	$x = StringInStr($FileName, "\", 0, -1)
	$FileName = StringMid($FileName, $x + 1)

	SayLoadLevel(1, $g_ScreenEdit, $FileName)

	$g_GameChanged = False

	$g_GameTitle = ""
	$a = ""
	Do
		$g_GameTitle = $g_GameTitle & BinaryToString($a)
		$a = FileRead($hlv, 1)
	Until $a = 127 ;"7F"

	$g_GameDate = StringLeft($g_GameTitle, 6)
	If StringIsDigit(StringLeft($g_GameDate, 2)) = 1 Then ;all numbers
		$g_GameTitle = StringMid($g_GameTitle, 7)
	Else ; Not all numberts
		; game date today's date as YYMMDD
		;	_DateTimeSplit(_Now(), $aMyDate, $aMyTime)
		;	$g_GameDate = StringRight($aMyDate[3], 2) & StringFormat("%2s%2s", $aMyDate[1], $aMyDate[2])
		$g_GameDate = 0
	EndIf

	;Offset
	;	$s_iMapOffsetX = 0
	;	$s_iMapOffsetY = 1

	For $y = 1 To 20 ;$s_iMapSizeY
		For $x = 1 To 80 ;$s_iMapSizeX
			$g_aMap[$x][$y] = Int(FileRead($hlv, 1), 1)
			ShowObject($x, $y, -1)
		Next
	Next
	FileClose($hlv)
	DisplayTitleDate()

	EditStatus()
	SayLoadLevel()

EndFunc   ;==>EdLoadLevel
#CS INFO
	106489 V8 3/28/2019 9:21:27 PM V7 3/27/2019 9:45:39 PM V6 3/26/2019 8:43:36 PM V5 3/15/2019 8:15:41 PM
#CE

;Load Level
; to remove Run again
Func SayLoadLevel($Mode = 0, $Screen = 0, $FileName = "") ;Screen that it going to be in,  DONE  blank.
	;Mode 1 = loading level
	;Move 2 = Clearing board (Edit only)

	Local Static $PleaseWait = 0
	Local $x, $y, $aPos

	If $PleaseWait <> 0 Or $Mode = 0 Then
		GUIDelete($PleaseWait)
		$PleaseWait = 0
	Else
		If $Screen = 0 Then
			MsgBox(0, "Programing Error", "SayLoadLevel Screen can not be ZERO of first pass")
		EndIf
		$aPos = WinGetPos($Screen)
		$x = $aPos[0] - (196 / 2) + ($g_Size * 41)
		$y = $aPos[1] + (8 * $g_Size)

		$PleaseWait = GUICreate("", 186, 92, $x, $y)
		Switch $Mode
			Case 1
				GUICtrlCreateLabel("Loading Level", 8, 8, 170, 25, $SS_CENTER)
				GUICtrlSetFont(-1, 12, 800, 0, "Arial Black")
				GUICtrlCreateLabel($FileName, 8, 38, 170, 25, $SS_CENTER)
				GUICtrlSetFont(-1, 12, 400, 0, "Arial")

			Case 2
				GUICtrlCreateLabel("Clearing Board", 8, 8, 170, 25, $SS_CENTER)
				GUICtrlSetFont(-1, 12, 800, 0, "Arial Black")

		EndSwitch

		GUICtrlCreateLabel("Please Wait", 8, 68, 170, 25, $SS_CENTER)
		GUICtrlSetFont(-1, 12, 400, 0, "Arial")
		GUISetState(@SW_SHOW)
	EndIf

EndFunc   ;==>SayLoadLevel
#CS INFO
	74375 V2 3/15/2019 8:15:41 PM V1 3/11/2019 2:08:18 AM
#CE

Func EditStatus()
	Local $tx
	Local Static $txselect = "", $txunder = ""

	$tx = EditObject(-2)
	If $tx <> $txunder Then
		$txunder = $tx
		GUICtrlSetData($g_Under, $tx)
	EndIf
	$tx = EditObject($g_iPick)
	If $tx <> $txselect Then
		$txselect = $tx
		GUICtrlSetData($g_Selected, $tx)
	EndIf
EndFunc   ;==>EditStatus
#CS INFO
	23159 V3 3/26/2019 8:43:36 PM V2 2/24/2019 6:05:52 PM V1 2/24/2019 12:43:53 AM
#CE

;$a >0 return text for $a  -1 use aMap location at   -2  display cur
Func EditObject($a)
	Local $tx, $vx, $vy

	$tx = ""
	If $a = -2 Then
		$vx = $g_iEdit_Xcur + $s_iMapOffsetX
		$vy = $s_iMapSizeY - $g_iEdit_Ycur + $s_iMapOffsetY
		GUICtrlSetImage($g_aEditMap[$vx][$vy], "Pic\Edit.jpg")
	EndIf
	If $a < 0 Then
		$a = $g_aMap[$g_iEdit_Xcur][$g_iEdit_Ycur]
	EndIf
	Switch $a
		Case 0
			$tx = "Empty"
		Case 11 ;Hor Right
			$tx = "HorRight"
		Case 13 ;Hor Left
			$tx = "HorLeft"
		Case 12 ;Hor Hid Right
			$tx = "HorRightHid"
		Case 14 ;Hor Hid Left
			$tx = "HorLeftHid"
		Case 7 ;tap on
			$tx = "Missile On"
		Case 30 ; tap off
			$tx = "Missile Off"
		Case 15 ;Ver Block
			$tx = "Vertical"
			;Case 16 ;Ver Block
			;	$tx = "VerticalHid"
		Case 31
			$tx = "Missile"
		Case 128
			$tx = "Blue"
		Case 129
			$tx = "Green"
		Case 130
			$tx = "Dark Blue"
		Case 131
			$tx = "Darkest Blue"
		Case 132
			$tx = "Dark Green"
		Case 133
			$tx = "Dark Red"
		Case 134
			$tx = "Red"
		Case 135
			$tx = "Earth"
		Case 136
			$tx = "Light Blue"
		Case 5
			$tx = "Door"
		Case 8 ;lift
			$tx = "Lift"
		Case 9 ;Platform down
			$tx = "Platform down"
		Case 2
			$tx = "Diamond"
		Case 1 ; You
			$tx = "You"
		Case 3
			$tx = "Key"
		Case 17
			$tx = "Hidden Block"
	EndSwitch
	Return $tx
EndFunc   ;==>EditObject
#CS INFO
	77157 V4 3/20/2019 8:28:55 PM V3 3/8/2019 8:44:22 AM V2 2/24/2019 6:05:52 PM V1 2/24/2019 12:43:53 AM
#CE

;---------------------------------------------------
;Both Edit and Game

Func DisplayTitleDate()
	Local $x

	If $g_GameDate = 0 Then
		GUICtrlSetData($g_EdTitle, $g_GameTitle)
	Else
		$x = Trim(StringMid($g_GameDate, 3, 2)) & "/" & Trim(StringMid($g_GameDate, 5, 2)) & "/20" & StringLeft($g_GameDate, 2)
		GUICtrlSetData($g_EdTitle, $g_GameTitle & " -- " & $x)
	EndIf
EndFunc   ;==>DisplayTitleDate
#CS INFO
	23394 V1 3/28/2019 9:21:27 PM
#CE

Func ClearScreen()
	Local $Color, $vx, $vy, $x, $y

	SayLoadLevel(2, $g_ScreenEdit)
	For $y = 0 To $s_iBoxY - 1
		For $x = 0 To $s_iBoxX - 1

			$Color = "Black.jpg"
			$g_aMap[$x][$y] = 0
			If $x = 0 Or $x = $s_iBoxX - 1 Or $y = 0 Or $y = $s_iBoxY - 1 Then
				$Color = "Edge.jpg"
				$g_aMap[$x][$y] = -1
			EndIf

			$vx = $x + $s_iMapOffsetX
			$vy = $s_iMapSizeY - $y + $s_iMapOffsetY
			If $g_fEditMode Then
				GUICtrlSetImage($g_aEditMap[$vx][$vy], @ScriptDir & "\pic\" & $Color)
			Else
				GUICtrlSetImage($g_aDisplayMap[$vx][$vy], @ScriptDir & "\pic\" & $Color)
			EndIf
		Next
	Next
	SayLoadLevel()
EndFunc   ;==>ClearScreen
#CS INFO
	42638 V3 3/15/2019 8:15:41 PM V2 2/24/2019 6:05:52 PM V1 2/24/2019 12:43:53 AM
#CE

Func ClearObject($x, $y)
	Local $o

	$o = $g_aMap[$x][$y]
	$g_aMap[$x][$y] = $EMPTY ;empty
	ShowObject($x, $y, 0)
	Return $o

EndFunc   ;==>ClearObject
#CS INFO
	10813 V1 2/24/2019 6:05:52 PM
#CE

;----------------------------------------------------
;Start Screen

Func StartScreen()
	Local Static $l_HiScore[8]
	Local Static $Action1, $Action2, $Action3, $Action4, $ActionE, $ActionQ

	Local Const $c_iSSwidth = 300
	Local Const $c_iSSheight = 500
	Local Const $c_iSSleft = 10
	Local $iLine, $u_Str1, $u_Str2, $i

	If $g_ScreenStart = 0 Then

		$g_ScreenStart = GUICreate("The Game - " & $g_ver, $c_iSSwidth, $c_iSSheight, -1, -1)
		;	GUISetState(@SW_HIDE, $g_ScreenStart)
		;GUISetState(@SW_SHOW, $g_ScreenStart)
		$iLine = 10

		$u_Str1 = GUICtrlCreateLabel("Main Menu", 0, $iLine, $c_iSSwidth, 48, $SS_CENTER) ; Height is twice font size
		GUICtrlSetFont($u_Str1, 24, 400, 0, "MS Sans Serif")
		$iLine += 48

		$u_Str2 = GUICtrlCreateLabel("High Scores", $c_iSSleft, $iLine, $c_iSSwidth, 24, $SS_CENTER) ; Height is twice font size
		GUICtrlSetFont($u_Str2, 12, 400, 0, "MS Sans Serif")

		$iLine += 24

		$l_HiScore[0] = GUICtrlCreateLabel('1', $c_iSSleft, $iLine, $c_iSSwidth, 24) ; Height is twice font size
		GUICtrlSetFont($l_HiScore[0], 12, 400, 0, "MS Sans Serif")

		$iLine += 24
		$l_HiScore[1] = GUICtrlCreateLabel('2', $c_iSSleft, $iLine, $c_iSSwidth, 24) ; Height is twice font size
		GUICtrlSetFont($l_HiScore[1], 12, 400, 0, "MS Sans Serif")
		$iLine += 24

		$l_HiScore[2] = GUICtrlCreateLabel('X', $c_iSSleft, $iLine, $c_iSSwidth, 24) ; Height is twice font size
		GUICtrlSetFont($l_HiScore[2], 12, 400, 0, "MS Sans Serif")
		$iLine += 24

		$l_HiScore[3] = GUICtrlCreateLabel('X', $c_iSSleft, $iLine, $c_iSSwidth, 24) ; Height is twice font size
		GUICtrlSetFont($l_HiScore[3], 12, 400, 0, "MS Sans Serif")
		$iLine += 24

		$l_HiScore[4] = GUICtrlCreateLabel('X', $c_iSSleft, $iLine, $c_iSSwidth, 24) ; Height is twice font size
		GUICtrlSetFont($l_HiScore[4], 12, 400, 0, "MS Sans Serif")
		$iLine += 24

		$l_HiScore[5] = GUICtrlCreateLabel('X', $c_iSSleft, $iLine, $c_iSSwidth, 24) ; Height is twice font size
		GUICtrlSetFont($l_HiScore[5], 12, 400, 0, "MS Sans Serif")
		$iLine += 24

		$l_HiScore[6] = GUICtrlCreateLabel('X', $c_iSSleft, $iLine, $c_iSSwidth, 24) ; Height is twice font size
		GUICtrlSetFont($l_HiScore[6], 12, 400, 0, "MS Sans Serif")
		$iLine += 24

		$l_HiScore[7] = GUICtrlCreateLabel('X', $c_iSSleft, $iLine, $c_iSSwidth, 24) ; Height is twice font size
		GUICtrlSetFont($l_HiScore[7], 12, 400, 0, "MS Sans Serif")

		$iLine += 24 * 2

		$Action1 = GUICtrlCreateLabel('1. Start Game', $c_iSSleft, $iLine, $c_iSSwidth, 24) ; Height is twice font size
		GUICtrlSetFont(-1, 12, 400, 0, "MS Sans Serif")
		$iLine += 24
		$Action2 = GUICtrlCreateLabel('2. Demo Level', $c_iSSleft, $iLine, $c_iSSwidth, 24) ; Height is twice font size
		GUICtrlSetFont(-1, 12, 400, 0, "MS Sans Serif")
		$iLine += 24
		$Action3 = GUICtrlCreateLabel('3. Instructions', $c_iSSleft, $iLine, $c_iSSwidth, 24) ; Height is twice font size
		GUICtrlSetFont(-1, 12, 400, 0, "MS Sans Serif")
		$iLine += 24
		$Action4 = GUICtrlCreateLabel('4. Settings  (not functional)', $c_iSSleft, $iLine, $c_iSSwidth, 24) ; Height is twice font size
		GUICtrlSetFont(-1, 12, 400, 0, "MS Sans Serif")
		$iLine += 24
		$ActionE = GUICtrlCreateLabel('E. Edit Level', $c_iSSleft, $iLine, $c_iSSwidth, 24) ; Height is twice font size
		GUICtrlSetFont(-1, 12, 400, 0, "MS Sans Serif")
		$iLine += 24 * 2
		$ActionQ = GUICtrlCreateLabel('Q. Quit', $c_iSSleft, $iLine, $c_iSSwidth, 24) ; Height is twice font size
		GUICtrlSetFont(-1, 12, 400, 0, "MS Sans Serif")

	EndIf

	For $i = 0 To 7
		GUICtrlSetData($l_HiScore[$i], $g_aHiScore[$i + 1][0] & " - " & $g_aHiScore[$i + 1][2] & " - " & $g_aHiScore[$i + 1][1])
	Next

	GUISetState(@SW_SHOW, $g_ScreenStart)

	$g_iSSkey = 0

	Local $aAccelKeys[6][2] = [["1", $Action1], ["2", $Action2], ["3", $Action3], ["4", $Action4], ["e", $ActionE], ["q", $ActionQ]]
	GUISetAccelerators($aAccelKeys, $g_ScreenStart)

	Do
		Switch GUIGetMsg()
			Case $Action1
				$g_iSSkey = 1
			Case $Action2
				$g_iSSkey = 2
			Case $Action3
				$g_iSSkey = 3
			Case $Action4
				$g_iSSkey = 4
			Case $ActionE
				$g_iSSkey = 5
			Case $ActionQ, $GUI_EVENT_CLOSE
				$g_iSSkey = 6
		EndSwitch
	Until $g_iSSkey <> 0

	GUISetAccelerators($g_ScreenStart, $g_ScreenStart)
	GUISetState(@SW_HIDE, $g_ScreenStart)

	Return $g_iSSkey
EndFunc   ;==>StartScreen
#CS INFO
	298214 V7 3/17/2019 2:57:13 AM V6 3/13/2019 1:18:00 AM V5 3/11/2019 2:08:18 AM V4 3/9/2019 11:04:16 PM
#CE

;-----------------------------------------

;Game Screen
Func GameScreen()
	Local $x, $y

	If $g_ScreenGame = 0 Then

		$g_ScreenGame = GUICreate("The Game - " & $g_ver, $g_Size * $s_iBoxX + $s_iBorder * 2, $g_Size * $s_iBoxY + $s_iBorder * 2 + $s_iLines * $s_iLineSpace + $g_Top, -1, -1)
		GUISetState(@SW_SHOW, $g_ScreenGame)
		;GUISetState(@SW_HIDE, $g_ScreenGame)

		;Setup the Display pointers and clears them with Empty Black

		For $y = 0 To $s_iBoxY - 1
			For $x = 0 To $s_iBoxX - 1
				$g_aMap[$x][$y] = -1
				$g_aDisplayMap[$x][$y] = GUICtrlCreatePic(@ScriptDir & "\Pic\Edge.jpg", $x * $g_Size + $s_iBorder, $y * $g_Size + $s_iBorder, $g_Size, $g_Size)
			Next
		Next

		;Display Static lines
		GUICtrlCreateLabel($g_ver & "   ", $s_iTextBorder, $s_iLineTop + (($s_iLineSpace * 6) - 8) + ($s_iLineSpace / 4), $s_iLineX - 10, 24, $SS_RIGHT) ; Height is twice font size
		GUICtrlSetFont(-1, 6, 400, 0, "MS Sans Serif")

		$g_cGquit = GUICtrlCreateLabel('To exist the game tap "C"', $s_iTextBorder, $s_iLineTop + $s_iLineSpace * 5, $s_iLineX / 4, 24) ; Height is twice font size
		GUICtrlSetFont(-1, 12, 400, 0, "MS Sans Serif")

		$g_cGdie = GUICtrlCreateLabel('If Stuck tap "ESC" to restart level', $s_iTextBorder, $s_iLineTop + $s_iLineSpace * 4, $s_iLineX / 4, 24) ; Height is twice font size
		GUICtrlSetFont(-1, 12, 400, 0, "MS Sans Serif")

		$g_cGdown = GUICtrlCreateDummy()
		$g_cGright = GUICtrlCreateDummy()
		$g_cGleft = GUICtrlCreateDummy()

		$g_cGtitle = GUICtrlCreateLabel("XXXXXXXXXXXXXXXXX", $s_iBorder, $s_iLineTop - 24, $s_iLineX, 24, $SS_CENTER) ; Height is twice font size
		GUICtrlSetFont($g_cGtitle, 12, 400, 0, "MS Sans Serif")

		DisplayDiamond(0)
		DisplayLives(0)
		DisplayScore(0)
		DisplayStatus(0)
		DisplayKey(0)
		DisplayTorch(0)
		BonusBar()

	EndIf
	DisplayStatus(98)

	GUISetState(@SW_SHOW, $g_ScreenGame)

	$g_fHitTorch = False
	$g_fHitKey = False

	$g_iScore = 0
	$g_iLives = 6

	;GAME
	$g_irLevel = 1
	$g_ScoreStr1 = False

	If $g_fDemoLevel Then
		$g_irLevel = 0
	Else
		If $g_fEditDemo = False Then
			$g_irLevel = InputCode()
			If $g_irLevel = 1 Then
				$g_ScoreStr1 = True
			EndIf
		EndIf
	EndIf

	$g_iBonus = 0
	BonusBar()

	;g_fLevelComplete
	While 1
		DisplayLives(1)
		;$g_fHitKey = $g_fHitKeySave
		$g_fKeyUsed = False
		DisplayKey(1)
		DisplayTorch(1)

		Game($g_irLevel)

		If $g_ExitGameScreen Then
			ExitLoop
		EndIf

		If $g_iDead > 0 Then

			DisplayStatus($g_iDead)

			If $g_fDemoLevel = False And $g_fEditDemo = False Then
				$g_iLives -= 1
				If $g_iLives = 0 Then
					If $g_ScoreStr1 Then
						UpDateHiScore()
					EndIf
					ExitLoop
				EndIf
			EndIf
		EndIf

		If $g_fDemoLevel Then
			If $g_fLevelComplete Then
				ExitLoop
			EndIf
		Else
			If $g_fEditDemo Then
				If MsgBox(4, "Test Game", "Continue Test Game") = $IDNO Then
					ExitLoop
				EndIf
			EndIf
		EndIf

		;Level complete.
		If $g_fLevelComplete Then

			If $g_irLevel < 5 Then
				SkipPassCode($g_irLevel)
			EndIf
			$g_irLevel += 1
		EndIf
	WEnd

	$g_ExitGameScreen = False

	GUISetState(@SW_HIDE, $g_ScreenGame)

EndFunc   ;==>GameScreen
#CS INFO
	213673 V13 3/21/2019 4:38:57 PM V12 3/17/2019 2:57:13 AM V11 3/15/2019 8:15:41 PM V10 3/15/2019 1:53:48 AM
#CE

Func SkipPassCode($Lv)
	If $TESTING Then
		$TESTING = False
		MsgBox($MB_TOPMOST, "Level Skip", "To start at Level " & $Lv + 1 & " next time enter Code: " & Code($Lv))
		$TESTING = True
	Else
		MsgBox($MB_TOPMOST, "Level Skip", "To start at Level " & $Lv + 1 & " next time enter Code: " & Code($Lv))
	EndIf
EndFunc   ;==>SkipPassCode
#CS INFO
	22533 V1 2/24/2019 6:05:52 PM
#CE

Func Code($value)
	Return StringMid("ABCDFGHKLMN", (($value - 1) * 2) + 1, 4)
EndFunc   ;==>Code
#CS INFO
	6374 V2 2/26/2019 9:53:21 PM V1 2/24/2019 6:05:52 PM
#CE

;return level
Func CkCode($string)
	Local $code

	If $TESTING Then
		If StringLen($string) < 3 Then
			$code = Number($string)
			If $code = 0 Then $code = 1
			Return $code
		EndIf
	EndIf

	Local $i
	For $i = 1 To 5
		If $string = Code($i) Then
			Return $i + 1
		EndIf
	Next
	Return 1 ; code fails start at level 1
EndFunc   ;==>CkCode
#CS INFO
	21405 V3 2/24/2019 6:05:52 PM V2 2/24/2019 10:03:19 AM V1 2/24/2019 12:43:53 AM
#CE

Func InputCode()
	Local $code = InputBox("Test Code", "To skip to level, enter the 4 letter code: ")
	If $code = "" Then
		Return 1 ; no code start at level 1
	EndIf
	Return CkCode($code)
EndFunc   ;==>InputCode
#CS INFO
	15631 V4 2/26/2019 9:53:21 PM V3 2/26/2019 8:07:26 AM V2 2/24/2019 6:05:52 PM V1 2/24/2019 10:03:19 AM
#CE

Func MoveYouObject($TestX, $TestY)
	ClearObject($g_iYouX, $g_iYouY)
	$g_iYouX = $TestX
	$g_iYouY = $TestY
	ShowObject($g_iYouX, $g_iYouY, 1)

EndFunc   ;==>MoveYouObject
#CS INFO
	13281 V1 2/24/2019 6:05:52 PM
#CE

Func ShowBlock() ;around you
	Local $xx, $x, $yy, $y

	If $g_fHiddenActive Then
		If $g_fHitTorch Then
			For $xx = -2 To 2
				$x = $g_iYouX + $xx
				If $x >= 1 And $x <= 80 Then
					For $yy = -2 To 3
						$y = $g_iYouY + $yy
						If $y >= 1 And $y <= 20 Then
							Switch $g_aMap[$x][$y]
								Case 17, 18
									Show2List($x, $y) ; = 17
							EndSwitch
						EndIf
					Next
				EndIf
			Next
			DoList()
		EndIf
	EndIf
EndFunc   ;==>ShowBlock
#CS INFO
	25519 V3 3/26/2019 8:43:36 PM V2 2/24/2019 6:05:52 PM V1 2/24/2019 12:43:53 AM
#CE

;Global $g_aHidden[50][4] ;0 = 0,1 used : 1 New 1=Show 2=Hide, 0=no Change, 2 X : 3 Y
Func DoList()
	Local $flag = True
	Local $i, $xx
	For $i = 0 To $g_iHiddenCnt - 1
		If $g_aHidden[$i][0] <> 0 Then
			$flag = False
			Switch $g_aHidden[$i][1]
				Case 2, 3 ;show block and make type to 1
					If $g_aHidden[$i][1] = 3 Then
						ShowObject($g_aHidden[$i][2], $g_aHidden[$i][3], 18)
					EndIf
					$g_aHidden[$i][1] = 1
					$flag = False
				Case 1 ; hide block ; was not told to keep on
					ShowObject($g_aHidden[$i][2], $g_aHidden[$i][3], 17)
					$g_aHidden[$i][0] = 0
			EndSwitch
		EndIf
	Next
	If $flag Then
		$g_iHiddenCnt = 0
	EndIf
	If $_debug Then
		If $g_iHiddenCnt > 0 Then
		EndIf
	EndIf
EndFunc   ;==>DoList
#CS INFO
	42666 V3 3/11/2019 6:15:52 PM V2 2/24/2019 6:05:52 PM V1 2/24/2019 12:43:53 AM
#CE

Func Show2List($x, $y)
	Local $Free = -1
	Local $i

	For $i = 0 To $g_iHiddenCnt - 1
		If $Free = -1 Then
			If $g_aHidden[$i][0] = 0 Then ;found an empty one
				$Free = $i
			EndIf
		EndIf
		If $g_aHidden[$i][0] = 1 Then
			If $g_aHidden[$i][2] = $x And $g_aHidden[$i][3] = $y Then ;found
				$g_aHidden[$i][1] = 2 ;keep it on
				Return
			EndIf
		EndIf
	Next
	If $Free = -1 Then ; add a new point
		$i = $g_iHiddenCnt
		$g_iHiddenCnt += 1
	Else
		$i = $Free
	EndIf
	$g_aHidden[$i][0] = 1
	$g_aHidden[$i][1] = 3 ; says it not on turn it on
	$g_aHidden[$i][2] = $x
	$g_aHidden[$i][3] = $y
EndFunc   ;==>Show2List
#CS INFO
	40772 V2 2/24/2019 6:05:52 PM V1 2/24/2019 12:43:53 AM
#CE

;Collision
Func Collision($TestX, $TestY)

	Return $g_aMap[$TestX][$TestY]

EndFunc   ;==>Collision
#CS INFO
	7106 V1 2/24/2019 6:05:52 PM
#CE

;=====================================================
Func Game($Level)
	Local $flag, $y, $NextMsg

	;Game Loop
	DisplayStatus(98)

	$g_fHiddenActive = False

	If $g_fEditDemo Then
		SayLoadLevel(1, $g_ScreenGame, "Edit Test")
	ElseIf $Level = 0 Then
		SayLoadLevel(1, $g_ScreenGame, "Demo")
	Else
		SayLoadLevel(1, $g_ScreenGame, $Level)
	EndIf
	LoadLevel($Level)
	SayLoadLevel()
	$g_iDead = 0
	$g_fTap = True
	$g_hTick = TimerInit()
	$g_fLevelComplete = False
	BonusBar()

	$g_cKeyEvent = False
	$g_iDirection = "-"
	$NextMsg = 0

	Local $aAccelKey[][] = [["{RIGHT}", $g_cGright], ["{LEFT}", $g_cGleft], ["c", $g_cGquit], ["{DOWN}", $g_cGdown], ["{ESC}", $g_cGdie]]
	GUISetAccelerators($aAccelKey, $g_ScreenGame)

	While 1
		If $g_iDead > 0 Then
			ExitLoop ;Exit game and to lives count down
		EndIf

		If $g_fLevelComplete Then
			$g_iScore += Int(5 * (4500 - $g_iBonus) / 45)
			DisplayScore(1)
			MsgBox($MB_TOPMOST, "Level Complete", "Bonus: " & Int(5 * (4500 - $g_iBonus) / 45))
			$g_iBonus = 0
			BonusBar()
			ExitLoop
		EndIf
		If $NextMsg = 0 Then
			$y = GUIGetMsg()
		Else
			$y = $NextMsg
			$NextMsg = 0
		EndIf
		If $y > 0 Then
			Switch $y
				Case $g_cGleft
					Do
					Until GUIGetMsg() <> $g_cGleft
					$g_iDirection = "L"
					$g_cKeyEvent = True
				Case $g_cGright
					Do
					Until GUIGetMsg() <> $g_cGright
					$g_iDirection = "R"
					$g_cKeyEvent = True
				Case $g_cGquit
					$g_ExitGameScreen = True
					ExitLoop
				Case $g_cGdown
					Do
					Until GUIGetMsg() <> $g_cGdown
					$g_iDirection = "D"
					$g_cKeyEvent = True
				Case $g_cGdie
					Do
					Until GUIGetMsg() <> $g_cGdie
					$g_iDead = 5
			EndSwitch
		Else
			If $y <> 0 Then
				Do
					$y = GUIGetMsg()
				Until $y = 0
				$NextMsg = $y
			EndIf
		EndIf

		MoveYou()
		If $g_ExitGameScreen Then
			ExitLoop
		EndIf
		MoveObj()
		$flag = True
		While $flag
			$flag = MoveYouDown()
			If $flag Then
				Sleep(1)
			EndIf
		WEnd
		ShowBlock()
		Tick()
	WEnd
	GUISetAccelerators($g_ScreenGame, $g_ScreenGame)
	;g_fLevelComplete

EndFunc   ;==>Game
#CS INFO
	133178 V13 3/28/2019 9:21:27 PM V12 3/17/2019 2:57:13 AM V11 3/17/2019 1:23:00 AM V10 3/15/2019 8:15:41 PM
#CE

Func Tick() ; ave time in 50ms  per loop  + 100ms
	Local $fdiff = -1
	Local Static $l_iBonusShow = 0

	$g_iBonus += 1
	$l_iBonusShow += 1
	If $l_iBonusShow > 40 Then
		$l_iBonusShow = 0
		BonusBar()
	EndIf

	While 1
		$fdiff = TimerDiff($g_hTick)
		If $fdiff > 200 Then ;150
			ExitLoop
		EndIf
	WEnd
	$g_hTick = TimerInit()
EndFunc   ;==>Tick
#CS INFO
	23417 V4 3/21/2019 4:38:57 PM V3 2/26/2019 9:53:21 PM V2 2/26/2019 8:07:26 AM V1 2/24/2019 6:05:52 PM
#CE

Func LoadLevel($Level)
	Local $a, $x, $y, $sLevel, $hlv

	If $g_fEditDemo Then
		$g_iLives = 99
		$hlv = FileOpen($g_FileName, $FO_BINARY)

	Else
		If $Level < 10 Then
			$sLevel = "0" & String($Level)
		Else
			$sLevel = String($Level)
		EndIf

		$hlv = FileOpen(@ScriptDir & "\Levels\level" & $sLevel & ".lvl", $FO_BINARY)
	EndIf

	If $hlv = -1 Then MsgBox(1, "Level error", "Level did not open " & $sLevel)

	If $hlv = -1 Then Exit

	$g_GameTitle = ""
	$a = ""
	Do
		$g_GameTitle = $g_GameTitle & BinaryToString($a)
		$a = FileRead($hlv, 1)
	Until $a = 127 ;"7F"

	; Fix old format or it someone changes level title outside of program
	$g_GameDate = StringLeft($g_GameTitle, 6)
	If StringIsDigit(StringLeft($g_GameDate, 2)) = 1 Then ;all numbers
		$g_GameTitle = StringMid($g_GameTitle, 7)
	Else ; Not all numberts
		; tell the game NO DATE
		$g_GameDate = 0
	EndIf

	;GUICtrlSetBkColor($ls_StatusLabel, $COLOR_GREEN)
	;GUICtrlSetFont($ls_StatusLabel, 12, 400, 0, "MS Sans Serif")
	If $g_GameDate = 0 Then
		GUICtrlSetData($g_cGtitle, $g_GameTitle)
	Else
		$x = Trim(StringMid($g_GameDate, 3, 2)) & "/" & Trim(StringMid($g_GameDate, 5, 2)) & "/20" & StringLeft($g_GameDate, 2)
		GUICtrlSetData($g_cGtitle, $g_GameTitle & " -- " & $x)
	EndIf

	;Offset
	;$s_iMapOffsetX = 0 ;Int(($s_iBoxX - $s_iMapSizeX) / 2) - 1
	;$s_iMapOffsetY = 1 ;Int(($s_iBoxY - $s_iMapSizeY) / 2)
	;$s_iMapSizeX = 80
	;$s_iMapSizeY = 20

	For $y = 0 To 49
		For $x = 0 To 5
			$g_aObj[$y][$x] = 0
		Next
	Next

	For $y = 1 To 20 ;$s_iMapSizeY
		For $x = 1 To 80 ;$s_iMapSizeX
			$g_aMap[$x][$y] = 0
			;	$a = FileRead($hlv, 1)
			;	$g_aMap[$x][$y] = $a
			$g_aMap[$x][$y] = Int(FileRead($hlv, 1), 1)
			;$g_aMap[$x][$y] = FileRead($hlv, 1)
			;ShowObject($X, $Y, -1)
		Next
	Next
	FileClose($hlv)

	$g_fHiddenActive = False
	$g_iDiamondCnt = 0
	$g_iObjCnt = 0
	For $y = 1 To $s_iMapSizeY
		For $x = 1 To $s_iMapSizeX
			$a = $g_aMap[$x][$y]
			;	1 Lift direction 0 = bottom 1  = up, -1 = down
			;	2 Missile
			;	3 Hor Letter 11
			;   4 Hor Letter 13
			;   5 Vert 15
			;   6 Platform Down 9

			Switch $a
				Case 17, 12, 14, 16 ;hidden
					$g_fHiddenActive = True
			EndSwitch

			Switch $a
				Case 8 ;Lift
					$g_aObj[$g_iObjCnt][$s_ObjType] = 1
					$g_aObj[$g_iObjCnt][$s_ObjAct] = 0
					$g_aObj[$g_iObjCnt][$s_ObjX] = $x
					$g_aObj[$g_iObjCnt][$s_ObjY] = $y
					$g_aObj[$g_iObjCnt][$s_HalfSpeed] = True
					$g_iObjCnt += 1

				Case 31 ; Fountain now Missile
					$g_aObj[$g_iObjCnt][$s_ObjType] = 2
					$g_aObj[$g_iObjCnt][$s_ObjAct] = 0
					$g_aObj[$g_iObjCnt][$s_ObjX] = $x
					$g_aObj[$g_iObjCnt][$s_ObjY] = $y
					$g_iTapObj = $g_iObjCnt
					$g_iObjCnt += 1

				Case 11, 12 ;Hor Letter = always active
					; $s_HVdir =1
					$g_aObj[$g_iObjCnt][$s_ObjType] = 3
					$g_aObj[$g_iObjCnt][$s_ObjX] = $x
					$g_aObj[$g_iObjCnt][$s_ObjY] = $y
					$g_aObj[$g_iObjCnt][$s_HVdir] = 1 ; define picture too
					If $a = 12 Then
						$g_aObj[$g_iObjCnt][$s_HidAtc] = True
					Else
						$g_aObj[$g_iObjCnt][$s_HidAtc] = False
					EndIf
					$g_iObjCnt += 1

				Case 13, 14 ;Hor Letter = always active
					; $s_HVdir =1
					$g_aObj[$g_iObjCnt][$s_ObjType] = 4
					$g_aObj[$g_iObjCnt][$s_ObjX] = $x
					$g_aObj[$g_iObjCnt][$s_ObjY] = $y
					$g_aObj[$g_iObjCnt][$s_HVdir] = -1 ; define picture too
					If $a = 14 Then
						$g_aObj[$g_iObjCnt][$s_HidAtc] = True
						$g_fHiddenActive = True
					Else
						$g_aObj[$g_iObjCnt][$s_HidAtc] = False
					EndIf
					$g_iObjCnt += 1

				Case 15 ;Vert = always active
					; $s_HVdir =1
					$g_aObj[$g_iObjCnt][$s_ObjType] = 5
					$g_aObj[$g_iObjCnt][$s_ObjX] = $x
					$g_aObj[$g_iObjCnt][$s_ObjY] = $y
					$g_aObj[$g_iObjCnt][$s_HalfSpeed] = True
					$g_aObj[$g_iObjCnt][$s_HVdir] = 1 ; define picture too
					;If $a = 16 Then
					;	$g_aObj[$g_iObjCnt][$s_HidAtc] = True
					;	$g_fHiddenActive = True
					;Else
					$g_aObj[$g_iObjCnt][$s_HidAtc] = False
					;EndIf
					$g_iObjCnt += 1

				Case 9 ; Platform Down
					$g_aObj[$g_iObjCnt][$s_ObjType] = 6
					$g_aObj[$g_iObjCnt][$s_ObjAct] = 0
					$g_aObj[$g_iObjCnt][$s_ObjX] = $x
					$g_aObj[$g_iObjCnt][$s_ObjY] = $y
					$g_aObj[$g_iObjCnt][$s_HalfSpeed] = True
					$g_iObjCnt += 1

				Case 2 ;Diamond
					$g_iDiamondCnt += 1
				Case 1 ; You
					$g_iYouX = $x
					$g_iYouY = $y

			EndSwitch
			ShowObject($x, $y, -1)

		Next
	Next

	;_FileWriteFromArray("Obj.txt", $g_aObj)
	;_FileWriteFromArray("Map.txt", $g_aMap)

	;ConsoleWrite( @ScriptLineNumber & ') : ObjCnt = ' & $g_iObjCnt & @CRLF )

	DisplayDiamond(1)
	DisplayScore(1)
	DisplayStatus(99)
EndFunc   ;==>LoadLevel
#CS INFO
	309324 V9 3/27/2019 9:45:39 PM V8 3/21/2019 4:38:57 PM V7 3/20/2019 8:28:55 PM V6 3/11/2019 6:15:52 PM
#CE

Func MoveObj()
	Local $x, $y, $i

	If $g_iObjCnt > 0 Then
		For $i = 0 To $g_iObjCnt - 1
			$x = $g_aObj[$i][$s_ObjX]
			$y = $g_aObj[$i][$s_ObjY]
			Switch $g_aObj[$i][$s_ObjType]
				Case 1 ; Lift
					If $g_aObj[$i][$s_HalfSpeed] Then
						MoveLift($i, $x, $y)
						$g_aObj[$i][$s_HalfSpeed] = False
					Else
						$g_aObj[$i][$s_HalfSpeed] = True
					EndIf

				Case 2 ; Missile
					MoveMissile($i, $x, $y)

				Case 3, 4 ;Hor Letter 11
					MoveHorz($i, $x, $y, True)

				Case 5 ;Vert
					If $g_aObj[$i][$s_HalfSpeed] Then
						MoveVert($i, $x, $y, True)
						$g_aObj[$i][$s_HalfSpeed] = False
					Else
						$g_aObj[$i][$s_HalfSpeed] = True
					EndIf

				Case 6 ;Platform down
					If $g_aObj[$i][$s_HalfSpeed] Then
						MovePlatform($i, $x, $y)
						$g_aObj[$i][$s_HalfSpeed] = False
					Else
						$g_aObj[$i][$s_HalfSpeed] = True
					EndIf
			EndSwitch
		Next
	EndIf
EndFunc   ;==>MoveObj
#CS INFO
	58351 V3 3/8/2019 8:44:22 AM V2 2/24/2019 6:05:52 PM V1 2/24/2019 12:43:53 AM
#CE

Func ClearDisplayMap()
	Local $x, $y

	For $y = 1 To 16
		For $x = 1 To 77
			GUICtrlSetImage($g_aDisplayMap[$x][$y], @ScriptDir & "\Pic\Black.jpg")
		Next
	Next
EndFunc   ;==>ClearDisplayMap
#CS INFO
	13761 V2 2/24/2019 6:05:52 PM V1 2/24/2019 12:43:53 AM
#CE

;-------------------------------

Func MoveYou()
	Local $Hit, $TestX, $TestY

	Switch $g_iDirection
		Case "R"
			$TestX = $g_iYouX + 1
			$TestY = $g_iYouY + 1
			$Hit = Collision($TestX, $TestY)
			If $Hit = 0 Then ;OK
				$g_cMoveEvent = "D" ; You down
				MoveYouObject($TestX, $TestY)
				MoveYouUp()

			ElseIf $Hit = 5 Then ;Door
				DoDoor($TestX, $TestY)
			ElseIf $Hit >= 11 And $Hit <= 16 Then
				$g_iDead = 3
			EndIf
		Case "L"
			$TestX = $g_iYouX - 1
			$TestY = $g_iYouY + 1
			$Hit = Collision($TestX, $TestY)

			If $Hit = 0 Then ;OK
				$g_cMoveEvent = "D" ; You down
				MoveYouObject($TestX, $TestY) ; Test is new location.
				MoveYouUp()
			ElseIf $Hit = 5 Then ;Door
				DoDoor($TestX, $TestY)
			ElseIf $Hit >= 11 And $Hit <= 16 Then
				$g_iDead = 3
			EndIf
		Case "D"
			$TestX = $g_iYouX
			$TestY = $g_iYouY - 1
			$Hit = Collision($TestX, $TestY)

			Switch $Hit
				Case 2 ;diamond
					DoDiamond($TestX, $TestY)
				Case 3 ;Key
					DoKey($TestX, $TestY)
				Case 4 ;Torch
					DoTorch($TestX, $TestY)
				Case 7, 30 ;Tap
					DoTap($TestX, $TestY)
			EndSwitch

	EndSwitch
	$g_iDirection = "-"

EndFunc   ;==>MoveYou
#CS INFO
	70464 V3 3/13/2019 1:18:00 AM V2 2/24/2019 6:05:52 PM V1 2/24/2019 12:43:53 AM
#CE

Func MoveYouDown()
	Local $Hit, $TestX, $TestY

	$TestX = $g_iYouX
	$TestY = $g_iYouY - 1
	$Hit = Collision($TestX, $TestY)
	If $Hit = $EMPTY Then ;OK
		MoveYouObject($TestX, $TestY)
		; ShowBlock()
		Return True
	Else
		Switch $Hit
			Case 6 ; Water
				$g_iDead = 1
		EndSwitch
	EndIf
	; ShowBlock()
	Return False
EndFunc   ;==>MoveYouDown
#CS INFO
	23924 V2 2/24/2019 6:05:52 PM V1 2/24/2019 12:43:53 AM
#CE

;Ride Lift up  - Return True - False=You died
Func MoveYouUp()
	Sleep(20)
EndFunc   ;==>MoveYouUp
#CS INFO
	3921 V1 2/24/2019 6:05:52 PM
#CE

Func MoveLift($i, $x, $y)
	Local $Ly, $ColY, $Hit

	$Ly = $g_aObj[$i][$s_LiftY]
	If $g_aObj[$i][$s_ObjAct] = 1 Then

		If $g_aMap[$x][$Ly + 1] = $YOU Then ;Look for You
			;You still on top - ME move up one
			; You move up one
			;	Check for Collision.
			; Lift color replace you

			$ColY = $Ly + 2
			$Hit = Collision($g_iYouX, $ColY)
			If $Hit <> $EMPTY Then
				$g_iDead = 2
				;Return
			EndIf

			$g_iYouY = $Ly + 2
			;$g_aMap[$x][$ly + 1] = 8 ;Lift
			ShowObject($x, $Ly + 1, 8)
			;$g_aMap[$g_iYouX][$ly + 2] = 1 ;You
			ShowObject($g_iYouX, $Ly + 2, $YOU)
			; ShowBlock()
			$g_aObj[$i][$s_LiftY] = $Ly + 1
		Else
			If $y = $Ly Then
				$g_aObj[$i][$s_ObjAct] = 0
			Else
				$g_aMap[$x][$Ly] = $EMPTY ;Lift down one
				ShowObject($x, $Ly, 0)

				$g_aObj[$i][$s_LiftY] = $Ly - 1
			EndIf
		EndIf

		;Check you on lift  YES go up, NO go down
		; YES
		; ME move up one
		;	Check for Collision.
		; Lift color replace you

		;No
		; Lift clear at current location
		; Change current location down one
		; if new location at org location disactivate.

	Else
		If $g_aMap[$x][$y + 1] == $YOU Then ;Look for You
			$g_aObj[$i][$s_ObjAct] = 1 ; Found You turn lift on
			$g_aObj[$i][$s_LiftY] = $y

		EndIf
	EndIf

EndFunc   ;==>MoveLift
#CS INFO
	82901 V3 3/11/2019 2:08:18 AM V2 2/24/2019 6:05:52 PM V1 2/24/2019 12:43:53 AM
#CE

Func DoDiamond($x, $y)
	$g_iDiamondCnt -= 1
	$g_iScore += 50
	DisplayScore(1)
	ClearObject($x, $y)
	DisplayDiamond(1)
	$g_cMoveEvent = "D"
	If $g_iDiamondCnt = 0 Then
		$g_fLevelComplete = True
	EndIf
EndFunc   ;==>DoDiamond
#CS INFO
	16555 V1 2/24/2019 6:05:52 PM
#CE

Func DisplayDiamond($do)

	Switch $do
		Case 0 ;Create label

			Global $DiamondLabel = GUICtrlCreateLabel("Diamonds = XX  ", $s_iHalfway, $s_iLineTop + $s_iLineSpace * 1, $s_iHalfway - $s_iTextBorder, 24, $SS_RIGHT) ; Height is twice font size
			GUICtrlSetFont(-1, 12, 400, 0, "MS Sans Serif")
		Case 1 ; Updated label
			GUICtrlSetData($DiamondLabel, " Diamonds = " & String($g_iDiamondCnt) & "  ")
			GUICtrlSetFont($DiamondLabel, 12, 400, 0, "MS Sans Serif")
	EndSwitch

EndFunc   ;==>DisplayDiamond
#CS INFO
	36795 V1 2/24/2019 6:05:52 PM
#CE

;--------------------------------------

Func DisplayLives($do)
	Local Static $g_iLivesLabel

	Switch $do
		Case 0 ;Create label
			$g_iLivesLabel = GUICtrlCreateLabel("Lives = X", $s_iTextBorder, $s_iLineTop + $s_iLineSpace * 1, $s_iHalfway, 24) ; Height is twice font size
			GUICtrlSetFont($g_iLivesLabel, 12, 400, 0, "MS Sans Serif")
		Case 1 ; Updated label
			GUICtrlSetData($g_iLivesLabel, "Lives = " & String($g_iLives) & " ")
			GUICtrlSetFont($g_iLivesLabel, 12, 400, 0, "MS Sans Serif")
	EndSwitch

EndFunc   ;==>DisplayLives
#CS INFO
	36866 V2 2/26/2019 9:53:21 PM V1 2/24/2019 6:05:52 PM
#CE

Func DisplayScore($do)
	Local Static $ls_iScoreLabel = 0

	Switch $do
		Case 0 ;Create label
			$ls_iScoreLabel = GUICtrlCreateLabel("Score = XXXXXXX", $s_iTextBorder, $s_iLineTop + $s_iLineSpace * 2, $s_iHalfway, 24) ; Height is twice font size
			GUICtrlSetFont($ls_iScoreLabel, 12, 400, 0, "MS Sans Serif")
		Case 1 ; Updated label
			GUICtrlSetData($ls_iScoreLabel, "Score = " & String($g_iScore) & "           ")
			GUICtrlSetFont($ls_iScoreLabel, 12, 400, 0, "MS Sans Serif")
	EndSwitch

EndFunc   ;==>DisplayScore
#CS INFO
	38034 V2 3/21/2019 4:38:57 PM V1 2/24/2019 6:05:52 PM
#CE

Func DisplayStatus($do)
	Local $sLevel
	Local Static $ls_StatusLabel = 0

	Switch $do
		Case 0 ;Create label
			$ls_StatusLabel = GUICtrlCreateLabel("XXXXXXXXXXXXXXXXX", $s_iBorder, $s_iLineTop, $s_iLineX, 24, $SS_CENTER) ; Height is twice font size
			GUICtrlSetFont($ls_StatusLabel, 12, 400, 0, "MS Sans Serif")

		Case 98 ; Loading
			GUICtrlSetBkColor($ls_StatusLabel, $COLOR_LIME)
			GUICtrlSetFont($ls_StatusLabel, 12, 400, 0, "MS Sans Serif")
			GUICtrlSetData($ls_StatusLabel, "Loading level")

		Case 99 ; Level # Green
			If $g_fEditDemo Then
				$sLevel = "Edit Test"
			ElseIf $g_irLevel = 0 Then
				$sLevel = "Demo"
			Else
				$sLevel = String($g_irLevel)
			EndIf
			GUICtrlSetBkColor($ls_StatusLabel, $COLOR_GREEN)
			GUICtrlSetFont($ls_StatusLabel, 12, 400, 0, "MS Sans Serif")
			GUICtrlSetData($ls_StatusLabel, "Level = " & $sLevel)

		Case 1 ; Death Water red
			GUICtrlSetData($ls_StatusLabel, "Death Water")
			GUICtrlSetBkColor($ls_StatusLabel, $COLOR_RED)
			GUICtrlSetFont($ls_StatusLabel, 12, 400, 0, "MS Sans Serif")
			Sleep(2500)
		Case 2 ; Death Lift red
			GUICtrlSetData($ls_StatusLabel, "Death Lift")
			GUICtrlSetBkColor($ls_StatusLabel, $COLOR_RED)
			GUICtrlSetFont($ls_StatusLabel, 12, 400, 0, "MS Sans Serif")
			Sleep(2500)
		Case 3 ; Death collision red
			GUICtrlSetData($ls_StatusLabel, "Death Collision")
			GUICtrlSetBkColor($ls_StatusLabel, $COLOR_RED)
			GUICtrlSetFont($ls_StatusLabel, 12, 400, 0, "MS Sans Serif")
			Sleep(2500)
		Case 4 ; Death missile red
			GUICtrlSetData($ls_StatusLabel, "Death Missile")
			GUICtrlSetBkColor($ls_StatusLabel, $COLOR_RED)
			GUICtrlSetFont($ls_StatusLabel, 12, 400, 0, "MS Sans Serif")
			Sleep(2500)
		Case 5 ; ESC death
			GUICtrlSetData($ls_StatusLabel, "ESC pressed - Forced Death")
			GUICtrlSetBkColor($ls_StatusLabel, $COLOR_RED)
			GUICtrlSetFont($ls_StatusLabel, 12, 400, 0, "MS Sans Serif")
			Sleep(2500)
	EndSwitch

EndFunc   ;==>DisplayStatus
#CS INFO
	142197 V5 3/21/2019 4:38:57 PM V4 3/13/2019 1:52:12 PM V3 3/13/2019 1:18:00 AM V2 2/24/2019 6:05:52 PM
#CE

Func DoKey($x, $y)
	$g_fHitKey = True
	$g_iScore += 500
	DisplayScore(1)
	DisplayKey(1)
	ClearObject($x, $y)
	$g_cMoveEvent = "D"
EndFunc   ;==>DoKey
#CS INFO
	10699 V3 3/11/2019 6:15:52 PM V2 2/26/2019 8:07:26 AM V1 2/24/2019 6:05:52 PM
#CE

Func DisplayKey($do)
	Local Static $KeyLabel
	;pause("Key " & $do)
	Switch $do
		Case 0 ;Create label
			$KeyLabel = GUICtrlCreateLabel("KEY  ", $s_iHalfway, $s_iLineTop + $s_iLineSpace * 3, $s_iHalfway - $s_iTextBorder, 24, $SS_RIGHT)
			GUICtrlSetFont(-1, 12, 400, 0, "MS Sans Serif")
		Case 1 ; Updated label

			If $g_fHitKey Then
				;pause("On")
				GUICtrlSetData($KeyLabel, "KEY  ")
				GUICtrlSetFont($KeyLabel, 12, 400, 0, "MS Sans Serif")
			Else
				;		pause("Off")
				GUICtrlSetData($KeyLabel, "     ")
				GUICtrlSetFont($KeyLabel, 12, 400, 0, "MS Sans Serif")
			EndIf
	EndSwitch
EndFunc   ;==>DisplayKey
#CS INFO
	41970 V2 3/28/2019 9:21:27 PM V1 3/11/2019 6:15:52 PM
#CE

Func DisplayTorch($do)
	Local Static $TorchLabel
	;Pause("Torch " & $do)
	Switch $do
		Case 0 ;Create label
			$TorchLabel = GUICtrlCreateLabel("TORCH  ", $s_iHalfway, $s_iLineTop + $s_iLineSpace * 4, $s_iHalfway - $s_iTextBorder, 24, $SS_RIGHT)
			GUICtrlSetFont(-1, 12, 400, 0, "MS Sans Serif")

		Case 1 ; Updated label

			If $g_fHitTorch Then
				GUICtrlSetData($TorchLabel, "TORCH  ")
				GUICtrlSetFont($TorchLabel, 12, 400, 0, "MS Sans Serif")
			Else
				GUICtrlSetData($TorchLabel, "       ")
				GUICtrlSetFont($TorchLabel, 12, 400, 0, "MS Sans Serif")
			EndIf
	EndSwitch
EndFunc   ;==>DisplayTorch
#CS INFO
	42419 V2 3/28/2019 9:21:27 PM V1 3/11/2019 6:15:52 PM
#CE

Func DoTorch($x, $y)
	$g_fHitTorch = True
	$g_iScore += 500
	DisplayScore(1)
	DisplayTorch(1)
	ClearObject($x, $y)
	$g_cMoveEvent = "D"
EndFunc   ;==>DoTorch
#CS INFO
	11559 V3 3/11/2019 6:15:52 PM V2 2/26/2019 8:07:26 AM V1 2/24/2019 6:05:52 PM
#CE

;Static $s_MissileX
;Static $s_MissileY

Func MoveMissile($i, $x, $y)
	Local $cx, $cy, $Hit, $mx, $my, $tx, $ty

	;Check tap To see If off.
	If $g_aObj[$i][$s_ObjAct] = 0 Then ; Not active
		; look to see if you are on a X or Y line
		If $x = $g_iYouX Or $y = $g_iYouY Then ;found you
			$g_aObj[$i][$s_ObjAct] = 1
			$g_aObj[$i][$s_MissileX] = $x
			$g_aObj[$i][$s_MissileY] = $y
		EndIf
	Else ; Active
		If $g_fTap = False Then
			Return
		EndIf
		$mx = $g_aObj[$i][$s_MissileX]
		$my = $g_aObj[$i][$s_MissileY]
		$tx = $mx
		$ty = $my
		$cx = 0
		$cy = 0
		If $mx < $g_iYouX Then
			$tx = $mx + 1
		ElseIf $mx > $g_iYouX Then
			$tx = $mx - 1
		EndIf
		$Hit = Collision($tx, $ty)
		If $Hit = $YOU Then
			$g_iDead = 4
		ElseIf $Hit = $EMPTY Then
			$cx = $tx
			$cy = $ty
			;;ClearObject($mx, $my)
			;ShowObject($tx, $ty, 31)
			;$g_aObj[$i][$s_MissileX] = $tx
			;$g_aObj[$i][$s_MissileY] = $ty
		Else
			$tx = $mx
		EndIf

		If $g_iDead <> 4 Then
			If $my < $g_iYouY Then
				$ty = $my + 1
			ElseIf $my > $g_iYouY Then
				$ty = $my - 1
			EndIf
			$Hit = Collision($tx, $ty)
			If $Hit = $YOU Then
				$g_iDead = 4
			ElseIf $Hit = $EMPTY Then
				ClearObject($mx, $my)
				ShowObject($tx, $ty, 31)
				$g_aObj[$i][$s_MissileX] = $tx
				$g_aObj[$i][$s_MissileY] = $ty
			ElseIf $cx <> 0 Then
				ClearObject($mx, $my)
				ShowObject($cx, $cy, 31)
				$g_aObj[$i][$s_MissileX] = $cx
				$g_aObj[$i][$s_MissileY] = $cy

			EndIf
		EndIf
	EndIf
EndFunc   ;==>MoveMissile
#CS INFO
	92883 V2 2/24/2019 6:05:52 PM V1 2/24/2019 12:43:53 AM
#CE

Func DoTap($tx, $ty)
	Local $x, $y

	If $g_fTap Then
		$g_fTap = False
		If $g_aObj[$g_iTapObj][$s_ObjAct] = 1 Then
			$x = $g_aObj[$g_iTapObj][$s_MissileX]
			$y = $g_aObj[$g_iTapObj][$s_MissileY]
			ClearObject($x, $y)
			$x = $g_aObj[$g_iTapObj][$s_ObjX]
			$y = $g_aObj[$g_iTapObj][$s_ObjY]
			ShowObject($x, $y, 31)
			$g_aObj[$g_iTapObj][$s_ObjAct] = 0
		EndIf
		ShowObject($tx, $ty, 30)

	Else
		;$g_fTap = True
		;ShowObject($tx, $ty, 7)
	EndIf
EndFunc   ;==>DoTap
#CS INFO
	33440 V3 3/13/2019 1:52:12 PM V2 2/24/2019 6:05:52 PM V1 2/24/2019 12:43:53 AM
#CE

;Always active
; $s_HVdir = -1 or 1  define pic
Func MoveHorz($i, $x, $y, $flag)
	Local $tx, $Hit

	$tx = $x + $g_aObj[$i][$s_HVdir]
	$Hit = Collision($tx, $y)
	If $Hit = $YOU Then
		$g_iDead = 3
	ElseIf $Hit = $EMPTY Then
		ClearObject($x, $y)
		If $g_aObj[$i][$s_HidAtc] Then
			If $g_aObj[$i][$s_HVdir] = 1 Then
				ShowObject($tx, $y, 12)
			Else
				ShowObject($tx, $y, 14)
			EndIf
		Else
			If $g_aObj[$i][$s_HVdir] = 1 Then
				ShowObject($tx, $y, 11)
			Else
				ShowObject($tx, $y, 13)
			EndIf
		EndIf
		$g_aObj[$i][$s_ObjX] = $tx
	Else ;collision
		If $flag Then ; keep it from locking up
			$g_aObj[$i][$s_HVdir] *= -1
			CheckOtherOne($tx, $y, $i)
			MoveHorz($i, $x, $y, False)

		EndIf
	EndIf

EndFunc   ;==>MoveHorz
#CS INFO
	45400 V2 2/24/2019 6:05:52 PM V1 2/24/2019 12:43:53 AM
#CE

Func CheckOtherOne($x, $y, $other)
	Local $i, $xx, $yy
	For $i = 0 To $g_iObjCnt - 1
		If $i <> $other Then
			$xx = $g_aObj[$i][$s_ObjX]
			$yy = $g_aObj[$i][$s_ObjY]
			Switch $g_aObj[$i][$s_ObjType]
				Case 3, 4, 5 ;Hor Letter 11
					If $x = $xx And $y = $yy Then
						$g_aObj[$i][$s_HVdir] *= -1
						ExitLoop
					EndIf
			EndSwitch
		EndIf
	Next
EndFunc   ;==>CheckOtherOne
#CS INFO
	24868 V3 3/8/2019 8:44:22 AM V2 2/24/2019 6:05:52 PM V1 2/24/2019 12:43:53 AM
#CE

;Always active
; $s_HVdir = -1 or 1  define pic
; if you are above move down if empty below  down one
; if another platform check below it for empty
; if another platform do the above
; if empty move all plotform down one
; if not empty and not move hor and mark stuck. and do nothing
; if move hor  do nothing

; end

Func MovePlatform($i, $x, $y)
	Local $ty, $Hit

	$ty = $y + 1 ; above you?
	$Hit = Collision($x, $ty)
	If $Hit = $YOU Then
		$ty = $y
		$Hit = 9
		If $g_fPlatformDelay = True Then
			$g_fPlatformDelay = False

			While $Hit = 9
				$ty = $ty - 1 ; below empty
				$Hit = Collision($x, $ty)
				If $Hit = $EMPTY Then
					ClearObject($x, $y) ; ~
					ShowObject($x, $ty, 9)
					$g_aObj[$i][$s_ObjY] = $ty
				EndIf
			WEnd
		Else
			$g_fPlatformDelay = True
		EndIf
	EndIf
EndFunc   ;==>MovePlatform
#CS INFO
	31967 V2 2/24/2019 6:05:52 PM V1 2/24/2019 12:43:53 AM
#CE

Func MoveVert($i, $x, $y, $flag)
	Local $ty, $Hit

	$ty = $y + $g_aObj[$i][$s_HVdir]
	$Hit = Collision($x, $ty)
	If $Hit = $YOU Then
		$g_iDead = 3
	ElseIf $Hit = $EMPTY Then
		ClearObject($x, $y)
		If $g_aObj[$i][$s_HVdir] = 1 Then
			ShowObject($x, $ty, 15)
		Else
			ShowObject($x, $ty, 16)
		EndIf
		$g_aObj[$i][$s_ObjY] = $ty
	Else ;collision
		If $flag Then ; keep it from locking up
			$g_aObj[$i][$s_HVdir] *= -1
			CheckOtherOne($x, $ty, $i)

			MoveVert($i, $x, $y, False)
		EndIf
	EndIf
EndFunc   ;==>MoveVert
#CS INFO
	35254 V3 3/21/2019 4:38:57 PM V2 2/24/2019 6:05:52 PM V1 2/24/2019 12:43:53 AM
#CE

Func DoDoor($x, $y)
	If $g_fHitKey Then
		ClearObject($x, $y)
	EndIf
EndFunc   ;==>DoDoor
#CS INFO
	6396 V2 3/11/2019 6:15:52 PM V1 2/24/2019 6:05:52 PM
#CE

Func ShowObject($x, $y, $a)
	Local $Color, $xx, $yy, $e
	Local $vx, $vy

	If $a >= 0 Then
		$g_aMap[$x][$y] = $a
	Else
		$a = $g_aMap[$x][$y]
	EndIf
	$Color = "White.jpg"
	If $g_fHiddenActive Or $g_fEditMode Then
		Switch $a
			Case 12, 14 ;, 16  Vert not user reaction time is to short.
				; Check if near you location.
				If $g_fEditMode Then
					If $a = 12 Then
						$Color = "HiddenRight.jpg"
					Else
						$Color = "HiddenLeft.jpg"
					EndIf
				Else
					If $g_fHitTorch Then
						$xx = Abs($x - $g_iYouX)
						$yy = Abs($y - $g_iYouY)
						If $xx <= 3 And $yy <= 3 Then
							$Color = "Hidden.jpg"
						Else
							$Color = "Black.jpg"
						EndIf
					Else
						$Color = "Black.jpg"
					EndIf

				EndIf
		EndSwitch
	EndIf
	Switch $a
		Case 0, 32
			$Color = "Black.jpg"
		Case 18
			If $g_fHitTorch Then
				$Color = "Hidden.jpg"
			Else
				$Color = "Black.jpg"
			EndIf
		Case 17
			If $g_fEditMode Then
				$Color = "Hidden.jpg"
			Else
				$Color = "Black.jpg" ;"Edge.jpg"
			EndIf
		Case 5
			If $g_fKeyUsed Then
				$Color = "Black.jpg"
			Else
				$Color = "Door.jpg"
			EndIf
		Case 11 ;Hor Right
			$Color = "HorLetR.jpg"
		Case 13 ;Hor Left
			$Color = "HorLetL.jpg"
		Case 7 ;tap on
			$Color = "MissileOn.jpg"
		Case 30 ; tap off
			$Color = "MissileOff.jpg"
		Case 15 ;Ver Block
			$Color = "VertDown.jpg"
		Case 16 ;Ver Block
			$Color = "Vert.jpg"
		Case 31
			$Color = "Missile.jpg"
		Case 128
			$Color = "blue.jpg"
		Case 129
			$Color = "green.jpg"
		Case 130
			$Color = "darkblue.jpg"
		Case 131
			$Color = "darkestblue.jpg"
		Case 132
			$Color = "darkgreen.jpg"
		Case 133
			$Color = "darkred.jpg"
		Case 134
			$Color = "red.jpg"
		Case 135
			$Color = "earth.jpg"
		Case 136
			$Color = "lblue.jpg"

		Case 6
			$Color = "Water.jpg"

		Case 8 ;lift
			$Color = "lift.jpg"
		Case 9 ;Platform down
			$Color = "Tildy.jpg"
		Case 2
			$Color = "diamond.jpg"
		Case 1 ; You
			$Color = "face.jpg"

		Case 4 ;Torch
			If $g_fHitTorch Then
				$Color = "Black.jpg"
				$g_aMap[$x][$y] = $EMPTY
			Else
				$Color = "Torch.jpg"
			EndIf
		Case 3
			If $g_fHitKey Then
				$Color = "Black.jpg"
				$g_aMap[$x][$y] = $EMPTY
			Else
				$Color = "key.jpg"
			EndIf

		Case 47
			$Color = "Slach.jpg"
		Case 58
			$Color = "colon.jpg"
		Case 45
			$Color = "dash.jpg"

		Case 65 To 90, 48 To 57

			$Color = Chr($a) & ".jpg"

	EndSwitch
	If $Color = "White.jpg" Then
		_DebugReportVar("Missing picture", $a)
	EndIf

	$vx = $x + $s_iMapOffsetX
	$vy = $s_iMapSizeY - $y + $s_iMapOffsetY
	If $g_fEditMode Then
		GUICtrlSetImage($g_aEditMap[$vx][$vy], @ScriptDir & "\pic\" & $Color)

	Else
		$e = GUICtrlSetImage($g_aDisplayMap[$vx][$vy], @ScriptDir & "\pic\" & $Color)
		If $e = 0 Then
			MsgBox($MB_TOPMOST, "Pic Error", $Color)
		EndIf
	EndIf
EndFunc   ;==>ShowObject
#CS INFO
	176963 V9 3/21/2019 4:38:57 PM V8 3/20/2019 8:28:55 PM V7 3/17/2019 2:57:13 AM V6 3/8/2019 8:44:22 AM
#CE

Func BonusBar()
	Local Static $idProgressbar = 0
	;$s_iLineTop + $s_iLineSpace * 1, $s_iHalfway, 24
	If $idProgressbar = 0 Then
		$idProgressbar = GUICtrlCreateProgress($s_iHalfway - 300, $s_iLineTop + $s_iLineSpace * 2, 600, 20, $PBS_SMOOTH)
		GUICtrlCreateLabel("Bonus", $s_iHalfway - 20, $s_iLineTop + $s_iLineSpace * 3, 100, 24) ;  100 don't make too big over write KEY on screen
	EndIf
	If $g_iBonus < 4500 Then
		GUICtrlSetData($idProgressbar, (4500 - $g_iBonus) / 45)
	Else
		GUICtrlSetData($idProgressbar, 0)
	EndIf

EndFunc   ;==>BonusBar
#CS INFO
	40314 V3 3/28/2019 9:21:27 PM V2 3/21/2019 4:38:57 PM V1 2/26/2019 9:53:21 PM
#CE

Main()
Exit

Func Trim($s)
	Return StringStripWS($s, 7)
EndFunc   ;==>Trim
#CS INFO
	4672 V1 3/27/2019 9:45:39 PM
#CE

;~T !!ScriptMine.exe V0.33 25 Mar 2019 - 3/28/2019 9:21:27 PM
