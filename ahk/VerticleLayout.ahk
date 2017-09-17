;Ctrl + Shift + Windows + Left 
^+#Left::
    WinGetActiveTitle, Title
    WinRestore, %Title%
    WinGetPos, CX, CY, CWidth, CHeight, %Title%
   SysGet, X1, 76
   SysGet, Y1, 77
   SysGet, Width, 78
   SysGet, Height, 79
    if (CX = X1) && (CY = Y1+38) && (CWidth = 1920) 
    {
   WinMove, %Title%,, X1, Y1+38, floor(1920 * 0.67), Height-38*2
    }
    else if (CX = X1) && (CY = Y1+38) && (CWidth = floor(1920 * 0.67)) 
    {
   WinMove, %Title%,, X1, Y1+38, floor(1920 * 0.33), Height-38*2
    }
    else
    {
   WinMove, %Title%,, X1, Y1+38, 1920, Height-38*2
    }
return

;Ctrl + Shift + Windows + Right 
^+#Right::
    WinGetActiveTitle, Title
    WinRestore, %Title%
    WinGetPos, CX, CY, CWidth, CHeight, %Title%
   SysGet, X1, 76
   SysGet, Y1, 77
   SysGet, Width, 78
   SysGet, Height, 79
    if (CX = X1) && (CY = Y1+38) && (CWidth = 1920) 
    {
   WinMove, %Title%,, X1 + floor(1920 * 0.33), Y1+38, 1920 * 0.67, Height-38*2
    }
    else if (CX = X1 + floor(1920 * 0.33)) && (CY = Y1+38) && (CWidth = floor(1920 * 0.67)) 
    {
   WinMove, %Title%,, X1 + floor(1920 * 0.67), Y1+38, floor(1920 * 0.33), Height-38*2
    }
    else
    {
   WinMove, %Title%,, X1, Y1+38, 1920, Height-38*2
    }
return

;Ctrl + Shift + Windows + Up 
^+#Up::
    WinGetActiveTitle, Title
    WinRestore, %Title%
    WinGetPos, CX, CY, CWidth, CHeight, %Title%
   SysGet, X1, 76
   SysGet, Y1, 77
   SysGet, Width, 78
   SysGet, Height, 79
    if (CX = X1) && (CY = Y1+38) && (CHeight = Height -38*2) 
    {
   WinMove, %Title%,, X1, Y1+38, 1920, (Height-38*2)*0.75
    }
    else if (CX = X1) && (CY = Y1+38) && (CHeight = (Height -38*2)*0.75) 
    {
   WinMove, %Title%,, X1, Y1+38+(Height-38*2)*0.25, 1920, (Height-38*2)*0.75
    }
    else
    {
   WinMove, %Title%,, X1, Y1+38, 1920, Height-38*2
    }
return

;Ctrl + Shift + Windows + Down
^+#Down::
    WinGetActiveTitle, Title
    WinRestore, %Title%
    WinGetPos, CX, CY, CWidth, CHeight, %Title%
   SysGet, X1, 76
   SysGet, Y1, 77
   SysGet, Width, 78
   SysGet, Height, 79
   WinMove, %Title%,, X1, Y1+(1080*2-1920), 1920+1080, 1920-38
return

;Shift + Windows + Up (maximize a window across all displays) https://stackoverflow.com/a/9830200/470749
+#Up::
    WinGetActiveTitle, Title
    WinRestore, %Title%
   SysGet, X1, 76
   SysGet, Y1, 77
   SysGet, Width, 78
   SysGet, Height, 79
   WinMove, %Title%,, X1, Y1+38, 1920, Height-38*2
return
; ;Ctrl + Shift + Windows + Up 
; ^+#Up::
;     WinGetActiveTitle, Title
;     WinRestore, %Title%
;     WinGetPos, CX, CY, CWidth, CHeight, %Title%
;    SysGet, X1, 76
;    SysGet, Y1, 77
;    SysGet, Width, 78
;    SysGet, Height, 79
;     if (CX = X1) && (CY = Y1) && (CHeight = Height -38) 
;     {
;    WinMove, %Title%,, X1, Y1, 1080*2, (Height-38)*0.66
;     }
;     else
;     {
;    WinMove, %Title%,, X1, Y1, 1080*2, Height-38
;     }
; return
;
; ;Ctrl + Shift + Windows + Down
; ^+#Down::
;     WinGetActiveTitle, Title
;     WinRestore, %Title%
;     WinGetPos, CX, CY, CWidth, CHeight, %Title%
;    SysGet, X1, 76
;    SysGet, Y1, 77
;    SysGet, Width, 78
;    SysGet, Height, 79
;     if (CX = X1) && (CY = (Height-38)*0.33) && ((Height-38)*0.33) 
;     {
;    WinMove, %Title%,, X1, (Height-38)*0.33, 1080*2, (Height-38)*0.66
;     }
;     else
;     {
;    WinMove, %Title%,, X1, (Height-38)*0.66, 1080*2, (Height-38)*0.33
;     }
; return
;
; ;Shift + Windows + Up (maximize a window across all displays) https://stackoverflow.com/a/9830200/470749
; +#Up::
;     WinGetActiveTitle, Title
;     WinRestore, %Title%
;    SysGet, X1, 76
;    SysGet, Y1, 77
;    SysGet, Width, 78
;    SysGet, Height, 79
;    WinMove, %Title%,, X1, Y1, Width, Height-38
; return
