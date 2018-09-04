Func XSkinColorTabCreate($XTleft, $XTtop, $XTwidth, $XTlength, $XTcolor)
	Local $XTab1 = GUICtrlCreateTab($XTleft, $XTtop, $XTwidth, $XTlength)
	GUICtrlCreateLabel("", $XTleft + 2, $XTtop + 20, $XTwidth - 6, $XTlength - 28)
	GUICtrlSetBkColor(-1, $XTcolor)
	GUICtrlSetState(-1, $GUI_DISABLE)
	Return $XTab1
EndFunc