#Region ;**** Directives created by AutoIt3Wrapper_GUI ****
#AutoIt3Wrapper_Icon=icon.ico
#AutoIt3Wrapper_Compile_Both=y
#AutoIt3Wrapper_Res_Description=Tout client se doit d'être automatisé
#AutoIt3Wrapper_Res_Fileversion=3.0.0
#AutoIt3Wrapper_Res_ProductName=LCAT
#AutoIt3Wrapper_Res_ProductVersion=3.0.0
#AutoIt3Wrapper_Res_CompanyName=godofloli
#AutoIt3Wrapper_Res_Language=1036
#EndRegion ;**** Directives created by AutoIt3Wrapper_GUI ****
#include <XSkin.au3>
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
#include <tabcolor.au3>
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
; folder of skin
Global $Paused
HotKeySet("{ESC}", "TogglePause")
$Skin_Folder = @ScriptDir & "\Skins\Skilled"
$XSkinGui = XSkinGUICreate("LCAT 3.0", 400, 600, $Skin_Folder)
$Icon_Folder = @ScriptDir & "\Skins\Default"
$XIcon = XSkinIcon($XSkinGui, 2)
$Tab_menu = XSkinColorTabCreate(35, 40, 360, 560, 0xE8E8E7)
$bp_tab = GUICtrlCreateTabItem("Outils BlindPick")
$lane_bp = GUICtrlCreateCombo("", 160, 96, 89, 25, BitOR($CBS_DROPDOWN, $CBS_AUTOHSCROLL))
GUICtrlSetData($lane_bp, "Toplane|Jungle|Midlane|AdCarry|Support", "Toplane")
GUICtrlSetBkColor(-1, 0xC8C8C8)
$tit5 = GUICtrlCreateLabel("Choix de voie", 152, 72, 105, 20, $SS_CENTER)
GUICtrlSetFont(-1, 12, 400, 0, "Vermin Vibes")
$Label6 = GUICtrlCreateLabel("Champion à Jouer", 144, 136, 126, 50, $SS_CENTER)
GUICtrlSetFont(-1, 12, 400, 0, "Vermin Vibes")
$champ_bp = GUICtrlCreateList("", 107, 180, 201, 279)
GUICtrlSetData($champ_bp, "Aatrox|Ahri|Akali|Alistar|Amumu|Anivia|Annie|Ashe|Aurelion Sol|Azir|Bard|Blitzcrank|Brand|Braum|Caitlyn|Camille|Cassiopeia|Cho'Gath|Corki|Darius|Diana|Dr. Mundo|Draven|Ekko|Elise|Evelynn|Ezreal|Fiddlesticks|Fiora|Fizz|Galio|Gangplank|Garen|Gnar|Gragas|Graves|Hecarim|Heimerdinger|Illaoi|Irelia|Ivern|Janna|Jarvan IV|Jax|Jayce|Jhin|Jinx|Kai'Sa|Kalista|Karma|Karthus|Kassadin|Katarina|Kayle|Kayn|Kennen|Kha'Zix|Kindred|Kled|Kog'Maw|LeBlanc|Lee Sin|Leona|Lissandra|Lucian|Lulu|Lux|Maître Yi|Malphite|Malzahar|Maokai|Miss Fortune|Mordekaiser|Morgana|Nami|Nasus|Nautilus|Nidalee|Nocturne|Nunu et Willump|Olaf|Orianna|Ornn|Pantheon|Poppy|Pyke|Quinn|Rakan|Rammus|Rek'Sai|Renekton|Rengar|Riven|Rumble|Ryze|Sejuani|Shaco|Shen|Shyvana|Singed|Sion|Sivir|Skarner|Sona|Soraka|Swain|Syndra|Tahm Kench|Taliyah|Talon|Taric|Teemo|Thresh|Tristana|Trundle|Tryndamere|Twisted Fate|Twitch|Udyr|Urgot|Varus|Vayne|Veigar|Vel'Koz|Vi|Viktor|Vladimir|Volibear|Warwick|Wukong|Xayah|Xerath|Xin Zhao|Yasuo|Yorick|Zac|Zed|Ziggs|Zilean|Zoé|Zyra", "Rengar")
$launch_bp = GUICtrlCreateButton("Lancer", 131, 488, 147, 25)
$dp_tab = GUICtrlCreateTabItem("Outils DraftPick")
GUICtrlSetState(-1, $GUI_SHOW)
$dp_primary = GUICtrlCreateCombo("", 56, 120, 105, 25, BitOR($CBS_DROPDOWN, $CBS_AUTOHSCROLL))
GUICtrlSetData($dp_primary, "Toplane|Jungle|Midlane|AdCarry|Support", "Jungle")
$dp_secondary = GUICtrlCreateCombo("", 224, 120, 105, 25, BitOR($CBS_DROPDOWN, $CBS_AUTOHSCROLL))
GUICtrlSetData($dp_secondary, "Toplane|Jungle|Midlane|AdCarry|Support", "Toplane")
$Label1 = GUICtrlCreateLabel("Voie Principal", 56, 88, 108, 20, $SS_CENTER)
GUICtrlSetFont(-1, 12, 400, 0, "Vermin Vibes")
$Label2 = GUICtrlCreateLabel("Voie Secondaire", 216, 88, 124, 20, $SS_CENTER)
GUICtrlSetFont(-1, 12, 400, 0, "Vermin Vibes")
$champ_ban_dp = GUICtrlCreateList("", 48, 208, 145, 240)
GUICtrlSetData($champ_ban_dp, "Aatrox|Ahri|Akali|Alistar|Amumu|Anivia|Annie|Ashe|Aurelion Sol|Azir|Bard|Blitzcrank|Brand|Braum|Caitlyn|Camille|Cassiopeia|Cho'Gath|Corki|Darius|Diana|Dr. Mundo|Draven|Ekko|Elise|Evelynn|Ezreal|Fiddlesticks|Fiora|Fizz|Galio|Gangplank|Garen|Gnar|Gragas|Graves|Hecarim|Heimerdinger|Illaoi|Irelia|Ivern|Janna|Jarvan IV|Jax|Jayce|Jhin|Jinx|Kai'Sa|Kalista|Karma|Karthus|Kassadin|Katarina|Kayle|Kayn|Kennen|Kha'Zix|Kindred|Kled|Kog'Maw|LeBlanc|Lee Sin|Leona|Lissandra|Lucian|Lulu|Lux|Maître Yi|Malphite|Malzahar|Maokai|Miss Fortune|Mordekaiser|Morgana|Nami|Nasus|Nautilus|Nidalee|Nocturne|Nunu et Willump|Olaf|Orianna|Ornn|Pantheon|Poppy|Pyke|Quinn|Rakan|Rammus|Rek'Sai|Renekton|Rengar|Riven|Rumble|Ryze|Sejuani|Shaco|Shen|Shyvana|Singed|Sion|Sivir|Skarner|Sona|Soraka|Swain|Syndra|Tahm Kench|Taliyah|Talon|Taric|Teemo|Thresh|Tristana|Trundle|Tryndamere|Twisted Fate|Twitch|Udyr|Urgot|Varus|Vayne|Veigar|Vel'Koz|Vi|Viktor|Vladimir|Volibear|Warwick|Wukong|Xayah|Xerath|Xin Zhao|Yasuo|Yorick|Zac|Zed|Ziggs|Zilean|Zoé|Zyra", "Garen")
$champ_pick_dp = GUICtrlCreateList("", 208, 208, 145, 240)
GUICtrlSetData($champ_pick_dp, "Aatrox|Ahri|Akali|Alistar|Amumu|Anivia|Annie|Ashe|Aurelion Sol|Azir|Bard|Blitzcrank|Brand|Braum|Caitlyn|Camille|Cassiopeia|Cho'Gath|Corki|Darius|Diana|Dr. Mundo|Draven|Ekko|Elise|Evelynn|Ezreal|Fiddlesticks|Fiora|Fizz|Galio|Gangplank|Garen|Gnar|Gragas|Graves|Hecarim|Heimerdinger|Illaoi|Irelia|Ivern|Janna|Jarvan IV|Jax|Jayce|Jhin|Jinx|Kai'Sa|Kalista|Karma|Karthus|Kassadin|Katarina|Kayle|Kayn|Kennen|Kha'Zix|Kindred|Kled|Kog'Maw|LeBlanc|Lee Sin|Leona|Lissandra|Lucian|Lulu|Lux|Maître Yi|Malphite|Malzahar|Maokai|Miss Fortune|Mordekaiser|Morgana|Nami|Nasus|Nautilus|Nidalee|Nocturne|Nunu et Willump|Olaf|Orianna|Ornn|Pantheon|Poppy|Pyke|Quinn|Rakan|Rammus|Rek'Sai|Renekton|Rengar|Riven|Rumble|Ryze|Sejuani|Shaco|Shen|Shyvana|Singed|Sion|Sivir|Skarner|Sona|Soraka|Swain|Syndra|Tahm Kench|Taliyah|Talon|Taric|Teemo|Thresh|Tristana|Trundle|Tryndamere|Twisted Fate|Twitch|Udyr|Urgot|Varus|Vayne|Veigar|Vel'Koz|Vi|Viktor|Vladimir|Volibear|Warwick|Wukong|Xayah|Xerath|Xin Zhao|Yasuo|Yorick|Zac|Zed|Ziggs|Zilean|Zoé|Zyra", "Rengar")

$tit1 = GUICtrlCreateLabel("Champion à bannir", 56, 176, 123, 50, $SS_CENTER)
GUICtrlSetFont(-1, 12, 400, 0, "Vermin Vibes")
$tit2 = GUICtrlCreateLabel("Champion à Jouer", 216, 176, 126, 50, $SS_CENTER)
GUICtrlSetFont(-1, 12, 400, 0, "Vermin Vibes")
$launch_dp = GUICtrlCreateButton("Lancer", 131, 488, 147, 25)
$op_tab = GUICtrlCreateTabItem("Outils OP")
GUICtrlSetBkColor($op_tab, $COLOR_BLACK)
$auto_accept = GUICtrlCreateCheckbox("Activer l'AutoAccept", 50, 70, 209, 33)
GUICtrlSetFont(-1, 16, 400, 0, "Segoe UI Symbol")
$auto_report = GUICtrlCreateCheckbox("Activer l'AutoReport", 50, 113, 300, 33)
GUICtrlSetFont(-1, 16, 400, 0, "Segoe UI Symbol")
$pingtest = GUICtrlCreateButton("Lancer le Ping Checker", 95, 208, 219, 57)
GUICtrlSetFont(-1, 16, 400, 0, "Segoe UI Symbol")

$auto_login = GUICtrlCreateTabItem("Auto Login")
GUICtrlSetState(-1, $GUI_SHOW)
$username_input = GUICtrlCreateInput("IMORGANIC", 90, 104, 241, 33, BitOR($GUI_SS_DEFAULT_INPUT, $ES_CENTER))
GUICtrlSetFont(-1, 18, 400, 0, "Vermin Vibes")
$Label7 = GUICtrlCreateLabel("Nom d'Utilisateur", 70, 70, 280, 31, $SS_CENTER)
GUICtrlSetFont(-1, 20, 400, 0, "Vermin Vibes")
$Label8 = GUICtrlCreateLabel("Mot de passe", 110, 168, 190, 31, $SS_CENTER)
GUICtrlSetFont(-1, 20, 400, 0, "Vermin Vibes")
$pass_input = GUICtrlCreateInput("orgaaanic123456", 90, 208, 241, 38, BitOR($GUI_SS_DEFAULT_INPUT, $ES_CENTER))
GUICtrlSetFont(-1, 18, 800, 0, "Nexa Bold")
$launchlogin = GUICtrlCreateButton("Se Connecter", 135, 280, 170, 33)
GUICtrlSetFont(-1, 18, 400, 0, "Vermin Vibes")
GUICtrlCreateTabItem("")
GUISetState(@SW_SHOW)

While 1
	$msg = GUIGetMsg()
	If $msg = $XIcon[1] Then Exit
	If $msg = $XIcon[2] Then GUISetState(@SW_MINIMIZE)
	MouseOver()
	Sleep(10)
	$msg = GUIGetMsg()
	Switch $msg
		Case $XIcon[1]
			Exit
		Case $XIcon[2]
			GUISetState(@SW_MINIMIZE)
		Case $pingtest
			runPingTest()
		Case $launch_bp
			Image_Scan_blindpick()
		Case $launch_dp
			Image_Scan_draftpick()
		Case $auto_accept
			AutoAccept()
		Case $launchlogin
			Login()
	EndSwitch
WEnd

Func TogglePause()
	$Paused = Not $Paused
	While $Paused
		Sleep(100)
		ToolTip('Script is "Paused = SCRIPT IS NOT RUNNING = you wont get another message if you dont unpause it"', 0, 0)
	WEnd
	ToolTip("")

EndFunc   ;==>TogglePause

Func runPingTest()
	Sleep(300)
	Run("PingChecker.exe")
EndFunc   ;==>runPingTest
Func Login()

	Opt("PixelCoordMode", 1)
	Opt("MouseCoordMode", 1)
	$x1 = 0
	$y1 = 0
	WinWait("League of Legends", "")
	WinActivate("League of Legends", "")
	$rememberme = "fr image\rememberme.PNG"
	$searchrememberme = _imageSearch($rememberme, 1, $x1, $y1, 15, 0)
	If $searchrememberme = True Then
		$pass = GUICtrlRead($pass_input)
		$username = GUICtrlRead($username_input)
		WinActivate('League of Legends')
		ControlClick('League of Legends', '', '[classnn:Chrome_RenderWidgetHostHWND1]', 'left', 1, 1056, 247)
		ControlSend('League of Legends', '', '[classnn:Chrome_RenderWidgetHostHWND1]', $username)
		Sleep(500)
		ControlClick('League of Legends', '', '[classnn:Chrome_RenderWidgetHostHWND1]', 'left', 1, 885, 196)
		ControlSend('League of Legends', '', '[classnn:Chrome_RenderWidgetHostHWND1]', $pass)
		Sleep(700)
		ControlClick('League of Legends', '', '[classnn:Chrome_RenderWidgetHostHWND1]', 'left', 1, 884, 448)
	EndIf
EndFunc   ;==>Login
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
		$honorskip = "fr image\honorskip.PNG"
		$playagain = "fr image\playagain.PNG"
		$play = "fr image\play.PNG"
		$pvp = "fr image\pvp.PNG"
		$pvp_clicked = "fr image\pvp_clicked.PNG"
		$reconect = "fr image\reconect.PNG"
		$find_match = "fr image\find match.PNG"
		$accept = "fr image\accept.PNG"
		$leavequeue = "fr image\leavequeue.PNG"
		$ok = "fr image\ok.PNG"

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
		$5v5_clicked = "fr image\5v5 clicked.PNG"
		$5v5 = "fr image\5v5.PNG"
		$reconect = "fr image\reconect.PNG"

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

		$draftpick = "fr image\draftpick.PNG"
		$draftpick_clicked = "fr image\draftpick clicked.PNG"
		$blindpick = "fr image\blindpick.PNG"
		$blindpick_clicked = "fr image\blindpick clicked.PNG"
		$reconect = "fr image\reconect.PNG"

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
	$playagain = "fr image\playagain.PNG"
	$confirm = "fr image\confirm.PNG"
	$find_match = "fr image\find match.PNG"
	$accept = "fr image\accept.PNG"
	$reconect = "fr image\reconect.PNG"
	$leavequeue = "fr image\leavequeue.PNG"
	$iamin = "fr image\iamin.PNG"
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
		Case $searchiamin = True
			FindChamp_blindpick()
		Case Else
			Sleep(100)
			If ProcessExists("League of Legends.exe") Then PlayGame_blindpick()
	EndSelect

	FindChamp_blindpick()
EndFunc   ;==>Function3_blindpick
Func FindChamp_blindpick()
	$champ_name = GUICtrlRead($champ_bp)
	$lane_claim_bp = GUICtrlRead($lane_bp)
	WinWait("League of Legends", "")
	WinActivate("League of Legends", "")
	$x1 = 0
	$y1 = 0
	$iamin = "fr image\iamin.PNG"
	$searchiamin = _imageSearch($iamin, 1, $x1, $y1, 15, 0)
	Opt("SendKeyDownDelay", 10)
	Opt("MouseCoordMode", 2)
	Opt("PixelCoordMode", 2)
	If $searchiamin = True Then
		ControlClick('League of Legends', '', '[classnn:Chrome_RenderWidgetHostHWND1]', 'left', 1, 35, 547)
		ControlSend('League of Legends', '', '[classnn:Chrome_RenderWidgetHostHWND1]', $lane_claim_bp)
		Send("{ENTER}")
		Sleep(100)
		ControlClick('League of Legends', '', '[classnn:Chrome_RenderWidgetHostHWND1]', 'left', 1, 35, 547)
		ControlSend('League of Legends', '', '[classnn:Chrome_RenderWidgetHostHWND1]', $lane_claim_bp)
		Send("{ENTER}")
		Sleep(300)
		ControlClick('League of Legends', '', '[classnn:Chrome_RenderWidgetHostHWND1]', 'left', 1, 610, 82)
		Sleep(500)
		ControlSend('League of Legends', '', '[classnn:Chrome_RenderWidgetHostHWND1]', $champ_name)
		Sleep(500)
		ControlClick('League of Legends', '', '[classnn:Chrome_RenderWidgetHostHWND1]', 'left', 1, 303, 132)
		Sleep(500)
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
		$honorskip = "fr image\honorskip.PNG"
		$playagain = "fr image\playagain.PNG"
		$play = "fr image\play.PNG"
		$pvp = "fr image\pvp.PNG"
		$pvp_clicked = "fr image\pvp_clicked.PNG"
		$reconect = "fr image\reconect.PNG"
		$find_match = "fr image\find match.PNG"
		$accept = "fr image\accept.PNG"
		$leavequeue = "fr image\leavequeue.PNG"
		$ok = "fr image\ok.PNG"

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
		$5v5_clicked = "fr image\5v5 clicked.PNG"
		$5v5 = "fr image\5v5.PNG"
		$reconect = "fr image\reconect.PNG"

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

		$draftpick = "fr image\draftpick.PNG"
		$draftpick_clicked = "fr image\draftpick clicked.PNG"
		$blindpick = "fr image\blindpick.PNG"
		$blindpick_clicked = "fr image\blindpick clicked.PNG"
		$reconect = "fr image\reconect.PNG"

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

	MouseMove(551, 257)
	WinWait("League of Legends", "")
	WinActivate("League of Legends", "")
	$x1 = 0
	$y1 = 0
	Do
		$playagain = "fr image\playagain.PNG"
		$confirm = "fr image\confirm.PNG"
		$find_match = "fr image\find match.PNG"
		$accept = "fr image\accept.PNG"
		$reconect = "fr image\reconect.PNG"
		$iamin = "fr image\iamin.PNG"
		$leavequeue = "fr image\leavequeue.PNG"


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
				Image_Scan_draftpick()
			Case $searchconfirm = True
				MouseClick("left", $x1, $y1, 1, 20)
				Sleep(4000)
				$x1 = 0
				$y1 = 0
				$lane1 = GUICtrlRead($dp_primary)
				$lane2 = GUICtrlRead($dp_secondary)
				Switch $lane1

				Case $lane1 = 'Toplane'
						ConsoleWrite("Toplane")
;~ 						ControlClick('League of Legends', '', '[classnn:Chrome_RenderWidgetHostHWND1]', 'left', 1, 481, 454)
						MouseClick("left", 385, 354)
						Sleep(1000)
						MouseClick("left", 303, 357)
					Case $lane1 = 'Jungle'
						MouseClick("left", 385, 354)
						Sleep(1000)
						MouseClick("left", 325, 302)
					Case $lane1 = 'Midlane'
						MouseClick("left", 385, 354)
						Sleep(1000)
						MouseClick("left", 383, 278)
					Case $lane1 = 'AdCarry'
						MouseClick("left", 385, 354)
						Sleep(1000)
						MouseClick("left", 440, 300)
					Case $lane1 = 'Support'
						MouseClick("left", 385, 354)
						Sleep(1000)
						MouseClick("left", 464, 355)
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
	Opt("SendKeyDownDelay", 10)
	Opt("MouseCoordMode", 2)
	Opt("PixelCoordMode", 2)
	$ban_name = GUICtrlRead($champ_ban_dp)
	WinWait("League of Legends", "")
	WinActivate("League of Legends", "")
	$x1 = 0
	$y1 = 0
	$ban = "fr image\ban.PNG"
	$ban_active = "fr image\ban_active.PNG"
	$searchban = _imageSearch($ban, 1, $x1, $y1, 15, 0)
	$searchban_active = _imageSearch($ban_active, 1, $x1, $y1, 15, 0)
	If $searchban = True Then
		MouseClick('left', 610, 82, 1)
		Sleep(500)
		ControlSend('League of Legends', '', '[classnn:Chrome_RenderWidgetHostHWND1]', $ban_name)
		Sleep(1000)
		MouseClick('left', 303, 132, 1)
		Sleep(1000)
		ControlClick('League of Legends', '', '[classnn:Chrome_RenderWidgetHostHWND1]', 'left', 1, 508, 484)
		Sleep(1000)
	EndIf
	Do
		$lockin = "fr image\lockin.PNG"
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
	Opt("SendKeyDownDelay", 10)
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
	While 1
		Opt("PixelCoordMode", 1)
		Opt("MouseCoordMode", 1)
		$x1 = 0
		$y1 = 0
		WinWait("League of Legends", "")
		WinActivate("League of Legends", "")
		$accept = "fr image\accept.PNG"
		$searchaccept = _imageSearch($accept, 1, $x1, $y1, 15, 0)
		If $searchaccept = True Then
			MouseClick("left", $x1, $y1, 1, 20)
			MouseMove(551, 257)
		EndIf
		Sleep(100)
	WEnd
EndFunc   ;==>AutoAccept
