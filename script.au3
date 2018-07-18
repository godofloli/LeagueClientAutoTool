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
#Region
Global $gui = GUICreate("League Client Auto Tool", 406, 481, -1, -1)
Global $passinput = GUICtrlCreateInput("password", 16, 40, 129, 21)
Global $autologin = GUICtrlCreateLabel("Auto login", 16, 8, 51, 17)
Global $Login = GUICtrlCreateButton("Login", 24, 72, 121, 25)
Global $sr_normal_blindpick = GUICtrlCreateButton("BlindPick", 32, 168, 91, 25)
Global $sr_normal_draftpick = GUICtrlCreateButton("DraftPick", 32, 216, 91, 25)
Global $sr_normal_lane1 = GUICtrlCreateCombo("Toplane", 32, 272, 89, 25, BitOR($CBS_DROPDOWN, $CBS_AUTOHSCROLL))
GUICtrlSetTip(-1, "Choose Lane")
Global $Label3 = GUICtrlCreateLabel("Primary Lane", 48, 248, 65, 17)
Global $Label4 = GUICtrlCreateLabel("Secondary Lane", 40, 296, 82, 17)
GUICtrlSetData($sr_normal_lane1, "Jungle|Midlane|AdCarry|Support", "Jungle")
GUICtrlSetTip(-1, "Choose Lane")
Global $sr_normal_lane2 = GUICtrlCreateCombo("Toplane", 32, 320, 89, 25, BitOR($CBS_DROPDOWN, $CBS_AUTOHSCROLL))
GUICtrlSetData($sr_normal_lane2, "Jungle|Midlane|AdCarry|Support", "Toplane")
GUICtrlSetTip(-1, "Choose Lane")
Global $Group1 = GUICtrlCreateGroup("Join Normal ", 8, 136, 177, 225)
GUICtrlCreateGroup("", -99, -99, 1, 1)
Global $Group2 = GUICtrlCreateGroup("Auto Login", 8, 8, 177, 105)
GUICtrlCreateGroup("", -99, -99, 1, 1)
Global $Group3 = GUICtrlCreateGroup("Auto Report", 208, 8, 193, 201)
Global $autoreport = GUICtrlCreateButton("Report", 248, 176, 123, 25)
Global $Label1 = GUICtrlCreateLabel("Report Message", 264, 24, 82, 17)
Global $report_msg_input = GUICtrlCreateEdit("", 216, 48, 177, 121)
GUICtrlSetData(-1, StringFormat(" This Player Offended me in \r\nanyway possible either through\r\n his playstyle or what he said\r\n I am surprised he is still able \r\nto join the rift with such \r\ndisrespectful behavior !"))
GUICtrlCreateGroup("", -99, -99, 1, 1)
Global $Group4 =  GUICtrlCreateGroup("BlindPick Tools  :", 208, 224, 193, 209)
$lane_input = GUICtrlCreateInput("type the lane u want", 216, 264, 121, 21)
$Label2 = GUICtrlCreateLabel("Lane", 216, 248, 28, 17)
Global $spam_lane = GUICtrlCreateButton("Spam", 344, 264, 51, 25)
Global $champ_instalock = GUICtrlCreateList("", 216, 320, 121, 97)
GUICtrlSetData($champ_instalock, "Aatrox|Ahri|Akali|Alistar|Amumu|Anivia|Annie|Ashe|Aurelion Sol|Azir|Bard|Blitzcrank|Brand|Braum|Caitlyn|Camille|Cassiopeia|Cho'Gath|Corki|Darius|Diana|Dr Mundo|Draven|Ekko|Elise|Evelynn|Ezreal|Fiddlesticks|Fiora|Fizz|Galio|Gangplank|Garen|Gnar|Gragas|Graves|Hecarim|Heimerdinger|Illaoi|Irelia|Ivern|Janna|Jarvan|Jax|Jayce|Jhin|Jinx|Kalista|Karma|Karthus|Kassadin|Katarina|Kayle|Kayn|Kennen|Kha'Zix|Kindred|Kled|Kog'Maw|Leblanc|Lee Sin|Leona|Lissandra|Lucian|Lulu|Lux|Malphite|Malzahar|Maokai|Master Yi|Miss Fortune|Mordekaiser|Morgana|Nami|Nasus|Nautilus|Nidalee|Nocturne|Nunu|Olaf|Orianna|Pantheon|Poppy|Pyke|Quinn|Rakan|Rammus|Rek'sai|Renekton|Rengar|Riven|Rumble|Ryze|Sejuani|Shaco|Shen|Shyvana|Singed|Sion|Sivir|Skarner|Sona|Soraka|Swain|Syndra|Tahm Kench|Taliyah|Talon|Taric|Teemo|Thresh|Tristana|Trundle|Tryndamere|Twisted Fate|Twitch|Udyr|Urgot|Varus|Vayne|Veigar|Vel'Koz|Vi|Viktor|Vladimir|Volibear|Warwick|Wukong|Xayah|Xerath|Xin Zhao|Yasuo|Yorick|Zac|Zed|Ziggs|Zilean|Zoe|Zyra", "Aatrox")
Global $instalock_thatshit = GUICtrlCreateButton("Instalock", 344, 320, 51, 25)
$Label5 = GUICtrlCreateLabel("Instalock", 216, 304, 47, 17)
Global $Group5 = GUICtrlCreateGroup("Ping Test", 8, 368, 177, 65)
Global $pingtest = GUICtrlCreateButton("Check Ping", 24, 392, 147, 33)
GUICtrlCreateGroup("", -99, -99, 1, 1)
$Label6 = GUICtrlCreateLabel("     MADE BY THE ONE AND ONLY GOD OF LOLI", 0, 454, 405, 26, $WS_BORDER)
GUICtrlSetFont(-1, 12, 400, 0, "Euphemia")
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
			goBlindPick()
		Case $sr_normal_draftpick
			goDraftPick()
		Case $autoreport
			reportNiggers()
		Case $spam_lane
			claimLane()
		Case $instalock_thatshit
			instalock()
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
Func goBlindPick()
	WinActivate('League of Legends')
	$size = WinGetClientSize('League of Legends')
	ControlClick('League of Legends', '', '[classnn:Chrome_RenderWidgetHostHWND1]', 'left', 1, 93, 30)
	Sleep(1000)
	ControlClick('League of Legends', '', '[classnn:Chrome_RenderWidgetHostHWND1]', 'left', 1, 98, 429)
	Sleep(1000)
	ControlClick('League of Legends', '', '[classnn:Chrome_RenderWidgetHostHWND1]', 'left', 1, 426, 547)
	Sleep(2000)
	ControlClick('League of Legends', '', '[classnn:Chrome_RenderWidgetHostHWND1]', 'left', 1, 428, 548)
	;426, 547
EndFunc   ;==>goBlindPick
Func goDraftPick()
	WinActivate('League of Legends')

	ControlClick('League of Legends', '', '[classnn:Chrome_RenderWidgetHostHWND1]', 'left', 1, 93, 30)
	Sleep(1000)
	ControlClick('League of Legends', '', '[classnn:Chrome_RenderWidgetHostHWND1]', 'left', 1, 98, 452)
	Sleep(1000)
	ControlClick('League of Legends', '', '[classnn:Chrome_RenderWidgetHostHWND1]', 'left', 1, 426, 547)
	Sleep(2000)
	$lane1 = GUICtrlRead($sr_normal_lane1)
	$lane2 = GUICtrlRead($sr_normal_lane2)
	;1st lane
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
	;launch queue
	Sleep(2000)
	ControlClick('League of Legends', '', '[classnn:Chrome_RenderWidgetHostHWND1]', 'left', 1, 428, 548)
EndFunc   ;==>goDraftPick
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
Func claimLane()
	$lane_claim = GUICtrlRead($lane_input)
	WinActivate('League of Legends')
	ControlClick('League of Legends', '', '[classnn:Chrome_RenderWidgetHostHWND1]', 'left', 1, 35, 547)
	ControlSend('League of Legends', '', '[classnn:Chrome_RenderWidgetHostHWND1]', $lane_claim)
	Send("{ENTER}")
	Sleep(100)
	ControlClick('League of Legends', '', '[classnn:Chrome_RenderWidgetHostHWND1]', 'left', 1, 35, 547)
	ControlSend('League of Legends', '', '[classnn:Chrome_RenderWidgetHostHWND1]', $lane_claim)
	Send("{ENTER}")
	Sleep(300)
	ControlClick('League of Legends', '', '[classnn:Chrome_RenderWidgetHostHWND1]', 'left', 1, 35, 547)
	ControlSend('League of Legends', '', '[classnn:Chrome_RenderWidgetHostHWND1]', $lane_claim)
	Send("{ENTER}")
	Sleep(300)
	ControlClick('League of Legends', '', '[classnn:Chrome_RenderWidgetHostHWND1]', 'left', 1, 35, 547)
	ControlSend('League of Legends', '', '[classnn:Chrome_RenderWidgetHostHWND1]', $lane_claim)
	Send("{ENTER}")
	Sleep(100)
	ControlClick('League of Legends', '', '[classnn:Chrome_RenderWidgetHostHWND1]', 'left', 1, 35, 547)
	ControlSend('League of Legends', '', '[classnn:Chrome_RenderWidgetHostHWND1]', $lane_claim)
	Send("{ENTER}")
	Sleep(300)
	ControlClick('League of Legends', '', '[classnn:Chrome_RenderWidgetHostHWND1]', 'left', 1, 35, 547)
	ControlSend('League of Legends', '', '[classnn:Chrome_RenderWidgetHostHWND1]', $lane_claim)
	Send("{ENTER}")
EndFunc   ;==>claimLane
Func instalock()
	$champ_name = GUICtrlRead($champ_instalock)
	WinActivate('League of Legends')
	ControlClick('League of Legends', '', '[classnn:Chrome_RenderWidgetHostHWND1]', 'left', 1, 610, 82)
	Sleep(200)
	ControlSend('League of Legends', '', '[classnn:Chrome_RenderWidgetHostHWND1]', $champ_name)
	Sleep(300)
	ControlClick('League of Legends', '', '[classnn:Chrome_RenderWidgetHostHWND1]', 'left', 1, 303, 132)
	Sleep(300)
	ControlClick('League of Legends', '', '[classnn:Chrome_RenderWidgetHostHWND1]', 'left', 1, 508, 484)
EndFunc   ;==>instalock
Func runPingTest()
	Sleep(300)
	Run("PingChecker.exe")
EndFunc