#Region ;**** Directives created by AutoIt3Wrapper_GUI ****
#AutoIt3Wrapper_Icon=images\icon.ico
#AutoIt3Wrapper_Outfile=LeagueClientAutoTool x86.exe
#AutoIt3Wrapper_Outfile_x64=LeagueClientAutoTool x64.exe
#AutoIt3Wrapper_Compile_Both=y
#EndRegion ;**** Directives created by AutoIt3Wrapper_GUI ****
#comments-start
	******************************************************************************************************************************************
	*	       _              _            _                  _            _               _             _            _              _    	 *
	*	     /\ \           /\ \         /\ \               /\ \         /\ \            _\ \          /\ \         _\ \           /\ \      *
	*	    /  \ \         /  \ \       /  \ \____         /  \ \       /  \ \          /\__ \        /  \ \       /\__ \          \ \ \     *
	*      / /\ \_\       / /\ \ \     / /\ \_____\       / /\ \ \     / /\ \ \        / /_ \_\      / /\ \ \     / /_ \_\         /\ \_\    *
	*     / / /\/_/      / / /\ \ \   / / /\/___  /      / / /\ \ \   / / /\ \_\      / / /\/_/     / / /\ \ \   / / /\/_/        / /\/_/    *
	*    / / / ______   / / /  \ \_\ / / /   / / /      / / /  \ \_\ / /_/_ \/_/     / / /         / / /  \ \_\ / / /            / / /       *
	*   / / / /\_____\ / / /   / / // / /   / / /      / / /   / / // /____/\       / / /         / / /   / / // / /            / / /        *
	*  / / /  \/____ // / /   / / // / /   / / /      / / /   / / // /\____\/      / / / ____    / / /   / / // / / ____       / / /         *
	* / / /_____/ / // / /___/ / / \ \ \__/ / /      / / /___/ / // / /           / /_/_/ ___/\ / / /___/ / // /_/_/ ___/\ ___/ / /__        *
	*/ / /______\/ // / /____\/ /   \ \___\/ /      / / /____\/ // / /           /_______/\__\// / /____\/ //_______/\__\//\__\/_/___\       *
	*\/___________/ \/_________/     \/_____/       \/_________/ \/_/            \_______\/    \/_________/ \_______\/    \/_________/       *
	******************************************************************************************************************************************
	Script By The One & Only God Of Loli
	Twitter : https://twitter.com/GodOfLoliKnows
#comments-end
#include <ButtonConstants.au3>
#include <ComboConstants.au3>
#include <EditConstants.au3>
#include <GUIConstantsEx.au3>
#include <StaticConstants.au3>
#include <WindowsConstants.au3>
#include <ImageSearch2015.au3>
#include <AutoItConstants.au3>
#include <WinAPI.au3>
#Region
Global $gui = GUICreate("League Client Auto Tool", 406, 570, -1, -1)
Global $passinput = GUICtrlCreateInput("password", 16, 40, 129, 21)
Global $Login = GUICtrlCreateButton("Login", 24, 72, 121, 25)
Global $sr_normal_blindpick = GUICtrlCreateButton("Join BlindPick", 264, 432, 91, 25)
Global $sr_normal_draftpick = GUICtrlCreateButton("DraftPick", 48, 432, 91, 25)
Global $sr_normal_lane1 = GUICtrlCreateCombo("", 16, 176, 65, 25, BitOR($CBS_DROPDOWN, $CBS_AUTOHSCROLL))
GUICtrlSetData($sr_normal_lane1, "Toplane|Jungle|Midlane|AdCarry|Support", "Toplane")
GUICtrlSetTip(-1, "Choose Lane")
Global $Label3 = GUICtrlCreateLabel("Primary Lane", 16, 160, 65, 17)
Global $Label4 = GUICtrlCreateLabel("Secondary Lane", 96, 160, 82, 17)
Global $sr_normal_lane2 = GUICtrlCreateCombo("", 104, 176, 65, 25, BitOR($CBS_DROPDOWN, $CBS_AUTOHSCROLL))
GUICtrlSetData($sr_normal_lane2, "Toplane|Jungle|Midlane|AdCarry|Support", "Jungle")
GUICtrlSetTip(-1, "Choose Lane")
Global $autoreport = GUICtrlCreateButton("Report", 248, 176, 123, 25)
Global $Group1 = GUICtrlCreateGroup("DraftPick ", 8, 128, 177, 337)
;champ to ban
Global $champ_ban_dp = GUICtrlCreateList("", 16, 232, 161, 71)
GUICtrlSetData($champ_ban_dp, "Aatrox|Ahri|Akali|Alistar|Amumu|Anivia|Annie|Ashe|Aurelion Sol|Azir|Bard|Blitzcrank|Brand|Braum|Caitlyn|Camille|Cassiopeia|Cho'Gath|Corki|Darius|Diana|Dr Mundo|Draven|Ekko|Elise|Evelynn|Ezreal|Fiddlesticks|Fiora|Fizz|Galio|Gangplank|Garen|Gnar|Gragas|Graves|Hecarim|Heimerdinger|Illaoi|Irelia|Ivern|Janna|Jarvan|Jax|Jayce|Jhin|Jinx|Kalista|Karma|Karthus|Kassadin|Katarina|Kayle|Kayn|Kennen|Kha'Zix|Kindred|Kled|Kog'Maw|Leblanc|Lee Sin|Leona|Lissandra|Lucian|Lulu|Lux|Malphite|Malzahar|Maokai|Master Yi|Miss Fortune|Mordekaiser|Morgana|Nami|Nasus|Nautilus|Nidalee|Nocturne|Nunu|Olaf|Orianna|Pantheon|Poppy|Pyke|Quinn|Rakan|Rammus|Rek'sai|Renekton|Rengar|Riven|Rumble|Ryze|Sejuani|Shaco|Shen|Shyvana|Singed|Sion|Sivir|Skarner|Sona|Soraka|Swain|Syndra|Tahm Kench|Taliyah|Talon|Taric|Teemo|Thresh|Tristana|Trundle|Tryndamere|Twisted Fate|Twitch|Udyr|Urgot|Varus|Vayne|Veigar|Vel'Koz|Vi|Viktor|Vladimir|Volibear|Warwick|Wukong|Xayah|Xerath|Xin Zhao|Yasuo|Yorick|Zac|Zed|Ziggs|Zilean|Zoe|Zyra", "Aatrox")
Global $Label7 = GUICtrlCreateLabel("Champion to ban", 56, 208, 84, 17)
Global $champ_instalock_dp = GUICtrlCreateList("", 16, 344, 161, 71)
GUICtrlSetData($champ_instalock_dp, "Aatrox|Ahri|Akali|Alistar|Amumu|Anivia|Annie|Ashe|Aurelion Sol|Azir|Bard|Blitzcrank|Brand|Braum|Caitlyn|Camille|Cassiopeia|Cho'Gath|Corki|Darius|Diana|Dr Mundo|Draven|Ekko|Elise|Evelynn|Ezreal|Fiddlesticks|Fiora|Fizz|Galio|Gangplank|Garen|Gnar|Gragas|Graves|Hecarim|Heimerdinger|Illaoi|Irelia|Ivern|Janna|Jarvan|Jax|Jayce|Jhin|Jinx|Kalista|Karma|Karthus|Kassadin|Katarina|Kayle|Kayn|Kennen|Kha'Zix|Kindred|Kled|Kog'Maw|Leblanc|Lee Sin|Leona|Lissandra|Lucian|Lulu|Lux|Malphite|Malzahar|Maokai|Master Yi|Miss Fortune|Mordekaiser|Morgana|Nami|Nasus|Nautilus|Nidalee|Nocturne|Nunu|Olaf|Orianna|Pantheon|Poppy|Pyke|Quinn|Rakan|Rammus|Rek'sai|Renekton|Rengar|Riven|Rumble|Ryze|Sejuani|Shaco|Shen|Shyvana|Singed|Sion|Sivir|Skarner|Sona|Soraka|Swain|Syndra|Tahm Kench|Taliyah|Talon|Taric|Teemo|Thresh|Tristana|Trundle|Tryndamere|Twisted Fate|Twitch|Udyr|Urgot|Varus|Vayne|Veigar|Vel'Koz|Vi|Viktor|Vladimir|Volibear|Warwick|Wukong|Xayah|Xerath|Xin Zhao|Yasuo|Yorick|Zac|Zed|Ziggs|Zilean|Zoe|Zyra", "Aatrox")
Global $Label8 = GUICtrlCreateLabel("Champion to Pick", 56, 320, 87, 17)
GUICtrlCreateGroup("", -99, -99, 1, 1)
Global $Group2 = GUICtrlCreateGroup("Auto Login", 8, 8, 177, 105)
GUICtrlCreateGroup("", -99, -99, 1, 1)
Global $Group3 = GUICtrlCreateGroup("Auto Report", 208, 8, 193, 201)
Global $report_msg_input = GUICtrlCreateEdit("", 216, 48, 177, 121)
GUICtrlSetData(-1, StringFormat(" This Player Offended me in \r\nanyway possible either through\r\n his playstyle or what he said\r\n I am surprised he is still able \r\nto join the rift with such \r\ndisrespectful behavior !"))
Global $Label1 = GUICtrlCreateLabel("Report Message", 264, 24, 82, 17)
GUICtrlCreateGroup("", -99, -99, 1, 1)
Global $Group4 = GUICtrlCreateGroup("BlindPick Tools  :", 208, 224, 193, 241)
Global $lane_claim = GUICtrlCreateInput("type the lane u want", 240, 264, 121, 21)
Global $Label2 = GUICtrlCreateLabel("Lane", 280, 248, 28, 17)
Global $Label5 = GUICtrlCreateLabel("Champion", 272, 296, 51, 17)
Global $champ_instalock_bp = GUICtrlCreateList("", 216, 320, 177, 97)
GUICtrlSetData($champ_instalock_bp, "Aatrox|Ahri|Akali|Alistar|Amumu|Anivia|Annie|Ashe|Aurelion Sol|Azir|Bard|Blitzcrank|Brand|Braum|Caitlyn|Camille|Cassiopeia|Cho'Gath|Corki|Darius|Diana|Dr Mundo|Draven|Ekko|Elise|Evelynn|Ezreal|Fiddlesticks|Fiora|Fizz|Galio|Gangplank|Garen|Gnar|Gragas|Graves|Hecarim|Heimerdinger|Illaoi|Irelia|Ivern|Janna|Jarvan|Jax|Jayce|Jhin|Jinx|Kalista|Karma|Karthus|Kassadin|Katarina|Kayle|Kayn|Kennen|Kha'Zix|Kindred|Kled|Kog'Maw|Leblanc|Lee Sin|Leona|Lissandra|Lucian|Lulu|Lux|Malphite|Malzahar|Maokai|Master Yi|Miss Fortune|Mordekaiser|Morgana|Nami|Nasus|Nautilus|Nidalee|Nocturne|Nunu|Olaf|Orianna|Pantheon|Poppy|Pyke|Quinn|Rakan|Rammus|Rek'sai|Renekton|Rengar|Riven|Rumble|Ryze|Sejuani|Shaco|Shen|Shyvana|Singed|Sion|Sivir|Skarner|Sona|Soraka|Swain|Syndra|Tahm Kench|Taliyah|Talon|Taric|Teemo|Thresh|Tristana|Trundle|Tryndamere|Twisted Fate|Twitch|Udyr|Urgot|Varus|Vayne|Veigar|Vel'Koz|Vi|Viktor|Vladimir|Volibear|Warwick|Wukong|Xayah|Xerath|Xin Zhao|Yasuo|Yorick|Zac|Zed|Ziggs|Zilean|Zoe|Zyra", "Aatrox")
GUICtrlCreateGroup("", -99, -99, 1, 1)
Global $Group5 = GUICtrlCreateGroup("Ping Test", 208, 472, 193, 65)
Global $pingtest = GUICtrlCreateButton("Check Ping", 224, 496, 147, 33)
GUICtrlCreateGroup("", -99, -99, 1, 1)
Global $Label6 = GUICtrlCreateLabel("     MADE BY THE ONE AND ONLY GOD OF LOLI", 0, 543, 405, 26, $WS_BORDER)
GUICtrlSetFont(-1, 12, 400, 0, "Euphemia")
Global $Label9 = GUICtrlCreateLabel("Check The website bellow if you need", 8, 472, 184, 17)
Global $Label10 = GUICtrlCreateLabel(" help with one of the features.", 8, 488, 144, 17)
Global $Label11 = GUICtrlCreateLabel("www.leagueclientautotool.ml/features", 8, 512, 182, 17)
GUISetState(@SW_SHOW)
#EndRegion

While 1
	$nMsg = GUIGetMsg()
	Switch $nMsg
		Case $GUI_EVENT_CLOSE
			Exit
		Case $Login
			Login()
		Case $sr_normal_blindpick
			Image_Scan_blindpick()
		Case $sr_normal_draftpick
			Image_Scan_draftpick()
		Case $autoreport
			reportNiggers()
		Case $pingtest
			runPingTest()

	EndSwitch
WEnd


Func Login()
	$pass = GUICtrlRead($passinput)
	WinActivate('League of Legends')
	ControlClick('League of Legends', '', '[classnn:Chrome_RenderWidgetHostHWND1]', 'left', 1, 885, 196)
	ControlSend('League of Legends', '', '[classnn:Chrome_RenderWidgetHostHWND1]', $pass)
	Sleep(700)
	ControlClick('League of Legends', '', '[classnn:Chrome_RenderWidgetHostHWND1]', 'left', 1, 884, 448)
EndFunc   ;==>Login
Func reportNiggers()
	$report_msg = GUICtrlRead($report_msg_input)
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
Func runPingTest()
	Sleep(300)
	Run("PingChecker.exe")
EndFunc   ;==>runPingTest


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

;~ If Not WinExists("League of Legends","") Then MsgBox($MB_TASKMODAL, "Maximize Window!", "Please Maximize your LoL Cilent Window and restart bot!")
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
	Until $broji = 20 Or $search5v5 = True Or $search5v5_clicked = True
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
		$iamin = "all image\iamin.PNG"
		$leavequeue = "all image\leavequeue.PNG"

		$searchplayagain = _imageSearch($playagain, 1, $x1, $y1, 15, 0)
		$searchconfirm = _imageSearch($confirm, 1, $x1, $y1, 15, 0)
		$searchfind_match = _imageSearch($find_match, 1, $x1, $y1, 15, 0)
		$searchaccept = _imageSearch($accept, 1, $x1, $y1, 15, 0)
		$searchreconect = _imageSearch($reconect, 1, $x1, $y1, 15, 0)
		$searchiamin = _imageSearch($iamin, 1, $x1, $y1, 15, 0)
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
			Case $searchiamin = True
				FindChamp_blindpick()
			Case Else
				Sleep(100)
				If ProcessExists("League of Legends.exe") Then PlayGame_blindpick()
		EndSelect
	Until $searchiamin = True
	FindChamp_blindpick()
EndFunc   ;==>Function3_blindpick
Func FindChamp_blindpick()
	$champ_name = GUICtrlRead($champ_instalock_bp)
	$lane_bp = GUICtrlRead($lane_claim)
	WinWait("League of Legends", "")
	WinActivate("League of Legends", "")

	Opt("SendKeyDownDelay", 10)
	Opt("MouseCoordMode", 2)
	Opt("PixelCoordMode", 2)
	ControlClick('League of Legends', '', '[classnn:Chrome_RenderWidgetHostHWND1]', 'left', 1, 35, 547)
	ControlSend('League of Legends', '', '[classnn:Chrome_RenderWidgetHostHWND1]', $lane_bp)
	Send("{ENTER}")
	Sleep(100)
	ControlClick('League of Legends', '', '[classnn:Chrome_RenderWidgetHostHWND1]', 'left', 1, 35, 547)
	ControlSend('League of Legends', '', '[classnn:Chrome_RenderWidgetHostHWND1]', $lane_bp)
	Send("{ENTER}")
	Sleep(300)
	ControlClick('League of Legends', '', '[classnn:Chrome_RenderWidgetHostHWND1]', 'left', 1, 610, 82)
	Sleep(500)
	ControlSend('League of Legends', '', '[classnn:Chrome_RenderWidgetHostHWND1]', $champ_name)
	Sleep(500)
	ControlClick('League of Legends', '', '[classnn:Chrome_RenderWidgetHostHWND1]', 'left', 1, 303, 132)
	Sleep(500)
	ControlClick('League of Legends', '', '[classnn:Chrome_RenderWidgetHostHWND1]', 'left', 1, 508, 484)
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

;~ If Not WinExists("League of Legends","") Then MsgBox($MB_TASKMODAL, "Maximize Window!", "Please Maximize your LoL Cilent Window and restart bot!")
		EndSelect
	Until $broji = 10 Or $searchpvp_clicked = True Or $searchreconect = True
	Function1_draftpick()
EndFunc   ;==>Image_Scan_draftpick
Func Function1_draftpick()
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
	$lane1 = GUICtrlRead($sr_normal_lane1)
	$lane2 = GUICtrlRead($sr_normal_lane2)
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
		$leavequeue = "all image\leavequeue.PNG"


		$searchplayagain = _imageSearch($playagain, 1, $x1, $y1, 15, 0)
		$searchconfirm = _imageSearch($confirm, 1, $x1, $y1, 15, 0)
		$searchfind_match = _imageSearch($find_match, 1, $x1, $y1, 15, 0)
		$searchaccept = _imageSearch($accept, 1, $x1, $y1, 15, 0)
		$searchreconect = _imageSearch($reconect, 1, $x1, $y1, 15, 0)
		$searchiamin = _imageSearch($iamin, 1, $x1, $y1, 15, 0)
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
						ControlClick('League of Legends', '', '[classnn:Chrome_RenderWidgetHostHWND1]', 'left', 1, 385, 354)
						Sleep(1000)
						ControlClick('League of Legends', '', '[classnn:Chrome_RenderWidgetHostHWND1]', 'left', 1, 303, 357)
					Case $lane1 = 'Jungle'
						ControlClick('League of Legends', '', '[classnn:Chrome_RenderWidgetHostHWND1]', 'left', 1, 385, 354)
						Sleep(1000)
						ControlClick('League of Legends', '', '[classnn:Chrome_RenderWidgetHostHWND1]', 'left', 1, 325, 302)
					Case $lane1 = 'Midlane'
						ControlClick('League of Legends', '', '[classnn:Chrome_RenderWidgetHostHWND1]', 'left', 1, 385, 354)
						Sleep(1000)
						ControlClick('League of Legends', '', '[classnn:Chrome_RenderWidgetHostHWND1]', 'left', 1, 383, 278)
					Case $lane1 = 'AdCarry'
						ControlClick('League of Legends', '', '[classnn:Chrome_RenderWidgetHostHWND1]', 'left', 1, 385, 354)
						Sleep(1000)
						ControlClick('League of Legends', '', '[classnn:Chrome_RenderWidgetHostHWND1]', 'left', 1, 440, 300)
					Case $lane1 = 'Support'
						ControlClick('League of Legends', '', '[classnn:Chrome_RenderWidgetHostHWND1]', 'left', 1, 385, 354)
						Sleep(1000)
						ControlClick('League of Legends', '', '[classnn:Chrome_RenderWidgetHostHWND1]', 'left', 1, 464, 355)
				EndSwitch
				Sleep(1000)
				;2nd lane
				Switch $lane2
					Case $lane2 = 'Toplane'
						ControlClick('League of Legends', '', '[classnn:Chrome_RenderWidgetHostHWND1]', 'left', 1, 457, 357)
						Sleep(1000)
						ControlClick('League of Legends', '', '[classnn:Chrome_RenderWidgetHostHWND1]', 'left', 1, 375, 356)
					Case $lane2 = 'Jungle'
						ControlClick('League of Legends', '', '[classnn:Chrome_RenderWidgetHostHWND1]', 'left', 1, 457, 357)
						Sleep(1000)
						ControlClick('League of Legends', '', '[classnn:Chrome_RenderWidgetHostHWND1]', 'left', 1, 401, 302)
					Case $lane2 = 'Midlane'
						ControlClick('League of Legends', '', '[classnn:Chrome_RenderWidgetHostHWND1]', 'left', 1, 457, 357)
						Sleep(1000)
						ControlClick('League of Legends', '', '[classnn:Chrome_RenderWidgetHostHWND1]', 'left', 1, 457, 278)
					Case $lane2 = 'AdCarry'
						ControlClick('League of Legends', '', '[classnn:Chrome_RenderWidgetHostHWND1]', 'left', 1, 457, 357)
						Sleep(1000)
						ControlClick('League of Legends', '', '[classnn:Chrome_RenderWidgetHostHWND1]', 'left', 1, 514, 301)
					Case $lane2 = 'Support'
						ControlClick('League of Legends', '', '[classnn:Chrome_RenderWidgetHostHWND1]', 'left', 1, 457, 357)
						Sleep(1000)
						ControlClick('League of Legends', '', '[classnn:Chrome_RenderWidgetHostHWND1]', 'left', 1, 536, 358)
				EndSwitch
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
			Case $searchiamin = True
				BanChamp_draftpick()
			Case Else
				Sleep(100)
				If ProcessExists("League of Legends.exe") Then PlayGame_draftpick()
		EndSelect
	Until $searchiamin = True
	BanChamp_draftpick()
EndFunc   ;==>Function3_draftpick
Func BanChamp_draftpick()
	$ban_name = GUICtrlRead($champ_ban_dp)
	WinWait("League of Legends", "")
	WinActivate("League of Legends", "")

	Opt("SendKeyDownDelay", 10)
	Opt("MouseCoordMode", 2)
	Opt("PixelCoordMode", 2)
	Sleep(15000)
	ControlClick('League of Legends', '', '[classnn:Chrome_RenderWidgetHostHWND1]', 'left', 1, 610, 82)
	Sleep(500)
	ControlSend('League of Legends', '', '[classnn:Chrome_RenderWidgetHostHWND1]', $ban_name)
	Sleep(500)
	ControlClick('League of Legends', '', '[classnn:Chrome_RenderWidgetHostHWND1]', 'left', 1, 303, 132)
	Sleep(500)
	ControlClick('League of Legends', '', '[classnn:Chrome_RenderWidgetHostHWND1]', 'left', 1, 508, 484)
	Sleep(1000)
	$x1 = 0
	$y1 = 0
	$lockin = "all image\lockin.PNG"
	Do
	$searchlockin = _imageSearch($lockin, 1, $x1, $y1, 15, 0)
	Until $searchlockin = True
	FindChamp_draftpick()
EndFunc   ;==>BanChamp_draftpick
Func FindChamp_draftpick()

	$dp_name = GUICtrlRead($champ_instalock_dp)
	WinWait("League of Legends", "")
	WinActivate("League of Legends", "")
	Opt("SendKeyDownDelay", 10)
	Opt("MouseCoordMode", 2)
	Opt("PixelCoordMode", 2)
	Sleep(100)
	ControlClick('League of Legends', '', '[classnn:Chrome_RenderWidgetHostHWND1]', 'left', 1, 610, 82)
	Sleep(500)
	ControlSend('League of Legends', '', '[classnn:Chrome_RenderWidgetHostHWND1]', $dp_name)
	Sleep(500)
	ControlClick('League of Legends', '', '[classnn:Chrome_RenderWidgetHostHWND1]', 'left', 1, 303, 132)
	Sleep(500)
	ControlClick('League of Legends', '', '[classnn:Chrome_RenderWidgetHostHWND1]', 'left', 1, 508, 484)
	If ProcessExists("League of Legends.exe") Then PlayGame_draftpick()
EndFunc   ;==>FindChamp_draftpick
Func PlayGame_draftpick()
	If ProcessExists("League of Legends.exe") = False Then Image_Scan_draftpick()
EndFunc   ;==>PlayGame_draftpick

