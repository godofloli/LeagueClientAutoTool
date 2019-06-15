#Region ;**** Directives created by AutoIt3Wrapper_GUI ****
#AutoIt3Wrapper_Icon=itsIcon.ico
#AutoIt3Wrapper_Compile_Both=y
#AutoIt3Wrapper_Res_Comment=By The God Of Loli
#AutoIt3Wrapper_Res_Description=League Client Auto Tool 3.1
#AutoIt3Wrapper_Res_Fileversion=3.1.0.4
#AutoIt3Wrapper_Res_Fileversion_AutoIncrement=y
#AutoIt3Wrapper_Res_ProductName=LCAT
#AutoIt3Wrapper_Res_ProductVersion=3.1.0
#AutoIt3Wrapper_Res_CompanyName=God Of Loli
#AutoIt3Wrapper_Res_Language=1033
#EndRegion ;**** Directives created by AutoIt3Wrapper_GUI ****
; *** Start added by AutoIt3Wrapper ***
#include <MsgBoxConstants.au3>
; *** End added by AutoIt3Wrapper ***

#include <ButtonConstants.au3>
#include <ComboConstants.au3>
#include <EditConstants.au3>
#include <ColorConstants.au3>
#include <GUIConstantsEx.au3>
#include <StaticConstants.au3>
#include <WindowsConstants.au3>
#include <ImageSearch2015.au3>
#include <AutoItConstants.au3>
#include <WinAPI.au3>



#Region ### START Koda GUI section ### Form=c:\users\selfmade\documents\autoit\lcat 3.0\lcatform.kxf
Global $Paused
HotKeySet("{ESC}", "TogglePause")
$Form1_1 = GUICreate("LCAT 3.1", 400, 600, 369, 71)
$Tab1 = GUICtrlCreateTab(0, 0, 400, 600)
$TabSheet1 = GUICtrlCreateTabItem("BlindPick Tools")
GUICtrlSetState(-1,$GUI_SHOW)
$lane_bp = GUICtrlCreateCombo("", 160, 96, 89, 25, BitOR($CBS_DROPDOWN, $CBS_AUTOHSCROLL))
GUICtrlSetData($lane_bp, "Toplane|Jungle|Midlane|AdCarry|Support", "Toplane")

$champ_bp = GUICtrlCreateList("", 107, 168, 201, 279)
GUICtrlSetData($champ_bp, "Aatrox|Ahri|Akali|Alistar|Amumu|Anivia|Annie|Ashe|Aurelion Sol|Azir|Bard|Blitzcrank|Brand|Braum|Caitlyn|Camille|Cassiopeia|Cho'Gath|Corki|Darius|Diana|Dr Mundo|Draven|Ekko|Elise|Evelynn|Ezreal|Fiddlesticks|Fiora|Fizz|Galio|Gangplank|Garen|Gnar|Gragas|Graves|Hecarim|Heimerdinger|Illaoi|Irelia|Ivern|Janna|Jarvan|Jax|Jayce|Jhin|Jinx|Kalista|Karma|Karthus|Kassadin|Katarina|Kayle|Kayn|Kennen|Kha'Zix|Kindred|Kled|Kog'Maw|Leblanc|Lee Sin|Leona|Lissandra|Lucian|Lulu|Lux|Malphite|Malzahar|Maokai|Master Yi|Miss Fortune|Mordekaiser|Morgana|Nami|Nasus|Nautilus|Nidalee|Neeko|Nocturne|Nunu & Willump|Olaf|Orianna|Pantheon|Poppy|Pyke|Quinn|Rakan|Rammus|Rek'sai|Renekton|Rengar|Riven|Rumble|Ryze|Sejuani|Shaco|Shen|Shyvana|Singed|Sion|Sivir|Skarner|Sona|Soraka|Swain|Sylas|Syndra|Tahm Kench|Taliyah|Talon|Taric|Teemo|Thresh|Tristana|Trundle|Tryndamere|Twisted Fate|Twitch|Udyr|Urgot|Varus|Vayne|Veigar|Vel'Koz|Vi|Viktor|Vladimir|Volibear|Warwick|Wukong|Xayah|Xerath|Xin Zhao|Yasuo|Yorick|Yuumi|Zac|Zed|Ziggs|Zilean|Zoe|Zyra", "Rengar")
$launch_bp = GUICtrlCreateButton("Launch That Shit", 131, 488, 147, 25)
$Label5 = GUICtrlCreateLabel("Choose lane", 152, 72, 92, 22, $SS_CENTER)
GUICtrlSetFont(-1, 11, 400, 0, "Vermin Vibes")
$Label6 = GUICtrlCreateLabel("champion to pick", 144, 136, 122, 22, $SS_CENTER)
GUICtrlSetFont(-1, 11, 400, 0, "Vermin Vibes")
$TabSheet2 = GUICtrlCreateTabItem("DraftPick Tools")

$dp_primary = GUICtrlCreateCombo("", 56, 120, 105, 25, BitOR($CBS_DROPDOWN,$CBS_AUTOHSCROLL))
GUICtrlSetData($dp_primary, "Toplane|Jungle|Midlane|AdCarry|Support", "Jungle")
$dp_secondary = GUICtrlCreateCombo("", 224, 120, 105, 25, BitOR($CBS_DROPDOWN,$CBS_AUTOHSCROLL))
GUICtrlSetData($dp_secondary, "Toplane|Jungle|Midlane|AdCarry|Support", "Toplane")
$Label1 = GUICtrlCreateLabel("Primary Lane", 56, 88, 97, 22, $SS_CENTER)
GUICtrlSetFont(-1, 11, 400, 0, "Vermin Vibes")
$Label2 = GUICtrlCreateLabel("Secondary Lane", 224, 88, 118, 22, $SS_CENTER)
GUICtrlSetFont(-1, 11, 400, 0, "Vermin Vibes")
$champ_ban_dp = GUICtrlCreateList("", 32, 208, 145, 240)
GUICtrlSetData($champ_ban_dp, "Aatrox|Ahri|Akali|Alistar|Amumu|Anivia|Annie|Ashe|Aurelion Sol|Azir|Bard|Blitzcrank|Brand|Braum|Caitlyn|Camille|Cassiopeia|Cho'Gath|Corki|Darius|Diana|Dr Mundo|Draven|Ekko|Elise|Evelynn|Ezreal|Fiddlesticks|Fiora|Fizz|Galio|Gangplank|Garen|Gnar|Gragas|Graves|Hecarim|Heimerdinger|Illaoi|Irelia|Ivern|Janna|Jarvan|Jax|Jayce|Jhin|Jinx|Kalista|Karma|Karthus|Kassadin|Katarina|Kayle|Kayn|Kennen|Kha'Zix|Kindred|Kled|Kog'Maw|Leblanc|Lee Sin|Leona|Lissandra|Lucian|Lulu|Lux|Malphite|Malzahar|Maokai|Master Yi|Miss Fortune|Mordekaiser|Morgana|Nami|Nasus|Nautilus|Nidalee|Neeko|Nocturne|Nunu & Willump|Olaf|Orianna|Pantheon|Poppy|Pyke|Quinn|Rakan|Rammus|Rek'sai|Renekton|Rengar|Riven|Rumble|Ryze|Sejuani|Shaco|Shen|Shyvana|Singed|Sion|Sivir|Skarner|Sona|Soraka|Swain|Sylas|Syndra|Tahm Kench|Taliyah|Talon|Taric|Teemo|Thresh|Tristana|Trundle|Tryndamere|Twisted Fate|Twitch|Udyr|Urgot|Varus|Vayne|Veigar|Vel'Koz|Vi|Viktor|Vladimir|Volibear|Warwick|Wukong|Xayah|Xerath|Xin Zhao|Yasuo|Yorick|Yuumi|Zac|Zed|Ziggs|Zilean|Zoe|Zyra", "Sylas")

$champ_pick_dp = GUICtrlCreateList("", 208, 208, 145, 240)
GUICtrlSetData($champ_pick_dp, "Aatrox|Ahri|Akali|Alistar|Amumu|Anivia|Annie|Ashe|Aurelion Sol|Azir|Bard|Blitzcrank|Brand|Braum|Caitlyn|Camille|Cassiopeia|Cho'Gath|Corki|Darius|Diana|Dr Mundo|Draven|Ekko|Elise|Evelynn|Ezreal|Fiddlesticks|Fiora|Fizz|Galio|Gangplank|Garen|Gnar|Gragas|Graves|Hecarim|Heimerdinger|Illaoi|Irelia|Ivern|Janna|Jarvan|Jax|Jayce|Jhin|Jinx|Kalista|Karma|Karthus|Kassadin|Katarina|Kayle|Kayn|Kennen|Kha'Zix|Kindred|Kled|Kog'Maw|Leblanc|Lee Sin|Leona|Lissandra|Lucian|Lulu|Lux|Malphite|Malzahar|Maokai|Master Yi|Miss Fortune|Mordekaiser|Morgana|Nami|Nasus|Nautilus|Nidalee|Neeko|Nocturne|Nunu & Willump|Olaf|Orianna|Pantheon|Poppy|Pyke|Quinn|Rakan|Rammus|Rek'sai|Renekton|Rengar|Riven|Rumble|Ryze|Sejuani|Shaco|Shen|Shyvana|Singed|Sion|Sivir|Skarner|Sona|Soraka|Swain|Sylas|Syndra|Tahm Kench|Taliyah|Talon|Taric|Teemo|Thresh|Tristana|Trundle|Tryndamere|Twisted Fate|Twitch|Udyr|Urgot|Varus|Vayne|Veigar|Vel'Koz|Vi|Viktor|Vladimir|Volibear|Warwick|Wukong|Xayah|Xerath|Xin Zhao|Yasuo|Yorick|Yuumi|Zac|Zed|Ziggs|Zilean|Zoe|Zyra", "Rengar")

$Label3 = GUICtrlCreateLabel("Champion to ban", 56, 176, 123, 22, $SS_CENTER)

GUICtrlSetFont(-1, 11, 400, 0, "Vermin Vibes")
$Label4 = GUICtrlCreateLabel("Champion to pick", 216, 176, 123, 22, $SS_CENTER)
GUICtrlSetFont(-1, 11, 400, 0, "Vermin Vibes")
$launch_dp = GUICtrlCreateButton("Launch That Shit", 131, 488, 147, 25)
$TabSheet3 = GUICtrlCreateTabItem("OP Tools")
$auto_accept = GUICtrlCreateCheckbox("Enable AutoAccept", 16, 56, 209, 33, BitOR($GUI_SS_DEFAULT_CHECKBOX,$BS_CENTER))
GUICtrlSetFont(-1, 15, 400, 0, "Segoe UI Symbol")
$pingtest = GUICtrlCreateButton("Launch Ping Checker", 95, 100, 219, 57)
GUICtrlCreateTabItem("")
GUISetState(@SW_SHOW)
#EndRegion ### END Koda GUI section ###

While 1
	$msg = GUIGetMsg()

	Sleep(10)
	$msg = GUIGetMsg()
	Switch $msg
		Case $GUI_EVENT_CLOSE
			Exit

		Case $pingtest
			runPingTest()
		Case $launch_bp
			Image_Scan_blindpick()
		Case $launch_dp
			BanChamp_draftpick()
		Case $auto_accept
			AutoAccept()
	EndSwitch
WEnd

Func TogglePause()
	$Paused = Not $Paused
	While $Paused
		Sleep(100)
		ToolTip('Script is Paused press ESC to resume!', 500, 500)
	WEnd
	ToolTip("")

EndFunc   ;==>TogglePause

Func runPingTest()
	Sleep(300)
	Run("PingChecker.exe")
EndFunc   ;==>runPingTest

Func reportNiggers()
	$report_msg = "this person has been negative towards me in any way possible either through his playstyle or the chat ."
	WinActivate('League of Legends')
	;1st player
	ControlClick('League of Legends', '', '[classnn:Chrome_RenderWidgetHostHWND1]', 'left', 1, 161, 288)
	Sleep(100)
	ControlClick('League of Legends', '', '[classnn:Chrome_RenderWidgetHostHWND1]', 'left', 1, 161, 288)
	Sleep(1000)
	ControlClick('League of Legends', '', '[classnn:Chrome_RenderWidgetHostHWND1]', 'left', 1, 382, 204)
	Sleep(500)
	ControlClick('League of Legends', '', '[classnn:Chrome_RenderWidgetHostHWND1]', 'left', 1, 382, 238)
	Sleep(500)
	ControlClick('League of Legends', '', '[classnn:Chrome_RenderWidgetHostHWND1]', 'left', 1, 382, 328)
	Sleep(1000)
	ControlClick('League of Legends', '', '[classnn:Chrome_RenderWidgetHostHWND1]', 'left', 1, 507, 464)
	ControlSend('League of Legends', '', '[classnn:Chrome_RenderWidgetHostHWND1]', $report_msg)
	Sleep(1000)
	ControlClick('League of Legends', '', '[classnn:Chrome_RenderWidgetHostHWND1]', 'left', 1, 505, 496)
	Sleep(1000)
	;2nd player
	ControlClick('League of Legends', '', '[classnn:Chrome_RenderWidgetHostHWND1]', 'left', 1, 161, 318)
	Sleep(100)
	ControlClick('League of Legends', '', '[classnn:Chrome_RenderWidgetHostHWND1]', 'left', 1, 161, 318)
	Sleep(1000)
	ControlClick('League of Legends', '', '[classnn:Chrome_RenderWidgetHostHWND1]', 'left', 1, 382, 204)
	Sleep(500)
	ControlClick('League of Legends', '', '[classnn:Chrome_RenderWidgetHostHWND1]', 'left', 1, 382, 238)
	Sleep(500)
	ControlClick('League of Legends', '', '[classnn:Chrome_RenderWidgetHostHWND1]', 'left', 1, 382, 328)
	Sleep(1000)
	ControlClick('League of Legends', '', '[classnn:Chrome_RenderWidgetHostHWND1]', 'left', 1, 507, 464)
	ControlSend('League of Legends', '', '[classnn:Chrome_RenderWidgetHostHWND1]', $report_msg)
	Sleep(1000)
	ControlClick('League of Legends', '', '[classnn:Chrome_RenderWidgetHostHWND1]', 'left', 1, 505, 496)
	Sleep(1000)
	;3rd player
	ControlClick('League of Legends', '', '[classnn:Chrome_RenderWidgetHostHWND1]', 'left', 1, 161, 350)
	Sleep(100)
	ControlClick('League of Legends', '', '[classnn:Chrome_RenderWidgetHostHWND1]', 'left', 1, 161, 350)
	Sleep(1000)
	ControlClick('League of Legends', '', '[classnn:Chrome_RenderWidgetHostHWND1]', 'left', 1, 382, 204)
	Sleep(500)
	ControlClick('League of Legends', '', '[classnn:Chrome_RenderWidgetHostHWND1]', 'left', 1, 382, 238)
	Sleep(500)
	ControlClick('League of Legends', '', '[classnn:Chrome_RenderWidgetHostHWND1]', 'left', 1, 382, 328)
	Sleep(1000)
	ControlClick('League of Legends', '', '[classnn:Chrome_RenderWidgetHostHWND1]', 'left', 1, 507, 464)
	ControlSend('League of Legends', '', '[classnn:Chrome_RenderWidgetHostHWND1]', $report_msg)
	Sleep(1000)
	ControlClick('League of Legends', '', '[classnn:Chrome_RenderWidgetHostHWND1]', 'left', 1, 505, 496)
	Sleep(1000)
	;4th player
	ControlClick('League of Legends', '', '[classnn:Chrome_RenderWidgetHostHWND1]', 'left', 1, 161, 378)
	Sleep(100)
	ControlClick('League of Legends', '', '[classnn:Chrome_RenderWidgetHostHWND1]', 'left', 1, 161, 378)
	Sleep(1000)
	ControlClick('League of Legends', '', '[classnn:Chrome_RenderWidgetHostHWND1]', 'left', 1, 382, 204)
	Sleep(500)
	ControlClick('League of Legends', '', '[classnn:Chrome_RenderWidgetHostHWND1]', 'left', 1, 382, 238)
	Sleep(500)
	ControlClick('League of Legends', '', '[classnn:Chrome_RenderWidgetHostHWND1]', 'left', 1, 382, 328)
	Sleep(1000)
	ControlClick('League of Legends', '', '[classnn:Chrome_RenderWidgetHostHWND1]', 'left', 1, 507, 464)
	ControlSend('League of Legends', '', '[classnn:Chrome_RenderWidgetHostHWND1]', $report_msg)
	Sleep(1000)
	ControlClick('League of Legends', '', '[classnn:Chrome_RenderWidgetHostHWND1]', 'left', 1, 505, 496)
	Sleep(1000)
	;5th player
	ControlClick('League of Legends', '', '[classnn:Chrome_RenderWidgetHostHWND1]', 'left', 1, 161, 404)
	Sleep(100)
	ControlClick('League of Legends', '', '[classnn:Chrome_RenderWidgetHostHWND1]', 'left', 1, 161, 404)
	Sleep(1000)
	ControlClick('League of Legends', '', '[classnn:Chrome_RenderWidgetHostHWND1]', 'left', 1, 382, 204)
	Sleep(500)
	ControlClick('League of Legends', '', '[classnn:Chrome_RenderWidgetHostHWND1]', 'left', 1, 382, 238)
	Sleep(500)
	ControlClick('League of Legends', '', '[classnn:Chrome_RenderWidgetHostHWND1]', 'left', 1, 382, 328)
	Sleep(1000)
	ControlClick('League of Legends', '', '[classnn:Chrome_RenderWidgetHostHWND1]', 'left', 1, 507, 464)
	ControlSend('League of Legends', '', '[classnn:Chrome_RenderWidgetHostHWND1]', $report_msg)
	Sleep(1000)
	ControlClick('League of Legends', '', '[classnn:Chrome_RenderWidgetHostHWND1]', 'left', 1, 505, 496)
EndFunc   ;==>reportNiggers
Func Image_Scan_blindpick()
	Opt("PixelCoordMode", 1)
	Opt("MouseCoordMode", 1)
	$x1 = 0
	$y1 = 0
	$broji = 0
	WinWait("League of Legends", "")
	WinActivate("League of Legends", "")

	Do
		$honorskip = "all image\honorskip.PNG"
		$playagain = "all image\playagain.PNG"
		$play = "all image\play.PNG"
		$pvp = "all image\pvp.PNG"
		$pvp_clicked = "all image\pvp_clicked.PNG"
		$reconect = "all image\reconect.PNG"
		$find_match = "all image\find match.PNG"
		$accept = "all image\accept.PNG"
		$leavequeue = "all image\leavequeue.PNG"
		$ok = "all image\ok.PNG"

		$searchhonorskip = _imageSearch($honorskip, 1, $x1, $y1, 15, 0)
		$searchplayagain = _imageSearch($playagain, 1, $x1, $y1, 15, 0)
		$searchplay = _imageSearch($play, 1, $x1, $y1, 15, 0)
		$searchpvp = _imageSearch($pvp, 1, $x1, $y1, 15, 0)
		$searchpvp_clicked = _imageSearch($pvp_clicked, 1, $x1, $y1, 15, 0)
		$searchreconect = _imageSearch($reconect, 1, $x1, $y1, 15, 0)
		$searchfind_match = _imageSearch($find_match, 1, $x1, $y1, 15, 0)
		$searchaccept = _imageSearch($accept, 1, $x1, $y1, 15, 0)
		$searchileavequeue = _imageSearch($leavequeue, 1, $x1, $y1, 15, 0)
		$searchiok = _imageSearch($ok, 1, $x1, $y1, 15, 0)
		Select
			Case $searchhonorskip = True
				MouseClick("left", $x1, $y1, 1, 20)
			Case $searchplayagain = True
				MouseClick("left", $x1, $y1, 1, 20)
				MouseMove(551, 257)
			Case $searchplay = True
				MouseClick("left", $x1, $y1, 1, 20)
				MouseMove(551, 257)
			Case $searchpvp_clicked = True
				MouseMove(551, 257)
			Case $searchpvp = True
				MouseClick("left", $x1, $y1, 1, 20)
				MouseMove(551, 257)
			Case $searchreconect = True
				MouseClick("left", $x1, $y1, 1, 20)
				MouseMove(551, 257)
			Case $searchfind_match = True
				MouseClick("left", $x1, $y1, 1, 20)
			Case $searchaccept = True
				MouseClick("left", $x1, $y1, 1, 20)
				MouseMove(551, 257)
				Function3_blindpick()
			Case $searchileavequeue = True
				Function3_blindpick()
			Case $searchiok = True
				MouseClick("left", $x1, $y1, 1, 20)
				MouseMove(551, 257)
			Case Else
				Sleep(100)
				$broji = $broji + 1
				If ProcessExists("League of Legends.exe") Then PlayGame_blindpick()

				If Not WinExists("League of Legends","") Then MsgBox($MB_TASKMODAL, "Maximize Window!", "Please Maximize your LoL Cilent Window and restart bot!")
		EndSelect
	Until $broji = 10 Or $searchpvp_clicked = True Or $searchreconect = True
	Function1_blindpick()
EndFunc   ;==>Image_Scan_blindpick
Func Function1_blindpick()
	$x1 = 0
	$y1 = 0
	$broji = 0
	WinWait("League of Legends", "")
	WinActivate("League of Legends", "")

	Do
		$5v5_clicked = "all image\5v5 clicked.PNG"
		$5v5 = "all image\5v5.PNG"
		$reconect = "all image\reconect.PNG"

		$search5v5_clicked = _imageSearch($5v5_clicked, 1, $x1, $y1, 15, 0)
		$search5v5 = _imageSearch($5v5, 1, $x1, $y1, 15, 0)
		$searchreconect = _imageSearch($reconect, 1, $x1, $y1, 15, 0)

		Select
			Case $search5v5_clicked = True
				MouseMove(551, 257)
			Case $search5v5 = True
				MouseClick("left", $x1, $y1, 1, 20)
				MouseMove(551, 257)
			Case $searchreconect = True
				MouseClick("left", $x1, $y1, 1, 20)
				MouseMove(551, 257)
			Case Else
				Sleep(100)
				$broji = $broji + 1
				If ProcessExists("League of Legends.exe") Then PlayGame_blindpick()
		EndSelect
	Until $broji = 20 Or $search5v5_clicked = True
	Function2_blindpick()
EndFunc   ;==>Function1_blindpick
Func Function2_blindpick()
	$x1 = 0
	$y1 = 0
	$broji = 0


	WinWait("League of Legends", "")
	WinActivate("League of Legends", "")
	MouseMove(551, 257)
	Do

		$draftpick = "all image\draftpick.PNG"
		$draftpick_clicked = "all image\draftpick clicked.PNG"
		$blindpick = "all image\blindpick.PNG"
		$blindpick_clicked = "all image\blindpick clicked.PNG"
		$reconect = "all image\reconect.PNG"

		$searchblindpick = _imageSearch($blindpick, 1, $x1, $y1, 15, 0)
		$searchblindpick_clicked = _imageSearch($blindpick_clicked, 1, $x1, $y1, 15, 0)
		$searchreconect = _imageSearch($reconect, 1, $x1, $y1, 15, 0)
		Select
			Case $searchblindpick_clicked = True
				MouseMove(551, 257)
			Case $searchblindpick = True
				MouseClick("left", $x1, $y1, 1, 20)
				MouseMove(551, 257)
			Case $searchreconect = True
				MouseClick("left", $x1, $y1, 1, 20)
				MouseMove(551, 257)

			Case Else
				Sleep(100)
				$broji = $broji + 1
				If ProcessExists("League of Legends.exe") Then PlayGame_blindpick()
		EndSelect
	Until $broji = 20 Or $searchblindpick_clicked = True
	Function3_blindpick()
EndFunc   ;==>Function2_blindpick
Func Function3_blindpick()
	$x1 = 0
	$y1 = 0

	MouseMove(551, 257)
	WinWait("League of Legends", "")
	WinActivate("League of Legends", "")
	Do
	$playagain = "all image\playagain.PNG"
	$confirm = "all image\confirm.PNG"
	$find_match = "all image\find match.PNG"
	$accept = "all image\accept.PNG"
	$reconect = "all image\reconect.PNG"
	$leavequeue = "all image\leavequeue.PNG"
	$iamin = "all image\iamin.PNG"
	$searchiamin = _imageSearch($iamin, 1, $x1, $y1, 15, 0)
	$searchplayagain = _imageSearch($playagain, 1, $x1, $y1, 15, 0)
	$searchconfirm = _imageSearch($confirm, 1, $x1, $y1, 15, 0)
	$searchfind_match = _imageSearch($find_match, 1, $x1, $y1, 15, 0)
	$searchaccept = _imageSearch($accept, 1, $x1, $y1, 15, 0)
	$searchreconect = _imageSearch($reconect, 1, $x1, $y1, 15, 0)
	$searchileavequeue = _imageSearch($leavequeue, 1, $x1, $y1, 15, 0)

	Select
		Case $searchplayagain = True
			MouseClick("left", $x1, $y1, 1, 20)
			MouseMove(551, 257)
			Image_Scan_blindpick()
		Case $searchconfirm = True
			MouseClick("left", $x1, $y1, 1, 20)
			MouseMove(551, 257)
		Case $searchfind_match = True
			MouseClick("left", $x1, $y1, 1, 20)
			MouseMove(551, 257)
		Case $searchaccept = True
			MouseClick("left", $x1, $y1, 1, 20)
			MouseMove(551, 257)
		Case $searchreconect = True
			MouseClick("left", $x1, $y1, 1, 20)
			MouseMove(551, 257)
		Case $searchreconect = True
			MouseClick("left", $x1, $y1, 1, 20)
			MouseMove(551, 257)
		Case Else
			Sleep(100)
			If ProcessExists("League of Legends.exe") Then PlayGame_blindpick()
	EndSelect
	Until  $searchiamin = True
	FindChamp_blindpick()
EndFunc   ;==>Function3_blindpick
Func FindChamp_blindpick()
	$champ_name = GUICtrlRead($champ_bp)
	$lane_claim_bp = GUICtrlRead($lane_bp)
	WinWait("League of Legends", "")
	WinActivate("League of Legends", "")
	$x1 = 0
	$y1 = 0
	$iamin = "all image\iamin.PNG"
	$searchiamin = _imageSearch($iamin, 1, $x1, $y1, 15, 0)
	Opt("SendKeyDownDelay", 5)
	Opt("MouseCoordMode", 2)
	Opt("PixelCoordMode", 2)
	If $searchiamin = True Then
		ControlClick('League of Legends', '', '[classnn:Chrome_RenderWidgetHostHWND1]', 'left', 1, 35, 547)
		ControlSend('League of Legends', '', '[classnn:Chrome_RenderWidgetHostHWND1]', $lane_claim_bp)
		Send("{ENTER}")
		Sleep(100)
		ControlClick('League of Legends', '', '[classnn:Chrome_RenderWidgetHostHWND1]', 'left', 1, 610, 82)
		Sleep(100)
		ControlSend('League of Legends', '', '[classnn:Chrome_RenderWidgetHostHWND1]', $champ_name)
		Sleep(700)
		ControlClick('League of Legends', '', '[classnn:Chrome_RenderWidgetHostHWND1]', 'left', 1, 303, 132)
		Sleep(200)
		ControlClick('League of Legends', '', '[classnn:Chrome_RenderWidgetHostHWND1]', 'left', 1, 508, 484)
	EndIf
	If ProcessExists("League of Legends.exe") Then PlayGame_blindpick()
EndFunc   ;==>FindChamp_blindpick
Func PlayGame_blindpick()
	If ProcessExists("League of Legends.exe") = False Then Image_Scan_blindpick()
EndFunc   ;==>PlayGame_blindpick


Func Image_Scan_draftpick()
	Opt("PixelCoordMode", 1)
	Opt("MouseCoordMode", 1)
	$x1 = 0
	$y1 = 0
	$broji = 0
	WinWait("League of Legends", "")
	WinActivate("League of Legends", "")

	Do
		$honorskip = "all image\honorskip.PNG"
		$playagain = "all image\playagain.PNG"
		$play = "all image\play.PNG"
		$pvp = "all image\pvp.PNG"
		$pvp_clicked = "all image\pvp_clicked.PNG"
		$reconect = "all image\reconect.PNG"
		$find_match = "all image\find match.PNG"
		$accept = "all image\accept.PNG"
		$leavequeue = "all image\leavequeue.PNG"
		$ok = "all image\ok.PNG"

		$searchhonorskip = _imageSearch($honorskip, 1, $x1, $y1, 15, 0)
		$searchplayagain = _imageSearch($playagain, 1, $x1, $y1, 15, 0)
		$searchplay = _imageSearch($play, 1, $x1, $y1, 15, 0)
		$searchpvp = _imageSearch($pvp, 1, $x1, $y1, 15, 0)
		$searchpvp_clicked = _imageSearch($pvp_clicked, 1, $x1, $y1, 15, 0)
		$searchreconect = _imageSearch($reconect, 1, $x1, $y1, 15, 0)
		$searchfind_match = _imageSearch($find_match, 1, $x1, $y1, 15, 0)
		$searchaccept = _imageSearch($accept, 1, $x1, $y1, 15, 0)
		$searchileavequeue = _imageSearch($leavequeue, 1, $x1, $y1, 15, 0)
		$searchiok = _imageSearch($ok, 1, $x1, $y1, 15, 0)
		Select
			Case $searchhonorskip = True
				MouseClick("left", $x1, $y1, 1, 20)
			Case $searchplayagain = True
				MouseClick("left", $x1, $y1, 1, 20)
				MouseMove(551, 257)
			Case $searchplay = True
				MouseClick("left", $x1, $y1, 1, 20)
				MouseMove(551, 257)
			Case $searchpvp_clicked = True
				MouseMove(551, 257)
			Case $searchpvp = True
				MouseClick("left", $x1, $y1, 1, 20)
				MouseMove(551, 257)
			Case $searchreconect = True
				MouseClick("left", $x1, $y1, 1, 20)
				MouseMove(551, 257)
			Case $searchfind_match = True
				MouseClick("left", $x1, $y1, 1, 20)
			Case $searchaccept = True
				MouseClick("left", $x1, $y1, 1, 20)
				MouseMove(551, 257)
				Function3_draftpick()
			Case $searchileavequeue = True
				Function3_draftpick()
			Case $searchiok = True
				MouseClick("left", $x1, $y1, 1, 20)
				MouseMove(551, 257)
			Case Else
				Sleep(100)
				$broji = $broji + 1
				If ProcessExists("League of Legends.exe") Then PlayGame_draftpick()

If Not WinExists("League of Legends","") Then MsgBox($MB_TASKMODAL, "Set the correct resolution for league!", "Please set your LoL Cilent Window's resolution to 1024 x 576!")
		EndSelect
	Until $broji = 100 Or $searchpvp_clicked = True Or $searchreconect = True
	Function1_draftpick()
EndFunc   ;==>Image_Scan_draftpick
Func Function1_draftpick()
	Opt("PixelCoordMode", 1)
	Opt("MouseCoordMode", 1)
	$x1 = 0
	$y1 = 0
	$broji = 0
	WinWait("League of Legends", "")
	WinActivate("League of Legends", "")

	Do
		$5v5_clicked = "all image\5v5 clicked.PNG"
		$5v5 = "all image\5v5.PNG"
		$reconect = "all image\reconect.PNG"

		$search5v5_clicked = _imageSearch($5v5_clicked, 1, $x1, $y1, 15, 0)
		$search5v5 = _imageSearch($5v5, 1, $x1, $y1, 15, 0)
		$searchreconect = _imageSearch($reconect, 1, $x1, $y1, 15, 0)

		Select
			Case $search5v5_clicked = True
				MouseMove(551, 257)
			Case $search5v5 = True
				MouseClick("left", $x1, $y1, 1, 20)
				MouseMove(551, 257)
			Case $searchreconect = True
				MouseClick("left", $x1, $y1, 1, 20)
				MouseMove(551, 257)
			Case Else
				Sleep(100)
				$broji = $broji + 1
				If ProcessExists("League of Legends.exe") Then PlayGame_draftpick()
		EndSelect
	Until $broji = 20 Or $search5v5 = True Or $search5v5_clicked = True
	Function2_draftpick()
EndFunc   ;==>Function1_draftpick
Func Function2_draftpick()
	$x1 = 0
	$y1 = 0
	$broji = 0


	WinWait("League of Legends", "")
	WinActivate("League of Legends", "")
	MouseMove(551, 257)
	Do

		$draftpick = "all image\draftpick.PNG"
		$draftpick_clicked = "all image\draftpick clicked.PNG"
		$blindpick = "all image\blindpick.PNG"
		$blindpick_clicked = "all image\blindpick clicked.PNG"
		$reconect = "all image\reconect.PNG"

		$searchdraftpick = _imageSearch($draftpick, 1, $x1, $y1, 15, 0)
		$searchdraftpick_clicked = _imageSearch($draftpick_clicked, 1, $x1, $y1, 15, 0)
		$searchreconect = _imageSearch($reconect, 1, $x1, $y1, 15, 0)
		Select
			Case $searchdraftpick_clicked = True
				MouseMove(551, 257)
			Case $searchdraftpick = True
				MouseClick("left", $x1, $y1, 1, 20)
				MouseMove(551, 257)
			Case $searchreconect = True
				MouseClick("left", $x1, $y1, 1, 20)
				MouseMove(551, 257)

			Case Else
				Sleep(100)
				$broji = $broji + 1
				If ProcessExists("League of Legends.exe") Then PlayGame_draftpick()
		EndSelect
	Until $broji = 20 Or $searchdraftpick_clicked = True
	Function3_draftpick()
EndFunc   ;==>Function2_draftpick
Func Function3_draftpick()
	$x1 = 0
	$y1 = 0
	$lane1 = GUICtrlRead($dp_primary)
	$lane2 = GUICtrlRead($dp_secondary)
	MouseMove(551, 257)
	WinWait("League of Legends", "")
	WinActivate("League of Legends", "")

	Do
		$playagain = "all image\playagain.PNG"
		$confirm = "all image\confirm.PNG"
		$find_match = "all image\find match.PNG"
		$accept = "all image\accept.PNG"
		$reconect = "all image\reconect.PNG"
		$iamin = "all image\iamin.PNG"
		$ban = "all image\ban.PNG"
		$leavequeue = "all image\leavequeue.PNG"


		$searchplayagain = _imageSearch($playagain, 1, $x1, $y1, 15, 0)
		$searchconfirm = _imageSearch($confirm, 1, $x1, $y1, 15, 0)
		$searchfind_match = _imageSearch($find_match, 1, $x1, $y1, 15, 0)
		$searchaccept = _imageSearch($accept, 1, $x1, $y1, 15, 0)
		$searchreconect = _imageSearch($reconect, 1, $x1, $y1, 15, 0)
		$searchiamin = _imageSearch($iamin, 1, $x1, $y1, 15, 0)
		$searchban = _imageSearch($ban, 1, $x1, $y1, 15, 0)
		$searchileavequeue = _imageSearch($leavequeue, 1, $x1, $y1, 15, 0)

		Select
			Case $searchplayagain = True
				MouseClick("left", $x1, $y1, 1, 20)
				MouseMove(551, 257)
				Image_Scan_draftpick()
			Case $searchconfirm = True
				MouseClick("left", $x1, $y1, 1, 20)
				MouseMove(551, 257)
				Sleep(2000)

				Switch $lane1

					Case $lane1 = 'Toplane'
						Opt("MouseCoordMode", 2)
						Opt("PixelCoordMode", 2)
						MouseClick('left', 385, 381, 1,20)
						Sleep(1000)
						MouseClick('left',306, 382,1,20)
					Case $lane1 = 'Jungle'
						Opt("MouseCoordMode", 2)
						Opt("PixelCoordMode", 2)
						MouseClick('left', 385, 381, 1,20)
						Sleep(1000)
						MouseClick('left', 329, 329, 1,20)
					Case $lane1 = 'Midlane'
						Opt("MouseCoordMode", 2)
						Opt("PixelCoordMode", 2)

						MouseClick('left', 385, 381, 1,20)
						Sleep(1000)
						MouseClick('left', 383, 303, 1,20)
					Case $lane1 = 'AdCarry'
						Opt("MouseCoordMode", 2)
						Opt("PixelCoordMode", 2)
						MouseClick('left', 385, 381, 1,20)
						Sleep(1000)
						MouseClick("left",441, 325,1,20)
					Case $lane1 = 'Support'
						Opt("MouseCoordMode", 2)
						Opt("PixelCoordMode", 2)
						MouseClick('left', 385, 381, 1,20)
						Sleep(1000)
						MouseClick('left',467, 383, 1,20)
				EndSwitch
				Sleep(1000)
				;2nd lane
				Switch $lane2
					Case $lane2 = 'Toplane'
						MouseClick('left', 459, 384, 1,20)
						Sleep(1000)
						MouseClick('left',377, 383, 1,20)
					Case $lane2 = 'Jungle'
						MouseClick('left', 459, 384, 1,20)
						Sleep(1000)
						MouseClick('left',402, 330, 1,20)
					Case $lane2 = 'Midlane'
						MouseClick('left', 459, 384, 1,20)
						Sleep(1000)
						MouseClick('left',459, 302, 1,20)
					Case $lane2 = 'AdCarry'
						MouseClick('left', 459, 384, 1,20)
						Sleep(1000)
						MouseClick('left',515, 326, 1,20)
					Case $lane2 = 'Support'
						MouseClick('left', 459, 384, 1,20)
						Sleep(1000)
						MouseClick('left',537, 383, 1,20)
					EndSwitch
				Opt("MouseCoordMode", 1)
				Opt("PixelCoordMode", 1)
				MouseMove(551, 257)
			Case $searchfind_match = True
				MouseClick("left", $x1, $y1, 1, 20)
				MouseMove(551, 257)
			Case $searchaccept = True
				MouseClick("left", $x1, $y1, 1, 20)
				MouseMove(551, 257)
			Case $searchreconect = True
				MouseClick("left", $x1, $y1, 1, 20)
				MouseMove(551, 257)
			Case $searchreconect = True
				MouseClick("left", $x1, $y1, 1, 20)
				MouseMove(551, 257)
			Case $searchban = True
				BanChamp_draftpick()
			Case Else
				Sleep(100)
				If ProcessExists("League of Legends.exe") Then PlayGame_draftpick()
		EndSelect
	Until $searchban = True
	BanChamp_draftpick()
EndFunc   ;==>Function3_draftpick
Func BanChamp_draftpick()
	WinWait("League of Legends", "")
	WinActivate("League of Legends", "")
	Opt("SendKeyDownDelay", 5)
	Opt("MouseCoordMode", 2)
	Opt("PixelCoordMode", 2)
	$ban_name = GUICtrlRead($champ_ban_dp)

	$x1 = 0
	$y1 = 0
	$ban = "all image\ban.PNG"
	$ban_active = "all image\ban_active.PNG"
	$searchban = _imageSearch($ban, 1, $x1, $y1, 15, 0)
	$searchban_active = _imageSearch($ban_active, 1, $x1, $y1, 15, 0)
	If $searchban = True Then
		MouseClick('left', 610, 83, 1)
		Sleep(500)
		ControlSend('League of Legends', '', '[classnn:Chrome_RenderWidgetHostHWND1]', $ban_name)
		Sleep(1000)
		MouseClick('left', 303, 132, 1)
		Sleep(1000)
		ControlClick('League of Legends', '', '[classnn:Chrome_RenderWidgetHostHWND1]', 'left', 1, 508, 484)
		Sleep(1000)
	EndIf
	Do
		$lockin = "all image\lockin.PNG"
		$searchlockin = _imageSearch($lockin, 1, $x1, $y1, 15, 0)
	Until $searchlockin = True
	FindChamp_draftpick()
EndFunc   ;==>BanChamp_draftpick
Func FindChamp_draftpick()
	$x1 = 0
	$y1 = 0
	$dp_name = GUICtrlRead($champ_pick_dp)
	WinWait("League of Legends", "")
	WinActivate("League of Legends", "")
	Opt("SendKeyDownDelay", 5)
	Opt("MouseCoordMode", 2)
	Opt("PixelCoordMode", 2)
	Sleep(100)
	MouseClick('left', 610, 82, 1)
	Sleep(500)
	ControlSend('League of Legends', '', '[classnn:Chrome_RenderWidgetHostHWND1]', $dp_name)
	Sleep(1000)
	MouseClick('left', 303, 132, 1)
	Sleep(500)
	ControlClick('League of Legends', '', '[classnn:Chrome_RenderWidgetHostHWND1]', 'left', 1, 508, 484)
	If ProcessExists("League of Legends.exe") Then PlayGame_draftpick()
EndFunc   ;==>FindChamp_draftpick
Func PlayGame_draftpick()
	If ProcessExists("League of Legends.exe") = False Then Image_Scan_draftpick()
EndFunc   ;==>PlayGame_draftpick

Func AutoAccept()
	$x1 = 0
	$y1 = 0
	$iamin = "all image\iamin.PNG"
	$searchiamin = _imageSearch($iamin, 1, $x1, $y1, 15, 0)

	While $searchiamin = False
		Opt("PixelCoordMode", 1)
		Opt("MouseCoordMode", 1)
		$x1 = 0
		$y1 = 0
		WinWait("League of Legends", "")
		WinActivate("League of Legends", "")
		$accept = "all image\accept.PNG"
		$searchaccept = _imageSearch($accept, 1, $x1, $y1, 15, 0)
		If $searchaccept = True Then
			MouseClick("left", $x1, $y1, 1, 200)
			Sleep(500)
			MouseMove(551, 257)
		EndIf
		Sleep(100)
	WEnd
EndFunc   ;==>AutoAccept
