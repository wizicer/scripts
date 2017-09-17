// Icon made by Dave Gandy
Menu, Tray, Icon, layout.ico
startBarHeight := 38
SysGet, X1, 76
SysGet, Y1, 77
SysGet, Width, 78
SysGet, Height, 79
gridlevel1 := floor((Height-startBarHeight)*0.33)
gridlevel2 := floor((Height-startBarHeight)*0.67)
gridlevel3 := Height-startBarHeight
fullWidth := 1080*2

;Ctrl + Shift + Windows + Up 
^+#Up::
    WinGetActiveTitle, Title
    WinRestore, %Title%
    WinGetPos, CX, CY, CWidth, CHeight, %Title%
    if (CX = X1) && (CY = Y1) && (CHeight = gridlevel3) && (CWidth = fullWidth)
    {
   WinMove, %Title%,, X1, Y1, fullWidth, gridlevel2
    }
    else if (CX = X1) && (CY = Y1) && (CHeight = gridlevel2) && (CWidth = fullWidth) 
    {
   WinMove, %Title%,, X1, Y1, fullWidth, gridlevel1
    }
    else
    {
   WinMove, %Title%,, X1, Y1, fullWidth, gridlevel3
    }
return

;Ctrl + Shift + Windows + Down
^+#Down::
    WinGetActiveTitle, Title
    WinRestore, %Title%
    WinGetPos, CX, CY, CWidth, CHeight, %Title%
    if (CX = X1) && (CY = gridlevel2) && (CHeight = gridlevel1) && (CWidth = fullWidth) 
    {
   WinMove, %Title%,, X1, gridlevel1, fullWidth, gridlevel2
    }
    else
    {
   WinMove, %Title%,, X1, gridlevel2, fullWidth, gridlevel1
    }
return

;Shift + Windows + Up (maximize a window across all displays) https://stackoverflow.com/a/9830200/470749
+#Up::
    WinGetActiveTitle, Title
    WinRestore, %Title%
   WinMove, %Title%,, X1, Y1, Width, gridlevel3
return
