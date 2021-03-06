VERSION 5.00
Object = "{3B7C8863-D78F-101B-B9B5-04021C009402}#1.2#0"; "RICHTX32.OCX"
Object = "{831FDD16-0C5C-11D2-A9FC-0000F8754DA1}#2.0#0"; "MSCOMCTL.OCX"
Object = "{86CF1D34-0C5F-11D2-A9FC-0000F8754DA1}#2.0#0"; "MSCOMCT2.OCX"
Begin VB.Form frmMain 
   Caption         =   "ScanPath 2.0 - Anything -- Demo of Class Object"
   ClientHeight    =   8685
   ClientLeft      =   60
   ClientTop       =   345
   ClientWidth     =   11355
   Icon            =   "ScanPathDemo.frx":0000
   LinkTopic       =   "Form1"
   ScaleHeight     =   8685
   ScaleWidth      =   11355
   StartUpPosition =   2  'CenterScreen
   Begin RichTextLib.RichTextBox RichTextBox1 
      Height          =   435
      Left            =   4170
      TabIndex        =   45
      Top             =   1770
      Visible         =   0   'False
      Width           =   435
      _ExtentX        =   767
      _ExtentY        =   767
      _Version        =   393217
      Enabled         =   -1  'True
      TextRTF         =   $"ScanPathDemo.frx":08CA
   End
   Begin MSComctlLib.ProgressBar ProgressBar1 
      Height          =   360
      Left            =   6705
      TabIndex        =   43
      Top             =   1590
      Width           =   4635
      _ExtentX        =   8176
      _ExtentY        =   635
      _Version        =   393216
      Appearance      =   0
      Scrolling       =   1
   End
   Begin VB.CommandButton CmdScanDir 
      Caption         =   "Scan Dir"
      Default         =   -1  'True
      Height          =   825
      Left            =   7410
      Picture         =   "ScanPathDemo.frx":0955
      Style           =   1  'Graphical
      TabIndex        =   42
      Top             =   720
      Width           =   825
   End
   Begin VB.Timer Timer1 
      Enabled         =   0   'False
      Interval        =   5000
      Left            =   585
      Top             =   4545
   End
   Begin VB.ListBox List1 
      Height          =   2595
      Left            =   60
      TabIndex        =   41
      Top             =   6000
      Width           =   11265
   End
   Begin VB.CommandButton cmdHelp 
      Caption         =   "Help !"
      Height          =   825
      Left            =   10755
      Picture         =   "ScanPathDemo.frx":121F
      Style           =   1  'Graphical
      TabIndex        =   40
      Top             =   705
      Visible         =   0   'False
      Width           =   615
   End
   Begin VB.TextBox txtHelp 
      Appearance      =   0  'Flat
      BackColor       =   &H80000018&
      Height          =   2115
      Left            =   2100
      Locked          =   -1  'True
      MultiLine       =   -1  'True
      ScrollBars      =   2  'Vertical
      TabIndex        =   39
      Text            =   "ScanPathDemo.frx":1AE9
      Top             =   3885
      Visible         =   0   'False
      Width           =   7245
   End
   Begin VB.ComboBox cboMask 
      Height          =   315
      Left            =   540
      TabIndex        =   1
      Top             =   1110
      Width           =   6105
   End
   Begin VB.CommandButton cmdBrowse 
      Caption         =   "..."
      Height          =   315
      Left            =   6090
      TabIndex        =   27
      TabStop         =   0   'False
      Top             =   750
      Width           =   555
   End
   Begin VB.TextBox txtPath 
      Height          =   315
      Left            =   555
      TabIndex        =   0
      Text            =   "E:\My Music Zen"
      Top             =   735
      Width           =   5505
   End
   Begin VB.CheckBox chkSubFolders 
      Caption         =   "Search Sub-Folders"
      Height          =   195
      Left            =   1530
      TabIndex        =   8
      Top             =   2070
      Value           =   1  'Checked
      Width           =   1785
   End
   Begin VB.CheckBox chkPatternMatching 
      Caption         =   "Pattern Matching"
      Height          =   195
      Left            =   1530
      TabIndex        =   7
      Top             =   1830
      Width           =   1815
   End
   Begin VB.CheckBox chkNormal 
      Caption         =   "Normal"
      Height          =   195
      Left            =   90
      TabIndex        =   2
      Top             =   1830
      Value           =   1  'Checked
      Width           =   1365
   End
   Begin VB.CheckBox chkArchive 
      Caption         =   "Archive"
      Height          =   195
      Left            =   90
      TabIndex        =   3
      Top             =   2070
      Value           =   1  'Checked
      Width           =   1365
   End
   Begin VB.CheckBox chkHidden 
      Caption         =   "Hidden"
      Height          =   195
      Left            =   90
      TabIndex        =   4
      Top             =   2310
      Value           =   1  'Checked
      Width           =   1365
   End
   Begin VB.CheckBox chkReadOnly 
      Caption         =   "Read Only"
      Height          =   195
      Left            =   90
      TabIndex        =   5
      Top             =   2535
      Value           =   1  'Checked
      Width           =   1365
   End
   Begin VB.CheckBox chkSystem 
      Caption         =   "System"
      Height          =   195
      Left            =   90
      TabIndex        =   6
      Top             =   2760
      Value           =   1  'Checked
      Width           =   1365
   End
   Begin VB.ComboBox cboDate 
      Height          =   315
      Left            =   5940
      Style           =   2  'Dropdown List
      TabIndex        =   12
      Top             =   2010
      Width           =   1545
   End
   Begin VB.ComboBox cboSizeType 
      Height          =   315
      Index           =   0
      Left            =   9930
      Style           =   2  'Dropdown List
      TabIndex        =   17
      Top             =   2400
      Width           =   1365
   End
   Begin VB.ComboBox cboSize 
      Height          =   315
      Left            =   8580
      Style           =   2  'Dropdown List
      TabIndex        =   15
      Top             =   2010
      Width           =   1365
   End
   Begin VB.TextBox txtSize 
      Alignment       =   1  'Right Justify
      Height          =   315
      Index           =   0
      Left            =   8580
      TabIndex        =   16
      Top             =   2400
      Width           =   1305
   End
   Begin VB.ComboBox cboSizeType 
      Height          =   315
      Index           =   1
      Left            =   9930
      Style           =   2  'Dropdown List
      TabIndex        =   19
      Top             =   2760
      Width           =   1365
   End
   Begin VB.TextBox txtSize 
      Alignment       =   1  'Right Justify
      Height          =   315
      Index           =   1
      Left            =   8580
      TabIndex        =   18
      Top             =   2760
      Width           =   1305
   End
   Begin VB.CheckBox chkRefreshListView 
      Caption         =   "Refresh ListView (slower)"
      Height          =   195
      Left            =   1530
      TabIndex        =   10
      Top             =   2610
      Width           =   2205
   End
   Begin VB.PictureBox Picture1 
      Align           =   1  'Align Top
      BackColor       =   &H00FFFFFF&
      Height          =   585
      Left            =   0
      ScaleHeight     =   525
      ScaleWidth      =   11295
      TabIndex        =   22
      Top             =   0
      Width           =   11355
      Begin VB.Label Label7 
         AutoSize        =   -1  'True
         BackStyle       =   0  'Transparent
         Caption         =   "Single File solution to quickly add file processing to any Utility Project."
         BeginProperty Font 
            Name            =   "MS Sans Serif"
            Size            =   8.25
            Charset         =   0
            Weight          =   700
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         ForeColor       =   &H00FF0000&
         Height          =   195
         Left            =   1260
         TabIndex        =   25
         Top             =   300
         Width           =   6015
      End
      Begin VB.Label Label6 
         AutoSize        =   -1  'True
         BackStyle       =   0  'Transparent
         Caption         =   "A High Performance API file/folder scanner Class."
         BeginProperty Font 
            Name            =   "MS Sans Serif"
            Size            =   8.25
            Charset         =   0
            Weight          =   700
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         ForeColor       =   &H00FF0000&
         Height          =   195
         Left            =   1260
         TabIndex        =   24
         Top             =   60
         Width           =   4260
      End
      Begin VB.Label Label5 
         AutoSize        =   -1  'True
         BackStyle       =   0  'Transparent
         Caption         =   "Description:"
         BeginProperty Font 
            Name            =   "MS Sans Serif"
            Size            =   8.25
            Charset         =   0
            Weight          =   700
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         Height          =   195
         Left            =   90
         TabIndex        =   23
         Top             =   60
         Width           =   1035
      End
   End
   Begin VB.CheckBox chkCopyMemory 
      Caption         =   "Use CopyMemory (display Date && Size)"
      Height          =   195
      Left            =   1530
      TabIndex        =   11
      Top             =   2850
      Width           =   3465
   End
   Begin MSComctlLib.ListView ListView1 
      Height          =   2745
      Left            =   45
      TabIndex        =   21
      Top             =   3210
      Width           =   11295
      _ExtentX        =   19923
      _ExtentY        =   4842
      LabelEdit       =   1
      LabelWrap       =   -1  'True
      HideSelection   =   -1  'True
      _Version        =   393217
      ForeColor       =   -2147483640
      BackColor       =   -2147483643
      BorderStyle     =   1
      Appearance      =   1
      NumItems        =   0
   End
   Begin VB.CheckBox chkSort 
      Caption         =   "Sort Files(A-Z) while Scanning"
      Height          =   195
      Left            =   1530
      TabIndex        =   9
      Top             =   2310
      Value           =   1  'Checked
      Width           =   2535
   End
   Begin VB.CommandButton cmdScan 
      Caption         =   "Scan"
      Height          =   825
      Left            =   6705
      Picture         =   "ScanPathDemo.frx":1C21
      Style           =   1  'Graphical
      TabIndex        =   20
      Top             =   720
      Width           =   675
   End
   Begin MSComCtl2.DTPicker DTPicker1 
      Height          =   315
      Index           =   0
      Left            =   5940
      TabIndex        =   13
      Top             =   2400
      Width           =   1545
      _ExtentX        =   2725
      _ExtentY        =   556
      _Version        =   393216
      CheckBox        =   -1  'True
      Format          =   16318465
      CurrentDate     =   37299
   End
   Begin MSComCtl2.DTPicker DTPicker1 
      Height          =   315
      Index           =   1
      Left            =   5940
      TabIndex        =   14
      Top             =   2760
      Width           =   1545
      _ExtentX        =   2725
      _ExtentY        =   556
      _Version        =   393216
      CheckBox        =   -1  'True
      Format          =   16318465
      CurrentDate     =   37296
   End
   Begin VB.Label Label13 
      Alignment       =   2  'Center
      Appearance      =   0  'Flat
      BackColor       =   &H80000005&
      BorderStyle     =   1  'Fixed Single
      Caption         =   "-"
      ForeColor       =   &H80000008&
      Height          =   285
      Left            =   8310
      TabIndex        =   44
      Top             =   1050
      Width           =   1875
   End
   Begin VB.Label Label12 
      AutoSize        =   -1  'True
      Caption         =   "Date/Size Filter:"
      BeginProperty Font 
         Name            =   "MS Sans Serif"
         Size            =   8.25
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   195
      Left            =   5130
      TabIndex        =   38
      Top             =   1590
      Width           =   1410
   End
   Begin VB.Label Label11 
      AutoSize        =   -1  'True
      Caption         =   "Options:"
      BeginProperty Font 
         Name            =   "MS Sans Serif"
         Size            =   8.25
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   195
      Left            =   1530
      TabIndex        =   30
      Top             =   1590
      Width           =   720
   End
   Begin VB.Label Label2 
      AutoSize        =   -1  'True
      Caption         =   "Mask"
      Height          =   195
      Left            =   90
      TabIndex        =   28
      Top             =   1140
      Width           =   390
   End
   Begin VB.Label Label1 
      AutoSize        =   -1  'True
      Caption         =   "Path"
      Height          =   195
      Left            =   90
      TabIndex        =   26
      Top             =   810
      Width           =   330
   End
   Begin VB.Label Label3 
      AutoSize        =   -1  'True
      Caption         =   "Attributes:"
      BeginProperty Font 
         Name            =   "MS Sans Serif"
         Size            =   8.25
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   195
      Left            =   90
      TabIndex        =   29
      Top             =   1590
      Width           =   885
   End
   Begin VB.Label lblSize 
      AutoSize        =   -1  'True
      Caption         =   "Min"
      Height          =   195
      Index           =   0
      Left            =   7770
      TabIndex        =   35
      Top             =   2460
      Width           =   255
   End
   Begin VB.Label Label10 
      AutoSize        =   -1  'True
      Caption         =   "File Size"
      Height          =   195
      Left            =   7770
      TabIndex        =   33
      Top             =   2040
      Width           =   585
   End
   Begin VB.Label lblSize 
      AutoSize        =   -1  'True
      Caption         =   "Max"
      Height          =   195
      Index           =   1
      Left            =   7770
      TabIndex        =   37
      Top             =   2820
      Width           =   300
   End
   Begin VB.Label Label9 
      AutoSize        =   -1  'True
      Caption         =   "From"
      Height          =   195
      Left            =   5130
      TabIndex        =   34
      Top             =   2460
      Width           =   345
   End
   Begin VB.Label Label8 
      AutoSize        =   -1  'True
      Caption         =   "File Date"
      Height          =   195
      Left            =   5130
      TabIndex        =   32
      Top             =   2040
      Width           =   630
   End
   Begin VB.Label Label4 
      AutoSize        =   -1  'True
      Caption         =   "To"
      Height          =   195
      Left            =   5130
      TabIndex        =   36
      Top             =   2760
      Width           =   195
   End
   Begin VB.Label lblCount 
      Alignment       =   2  'Center
      Appearance      =   0  'Flat
      BackColor       =   &H80000005&
      BorderStyle     =   1  'Fixed Single
      Caption         =   "-"
      ForeColor       =   &H80000008&
      Height          =   285
      Left            =   8310
      TabIndex        =   31
      Top             =   750
      Width           =   1875
   End
End
Attribute VB_Name = "frmMain"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
'Search
'Start
'----
'Mirrored from www.eroticxxxstories.com/sexstories/
'by HTTrack Website Copier/3.x [XR&CO'2007]
'Tue, 10 Feb 2009 14:21:59 GMT
'Matt Lan - Conversion to Text
'------------------------------------------------


'Option Explicit

'##############################################################################################
'Purpose:   This project is a Demo for my cScanPath Class

'           This Class scans a specified path and returns the files it finds.
'           It has fairly comprehensive Filters. You can select files by:
'           Attributes (Normal, Hidden, Read Only, System etc)
'           File Size (>, <, Range)
'           File Date (From, To, Range)
'           File Extensions (multiple allowed i.e. *.txt;*.dat;*.tmp)

'           You can optionally scan sub-folders

'           To keep the demo simple I have only used attributes & Extensions
'           for Filter. For full example of this Class see WipeIt3 submission
       
'Author:    Richard Mewett �2005
'##############################################################################################

Private Declare Sub CopyMemory Lib "kernel32" Alias "RtlMoveMemory" (hpvDest As Any, hpvSource As Any, ByVal cbCopy As Long)
Private Declare Function LockWindowUpdate Lib "user32" (ByVal hwndLock As Long) As Long

'We must declare with WithEvents to process the files returned
Private WithEvents SP As cScanPath
Attribute SP.VB_VarHelpID = -1

Sub Start()

frmMain.Show

'txtPath.Text = "D:\VB6\VB-NT\00_Best_VB_01\StripTags\alldays"
txtPath.Text = "M:\HTTrack\XXX-Storys\XXX Storys\www.eroticxxxstories.com\sexstories"
cboMask = ".html;*.html"

Call cmdScan_Click
'MkDir txtPath + "\text"
For we = 1 To ListView1.ListItems.Count
    Label13 = we
    a1$ = ListView1.ListItems.Item(we).SubItems(1)
    b1$ = ListView1.ListItems.Item(we)
    'Open a1$ + b1$ For Input As #1
    'rr2 = Input$(1, LOF(1))
    'Close #1
    RichTextBox1.LoadFile (a1$ + b1$)
    tt = InStr(RichTextBox1.Text, vbTab + vbTab + vbTab + "<td width=""723"" align=""center"" valign=""top"">" + vbLf + vbTab + vbTab + vbTab + "<h2><font face=""Verdana"">")
    RichTextBox1.SelStart = tt
    RichTextBox1.SelLength = Len(RichTextBox1.Text) - tt
    RichTextBox1.Text = RichTextBox1.SelText
    
    tt = InStr(RichTextBox1.Text, "<font face=""Verdana"">")
    tt = tt + 19
    RichTextBox1.SelStart = tt
    RichTextBox1.SelLength = Len(RichTextBox1.Text) - tt
    RichTextBox1.Text = RichTextBox1.SelText
    
    tt = InStr(RichTextBox1.Text, "<br></span></font></td>")
    RichTextBox1.SelStart = 1
    RichTextBox1.SelLength = tt + 2
    RichTextBox1.Text = RichTextBox1.SelText
    
    rr2$ = RichTextBox1.Text
    
    tt1 = 1
    xx = 0
    Do
    DoEvents
    tt1 = InStr(tt1 + 2, rr2$, vbLf)
    xx = xx + 1
    If tt1 = 0 Then Exit Do
    If xx > 3 Then
        rr2$ = Mid$(rr2$, 1, tt1 - 1) + vbCrLf + Mid$(rr2$, tt1 + 1)
    Else
        rr2$ = Mid$(rr2$, 1, tt1 - 1) + Mid$(rr2$, tt1 + 1)
    End If
    Loop Until tt1 = 0
    
    tt1 = 1
    Do
    DoEvents
    tt1 = InStr(tt1, rr2$, vbTab)
    If tt1 = 0 Then Exit Do
    rr2$ = Mid$(rr2$, 1, tt1 - 1) + Mid$(rr2$, tt1 + 1)
    Loop Until tt1 = 0
    
    tt1 = 1
    Do
    DoEvents
    tt1 = InStr(tt1, rr2$, "<br>")
    If tt1 = 0 Then Exit Do
    rr2$ = Mid$(rr2$, 1, tt1 - 1) + vbCrLf + Mid$(rr2$, tt1 + 4)
    Loop Until tt1 = 0
    
    tt1 = 1
    Do
    DoEvents
    tt1 = InStr(tt1, rr2$, "<")
    If tt1 = 0 Then Exit Do
    tt2 = InStr(tt1, rr2$, ">")
    If tt2 = 0 Then Stop
    rr2$ = Mid$(rr2$, 1, tt1 - 1) + Mid$(rr2$, tt2 + 1)
    Loop Until tt1 = 0
    
    tt1 = InStr(1, rr2$, "<")
    tt2 = InStr(1, rr2$, ">")
    If tt2 > 0 Or tt1 > 0 Then Stop
    
    tt1 = 1
    Do
    DoEvents
    tt1 = InStr(tt1, rr2$, "&lt;")
    If tt1 = 0 Then Exit Do
    rr2$ = Mid$(rr2$, 1, tt1 - 1) + "<" + Mid$(rr2$, tt1 + 4)
    Loop Until tt1 = 0
    
    tt1 = 1
    Do
    DoEvents
    tt1 = InStr(tt1, rr2$, "&gt;")
    If tt1 = 0 Then Exit Do
    rr2$ = Mid$(rr2$, 1, tt1 - 1) + ">" + Mid$(rr2$, tt1 + 4)
    Loop Until tt1 = 0
    
    tt2 = InStr(1, rr2$, ";")
    If tt2 > 0 Then
    tt1 = InStrRev(rr2$, "&", tt2)
    If tt1 + 3 = tt2 Then Stop
    End If
    'mid$(rr2$,tt2-5,10)
    
    b1$ = Left$(b1$, InStrRev(b1$, ".")) + "txt"
    DoEvents
    gg1$ = "#" + Format$(we, "0000") + " -- :: Erotic XXX Stories :: --" + vbCrLf
    gg1$ = gg1$ + "---------------------------------------------------" + vbCrLf
    gg2$ = "----" + vbCrLf + "Mirrored from www.eroticxxxstories.com/sexstories/" + vbCrLf
    gg2$ = gg2$ + "by HTTrack Website Copier/3.x [XR&CO'2007]" + vbCrLf
    gg2$ = gg2$ + "Tue, 10 Feb 2009 14:21:59 GMT" + vbCrLf
    gg2$ = gg2$ + "Matt Lan - Conversion to Text" + vbCrLf
    gg2$ = gg2$ + "------------------------------------------------" + vbCrLf
    
    
    rr2$ = gg1$ + vbCrLf + rr2$ + gg2$
    
    '</span></font></td>
    Open a1$ + "\Text\" + b1$ For Output As #1
    Print #1, rr2$;
    Close #1
Next

End

txtPath.Text = "M:\HTTrack\XXX-Storys\XXX Storys\www.eroticxxxstories.com\sexstories\text"
cboMask = ".html;*.html"

Call cmdScan_Click

For we = 1 To 10 'ListView1.ListItems.Count
    Label13 = we
    a1$ = ListView1.ListItems.Item(we).SubItems(1)
    b1$ = ListView1.ListItems.Item(we)

    gt = FreeFile
    Open a1$ + b1$ For Input As #gt
    wr$ = Input$(LOF(gt), gt)
    Close gt

    h1$ = Mid$(b1$, 1, InStrRev(b1$, ".")) + "txt"

    'Call HTML2Text(wr$, a1$ + h1$)
    XFileSpec = a1$ + b1$
    
    Call frmStripTag.cmdFileOpen_Click
    
    Call frmStripTag.cmdStripTags_click
    
    frmStripTag.Text1.SaveFile a1$ + h1$, 1

    DoEvents
    frmMain.Refresh

Next

End

Exit Sub

txtPath.Text = "D:\VB6\VB-NT\00_Best_VB_01\StripTags\alldays"
cboMask = ".txt"
DoEvents

Call cmdScan_Click

Open txtPath.Text + "All in One Dates.txt" For Output As #1

For we = 1 To ListView1.ListItems.Count
    Label13 = we
    Do
    a1$ = ListView1.ListItems.Item(we).SubItems(1)
    b1$ = ListView1.ListItems.Item(we)
    
'    If b1$ = "jan02.txt" Then Stop
    
    
    xc = 0
    If b1$ = "All in One Dates.txt" Then we = we + 1: xc = 1 ': Stop
    If b1$ = "All in One Dates2.txt" Then we = we + 1: xc = 1 ': Stop
    
    Loop Until xc = 0

    Open a1$ + b1$ For Input As #2
    Do
    Line Input #2, ll$
    Do
        ll$ = Replace(ll$, vbLf, " ")
    Loop Until InStr(ll$, vbLf) = 0
    Do
    ll$ = Replace(ll$, vbCrLf, " ")
    Loop Until InStr(ll$, vbCrLf) = 0
    hh$ = ""
    rf = 0
    Do
    rf = InStr(rf + 3, ll$, " - ")
    If rf > 0 Then
        tg$ = Mid$(ll$, rf - 4, 1)
        If InStr("0123456789", tg$) > 0 Then
            hh$ = Mid$(ll$, 1, rf - 5) + vbCrLf + Mid$(ll$, rf - 4)
            ll$ = hh$
        End If
    End If
    Loop Until rf = 0

    Do
        ll$ = Replace(ll$, "  ", " ")
    Loop Until InStr(ll$, "  ") = 0
    
    Print #1, ll$
    
    Loop Until EOF(2)
    Close #2
Next
Close #1

Open txtPath.Text + "All in One Dates.txt" For Input As #1
Open txtPath.Text + "All in One Dates2.txt" For Output As #2

    Do
    
    Line Input #1, ll$


    rf = InStr(ll$, "On-This-Day.com -")
    If rf > 0 Then
        'If InStr(ll$, "January 2") Then Stop
        tt1 = InStr(Len(" - "), ll$, " ")
        tt3 = InStr(ll$, " - ")
        tt2 = InStr(tt3 + 3, ll$, " ")
        yy1$ = Mid$(ll$, tt1 + 3, tt2 - tt1 - 3)
        yy2$ = Format$(Val(Mid$(ll$, tt2 + 1, 2)), "00")
        'gb$=
    End If
    
    ll$ = Trim(ll$)
    rr$ = ""
    
    If rf = 0 Then
    Err.Clear
    On Error Resume Next
    rr$ = Format$(DateValue(yy2$ + "-" + yy1$ + "-" + Mid$(ll$, 1, 4)), "DD-MM-YYYY")
    If Err.Number > 0 Then rf = 1
    On Error GoTo 0
    'If Val(Mid$(ll$, 1, 4)) < 30 Then MsgBox "Hello" + vbCrLf + ll$
    End If
    
    If rf = 0 Then Print #2, rr$ + Mid$(ll$, 7)
Loop Until EOF(1)
Close #1, #2

'Kill txtPath.Text + "All in One Dates.txt"
'Name txtPath.Text + "All in One Dates2.txt" As txtPath.Text + "All in One Dates.txt"

End
End Sub


Private Sub cboSize_Click()
    Select Case cboSize.ListIndex
    Case 0
        lblSize(0).Visible = False
        lblSize(1).Visible = False
        txtSize(0).Visible = False
        txtSize(1).Visible = False
        cboSizeType(0).Visible = False
        cboSizeType(1).Visible = False
    Case 1, 2
        lblSize(0).Caption = "Size"
        lblSize(0).Visible = True
        lblSize(1).Visible = False
        txtSize(0).Visible = True
        txtSize(1).Visible = False
        cboSizeType(0).Visible = True
        cboSizeType(1).Visible = False
    Case Else
        lblSize(0).Caption = "Min"
        lblSize(1).Caption = "Max"
        lblSize(1).Visible = True
        lblSize(0).Visible = True
        txtSize(0).Visible = True
        txtSize(1).Visible = True
        cboSizeType(0).Visible = True
        cboSizeType(1).Visible = True
    End Select
End Sub


Private Sub chkCopyMemory_Click()
    chkSort.Enabled = (chkCopyMemory.Value = vbUnchecked)
    
    With ListView1
        If chkCopyMemory.Value Then
            .ColumnHeaders("PATH").Width = 5000
            .ColumnHeaders("SIZE").Width = 1250
            .ColumnHeaders("DATE").Width = 1750
        Else
            .ColumnHeaders("PATH").Width = 8000
            .ColumnHeaders("SIZE").Width = 0
            .ColumnHeaders("DATE").Width = 0
        End If
    End With
End Sub


Private Sub chkSort_Click()
    chkCopyMemory.Enabled = (chkSort.Value = vbUnchecked)
End Sub

Private Sub Cmd_scanDir_Click()

End Sub

Private Sub cmdBrowse_Click()
    txtPath.Text = GetFolder(Me.hWnd, "Scan Path:", txtPath.Text)
'    fg1 = FreeFile
'    Open App.Path + "\Scan Path.txt" For Output As #fg1
'    Print #fg1, txtPath.Text
'    Close #fg1

'    fg1 = FreeFile
'    Open App.Path + "\Scan Path.txt" For Input As #fg1
'    Line Input #fg1, ae$
'    Close #fg1
'    txtPath.Text = ae$



End Sub

Private Sub cmdHelp_Click()
    txtHelp.Visible = Not txtHelp.Visible
End Sub

Public Sub cmdScan_Click()
    Dim lCount As Long
    Dim lSize(1) As Long
    
    If cmdScan.Caption = "Scan" Then
        '####################################################################################################
        'Process our Selection Criteria
        For lCount = 0 To 1
            lSize(lCount) = Val(txtSize(lCount).Text)
        
            Select Case cboSizeType(lCount).ListIndex
            Case 1: lSize(lCount) = lSize(lCount) * 1024
            Case 2: lSize(lCount) = (lSize(lCount) * 1024) * 1024
            End Select
        Next lCount
            
        If txtSize(1).Visible Then
            If lSize(0) = 0 Then
                MsgBox "Maximium Size value must exceed 0", vbExclamation
                txtSize(1).SetFocus
                Exit Sub
            ElseIf lSize(1) <= lSize(0) Then
                MsgBox "Maximium Size value must exceed Minimum Size", vbExclamation
                txtSize(1).SetFocus
                Exit Sub
            End If
        End If
        
        '####################################################################################################
        'Reset Form
        cmdScan.Caption = "Stop"
        lblCount.Caption = "-"
 
        Screen.MousePointer = vbHourglass
        ListView1.ListItems.Clear
        
        If chkRefreshListView.Value = vbUnchecked Then
            LockWindowUpdate ListView1.hWnd
        End If
        
        '####################################################################################################
        'Create our Scan Object
        Set SP = New cScanPath
        
        With SP
            'Attributes
            .Archive = chkArchive.Value
            .Compressed = True
            .Hidden = chkHidden.Value
            .Normal = chkNormal.Value
            .ReadOnly = chkReadOnly.Value
            .System = chkSystem.Value
            
            'Date/Size (NOTE: you don't have to use these!)
            Select Case cboDate.ListIndex
            Case 0
                .DateType = Modified
            Case 1
                .DateType = Created
            Case 2
                .DateType = LastAccessed
            End Select
            
            If IsDate(DTPicker1(0).Value) Then
                .FromDate = DTPicker1(0).Value
            End If
            If IsDate(DTPicker1(1).Value) Then
                .ToDate = DTPicker1(1).Value
            End If
            
            Select Case cboSize.ListIndex
            Case 1
                .MaximumSize = lSize(0)
            Case 2
                .MinimumSize = lSize(0)
            Case 3
                .MinimumSize = lSize(0)
                .MaximumSize = lSize(1)
            End Select
            
            'Mask
            .Filter = cboMask.Text
            
            'Go - that was easy wasn't it!
            .StartScan txtPath, chkSubFolders.Value, chkSort.Value And chkSort.Enabled, chkPatternMatching
        End With
        
       With ListView1
            If .ListItems.Count > 0 Then
                .SelectedItem = .ListItems(1)
            End If
            
            lblCount.Caption = .ListItems.Count
        End With
        
        LockWindowUpdate 0
        
        cmdScan.Caption = "Scan"
        Screen.MousePointer = vbDefault
    Else
        'User want's to stop current scan
        SP.StopScan
    End If






frmMain.Refresh

'Call Jeepers

End Sub

Public Sub cmdScanDir_Click()
    Dim lCount As Long
    Dim lSize(1) As Long
    
    If cmdScan.Caption = "Scan" Then
        '####################################################################################################
        'Process our Selection Criteria
        For lCount = 0 To 1
            lSize(lCount) = Val(txtSize(lCount).Text)
        
            Select Case cboSizeType(lCount).ListIndex
            Case 1: lSize(lCount) = lSize(lCount) * 1024
            Case 2: lSize(lCount) = (lSize(lCount) * 1024) * 1024
            End Select
        Next lCount
            
        If txtSize(1).Visible Then
            If lSize(0) = 0 Then
                MsgBox "Maximium Size value must exceed 0", vbExclamation
                txtSize(1).SetFocus
                Exit Sub
            ElseIf lSize(1) <= lSize(0) Then
                MsgBox "Maximium Size value must exceed Minimum Size", vbExclamation
                txtSize(1).SetFocus
                Exit Sub
            End If
        End If
        
        '####################################################################################################
        'Reset Form
        cmdScan.Caption = "Stop"
        lblCount.Caption = "-"
 
        Screen.MousePointer = vbHourglass
        ListView1.ListItems.Clear
        
        If chkRefreshListView.Value = vbUnchecked Then
            LockWindowUpdate ListView1.hWnd
        End If
        
        '####################################################################################################
        'Create our Scan Object
        Set SP = New cScanPath
        
        With SP
            'Attributes
            .Archive = chkArchive.Value
            .Compressed = True
            .Hidden = chkHidden.Value
            .Normal = chkNormal.Value
            .ReadOnly = chkReadOnly.Value
            .System = chkSystem.Value
            
            'Date/Size (NOTE: you don't have to use these!)
            Select Case cboDate.ListIndex
            Case 0
                .DateType = Modified
            Case 1
                .DateType = Created
            Case 2
                .DateType = LastAccessed
            End Select
            
            If IsDate(DTPicker1(0).Value) Then
                .FromDate = DTPicker1(0).Value
            End If
            If IsDate(DTPicker1(1).Value) Then
                .ToDate = DTPicker1(1).Value
            End If
            
            Select Case cboSize.ListIndex
            Case 1
                .MaximumSize = lSize(0)
            Case 2
                .MinimumSize = lSize(0)
            Case 3
                .MinimumSize = lSize(0)
                .MaximumSize = lSize(1)
            End Select
            
            'Mask
            .Filter = cboMask.Text
            
            'Go - that was easy wasn't it!
            .StartScanDir txtPath, chkSubFolders.Value, chkSort.Value And chkSort.Enabled, chkPatternMatching
        End With
        
       With ListView1
            If .ListItems.Count > 0 Then
                .SelectedItem = .ListItems(1)
            End If
            
            lblCount.Caption = .ListItems.Count
        End With
        
        LockWindowUpdate 0
        
        cmdScan.Caption = "Scan"
        Screen.MousePointer = vbDefault
    Else
        'User want's to stop current scan
        SP.StopScan
    End If



For we = ListView1.ListItems.Count To 2 Step -1
    a1$ = frmMain.ListView1.ListItems.Item(we)
    a2$ = frmMain.ListView1.ListItems.Item(we).SubItems(1)
    b1$ = frmMain.ListView1.ListItems.Item(we - 1)
    b2$ = frmMain.ListView1.ListItems.Item(we - 1).SubItems(1)
    If a1$ + b1$ = a2$ + b2$ Then frmMain.ListView1.ListItems.Remove (we)
    
    
    
    'b1$ = frmMain.ListView1.ListItems.Item(we)

Next

lblCount.Caption = ListView1.ListItems.Count
    
frmMain.Refresh

'Call Jeepers

End Sub



Private Sub Form_Load()
    Dim lCount As Long
    
    With cboMask
        .AddItem "*.*"
        .AddItem "*.dll;*.exe;*.ocx"
        .AddItem "*.doc;*.mdb;*.xls"
        .AddItem "*.bmp;*.gif;*.jpg;*.tif"
        .AddItem "*.bas;*.cls;*.ctl;*.frm;*.vbp"
        .ListIndex = 0
    End With
    
    DTPicker1(0).Value = DateSerial(Year(Now), Month(Now) - 3, Day(Now))
    DTPicker1(1).Value = Now
    
    DTPicker1(0).Value = Empty
    DTPicker1(1).Value = Empty
    
    With cboDate
        .AddItem "Modified"
        .AddItem "Created"
        .AddItem "Last Accessed"
        .ListIndex = 0
    End With
    
    With cboSize
        .AddItem "Any Size"
        .AddItem "Less Than"
        .AddItem "Greater Than"
        .AddItem "Between"
        .ListIndex = 0
    End With
        
    For lCount = 0 To 1
        With cboSizeType(lCount)
            .AddItem "Bytes"
            .AddItem "Kilobytes"
            .AddItem "Megabytes"
            .ListIndex = 1
        End With
    Next lCount
    
    With ListView1
        .ColumnHeaders.Add , "FILE", "File", 3000, lvwColumnLeft
        .ColumnHeaders.Add , "PATH", "Path", 8000, lvwColumnLeft
        .ColumnHeaders.Add , "SIZE", "Size", 0, lvwColumnRight
        .ColumnHeaders.Add , "DATE", "Date", 0, lvwColumnLeft
        
        .View = lvwReport
    End With

'    fg1 = FreeFile
'    Open App.Path + "\Scan Path.txt" For Input As #fg1
'    Line Input #fg1, ae$
'    Close #fg1
'    txtPath.Text = ae$

Call Start

End Sub


Private Sub Form_Unload(Cancel As Integer)
End
End Sub

Private Sub SP_DirMatch(Directory As String, Path As String)
    '####################################################################################################
    'This Event fires for each Folder found
    '####################################################################################################
End Sub

Private Sub SP_DirMatchxx(Directory As String, Path As String)
    '####################################################################################################
    'This Event fires for each Folder found
    '####################################################################################################



Dim LV As ListItem
    Dim uWIN32 As WIN32_FIND_DATA
    
    '####################################################################################################
    'This Event fires for each File found
    '####################################################################################################
    
    On Local Error GoTo GetFileError
    
    With ListView1
        Set LV = .ListItems.Add(, , Directory)
        LV.SubItems(1) = Path
        
        
        
        
        
        
        
        
        
        If chkCopyMemory.Value Then
            'VB does not allows UDT's to be passed directly from a Class but we can access the structure
            'using pointers. We use CopyMemory to place the WIN32_FIND_DATA variable from the Class into
            'the uWIN32 declared in this Sub.
            
            'This is primarily a speed trick - we could retrieve the date & time information "ourselves"
            'using the standard VB functions or an API call but since we already have it...
            CopyMemory ByVal uWIN32, ByVal SP.WFDPointer, ByVal Len(uWIN32)
            LV.SubItems(2) = uWIN32.nFileSizeLow
            LV.SubItems(3) = FormatFileDate(uWIN32.ftLastAccessTime)
        End If
        
        'Refresh Count & Scroll the list every 10th file
        If (LV.Index Mod 10) = 0 Then
            If chkRefreshListView.Value Then
                .SelectedItem = LV
                .SelectedItem.EnsureVisible
            End If
            
            lblCount.Caption = LV.Index
        End If
    End With
    Exit Sub

GetFileError:
    MsgBox Err.Description, vbCritical


End Sub

Private Sub SP_FileMatch(Filename As String, Path As String)
    Dim LV As ListItem
    Dim uWIN32 As WIN32_FIND_DATA
    
    '####################################################################################################
    'This Event fires for each File found
    '####################################################################################################
    
    On Local Error GoTo GetFileError
    
    With ListView1
        Set LV = .ListItems.Add(, , Filename)
        LV.SubItems(1) = Path
        
        
        
        
        
        
        
        
        
        If chkCopyMemory.Value Then
            'VB does not allows UDT's to be passed directly from a Class but we can access the structure
            'using pointers. We use CopyMemory to place the WIN32_FIND_DATA variable from the Class into
            'the uWIN32 declared in this Sub.
            
            'This is primarily a speed trick - we could retrieve the date & time information "ourselves"
            'using the standard VB functions or an API call but since we already have it...
            CopyMemory ByVal uWIN32, ByVal SP.WFDPointer, ByVal Len(uWIN32)
            LV.SubItems(2) = uWIN32.nFileSizeLow
            LV.SubItems(3) = FormatFileDate(uWIN32.ftLastAccessTime)
        End If
        
        'Refresh Count & Scroll the list every 10th file
        If (LV.Index Mod 10) = 0 Then
            If chkRefreshListView.Value Then
                .SelectedItem = LV
                .SelectedItem.EnsureVisible
            End If
            
            lblCount.Caption = LV.Index
        End If
    End With
    Exit Sub

GetFileError:
    MsgBox Err.Description, vbCritical
End Sub



Private Function FormatFileDate(CT As FILETIME) As String
    Const SHORT_DATE = "Short Date"
    
    Dim ST As SYSTEMTIME
    Dim ds As Single
       
    If FileTimeToSystemTime(CT, ST) Then
          ds = DateSerial(ST.wYear, ST.wMonth, ST.wDay)
          
          FormatFileDate = Format$(ds, SHORT_DATE)
    End If
End Function

Private Sub Timer1_Timer()
End
End Sub

Sub Jeepers()


Dim Fs22

Set Fs22 = CreateObject("Scripting.FileSystemObject")

On Local Error GoTo jeep
Drived2$ = Mid$(txtPath.Text, 1, 3)
MkDir Drived2$ + "Temp\Anything"
v1$ = Mid$(txtPath.Text, InStrRev(txtPath.Text, "\"))

MkDir Drived2$ + "Temp\Anything" + v1$
On Local Error GoTo 0

List1.AddItem "Stage 1 of 2 : Make Dir's And Move Files to Temp"
List1.AddItem "------------------------------------------------"
List1.ListIndex = List1.ListCount - 1
List1.Refresh

For we = 1 To ListView1.ListItems.Count
    a1$ = ListView1.ListItems.Item(we).SubItems(1)
    b1$ = ListView1.ListItems.Item(we)

    'ets1 = Len("D:\# MY DOCS\# 01 My Documents\Favorites")
    ets1 = Len(txtPath.Text)
    c1$ = Drived2$ + "Temp\Anything" + v1$ + "\" + Mid$(a1$, ets1 + 2)

    etd1 = 13
    ets2 = 1
    Do
        'jc1$ = Mid$(c1$, etd1 + ets2-1)
        ets2 = InStr(etd1 + ets2, c1$, "\")
        etd1 = 1
        If ets2 = 0 Then Exit Do

        d2$ = Mid$(c1$, 1, ets2)

        If InStr(f1$, d2$) = 0 Then
            On Local Error GoTo jeep
            MkDir d2$
            If errs2 <> 75 And errs2 > 0 Then
                MsgBox ("Error Making Temp Directory")
                Stop
            End If
            On Local Error GoTo 0
        End If
    Loop Until ets2 = 0

    f1$ = d2$

    errs2 = 0
    On Local Error GoTo jeep
    Fs22.moveFile a1$ + b1$, c1$ + b1$
    On Local Error GoTo 0

    If errs2 <> 0 Then
        MsgBox ("Error Moving File to Temp")
        End
    End If

    List1.AddItem Format$(we, "000 ") + "Move > " + a1$ + b1$
    List1.ListIndex = List1.ListCount - 1
    List1.Refresh

    'Fs22.DeleteFolder comrad$ + "\" + WFD$

Next

Err.Clear
On Local Error Resume Next
Set Fs22 = CreateObject("Scripting.FileSystemObject")
Fs22.deletefolder txtPath.Text, True
If Err.Number > 0 Then Call HardDel
On Local Error GoTo 0


List1.AddItem "----------------------------------------"
List1.AddItem "Stage 2 of 2 : Move Files Back From Temp"
List1.AddItem "----------------------------------------"
List1.ListIndex = List1.ListCount - 1
List1.Refresh

v2$ = Mid$(txtPath.Text, 1, InStrRev(txtPath.Text, "\"))

Err.Clear
On Local Error Resume Next
Set Fs22 = CreateObject("Scripting.FileSystemObject")
Fs22.Movefolder Drived2$ + "Temp\Anything\*", v2$
If Err.Number > 0 Then Call HardMove
On Local Error GoTo 0

List1.AddItem "Stage 2 of 2 : Complete --------------"
List1.AddItem "--------------------------------------"
List1.ListIndex = List1.ListCount - 1
List1.Refresh

'Timer1.Enabled = True

Exit Sub
jeep:
errs2 = Err.Number
errs3$ = Err.Description
Resume Next

End Sub



Sub HardDel()
Dim Fs22

Set Fs22 = CreateObject("Scripting.FileSystemObject")

Drived2$ = Mid$(txtPath.Text, 1, 3)
v1$ = Mid$(txtPath.Text, InStrRev(txtPath.Text, "\"))


List1.AddItem "Stage Opp : Del Original Dir"
List1.AddItem "------------------------------------------------"
List1.ListIndex = List1.ListCount - 1
List1.Refresh

For we = 1 To ListView1.ListItems.Count
    a1$ = ListView1.ListItems.Item(we).SubItems(1)
    b1$ = ListView1.ListItems.Item(we)

    'ets1 = Len("D:\# MY DOCS\# 01 My Documents\Favorites")
    ets1 = Len(txtPath.Text)
    c1$ = Drived2$ + "My Music" + v1$ + "\" + Mid$(a1$, ets1 + 2)

    etd1 = 13
    ets2 = 1
    Do
        'jc1$ = Mid$(c1$, etd1 + ets2-1)
        ets2 = InStr(etd1 + ets2, c1$, "\")
        etd1 = 1
        If ets2 = 0 Then Exit Do

        d2$ = Mid$(c1$, 1, ets2 - 1)

        If InStr(f1$, d2$) = 0 Then
            Err.Clear
            On Local Error Resume Next
            'MkDir d2$
            Fs22.deletefolder d2$, True
            If Err.Number <> 75 And Err.Number > 0 Then
                'MsgBox ("Error Making Temp Directory")
                'Stop
            End If
            On Local Error GoTo 0
        End If
    Loop Until ets2 = 0

    f1$ = d2$

    errs2 = 0
    On Local Error Resume Next
'    Fs22.DeleteFile a1$ + b1$, True
    On Local Error GoTo 0

    'If errs2 <> 0 Then
    '    MsgBox ("Error Moving File to Temp")
    '    End
    'End If

    List1.AddItem Format$(we, "000 ") + "Move > " + a1$ + b1$
    List1.ListIndex = List1.ListCount - 1
    List1.Refresh

    'Fs22.DeleteFolder comrad$ + "\" + WFD$

Next

a = a
jeep:
End Sub


Sub HardMove()
Dim Fs22

Set Fs22 = CreateObject("Scripting.FileSystemObject")

Drived2$ = Mid$(txtPath.Text, 1, 3)
v1$ = Mid$(txtPath.Text, InStrRev(txtPath.Text, "\"))


List1.AddItem "Stage Opp : Del Original Dir"
List1.AddItem "------------------------------------------------"
List1.ListIndex = List1.ListCount - 1
List1.Refresh

For we = 1 To ListView1.ListItems.Count
    a1$ = ListView1.ListItems.Item(we).SubItems(1)
    b1$ = ListView1.ListItems.Item(we)

    'ets1 = Len("D:\# MY DOCS\# 01 My Documents\Favorites")
    ets1 = Len(txtPath.Text)
    c1$ = Drived2$ + "My Music" + v1$ + "\" + Mid$(a1$, ets1 + 2)
    c2$ = Drived2$ + "Temp\Anything" + v1$ + "\" + Mid$(a1$, ets1 + 2)

    etd1 = 13
    ets2 = 1
    Do
        'jc1$ = Mid$(c1$, etd1 + ets2-1)
        ets2 = InStr(etd1 + ets2, c1$, "\")
        etd1 = 1
        If ets2 = 0 Then Exit Do

        d2$ = Mid$(c1$, 1, ets2 - 1)

        If InStr(f1$, d2$) = 0 Then
            Err.Clear
            On Local Error Resume Next
            MkDir d2$
   '         Fs22.deletefolder d2$, True
            If Err.Number <> 75 And Err.Number > 0 Then
                'MsgBox ("Error Making Temp Directory")
                'Stop
            End If
            On Local Error GoTo 0
        End If
    Loop Until ets2 = 0

    f1$ = d2$
    Err.Clear
    errs2 = 0
    On Local Error Resume Next
    Set Fs22 = CreateObject("Scripting.FileSystemObject")
    Fs22.moveFile c2$ + b1$, a1$ + b1$
    'err.number
    'err.description
    On Local Error GoTo 0

    'If errs2 <> 0 Then
    '    MsgBox ("Error Moving File to Temp")
    '    End
    'End If

    List1.AddItem Format$(we, "000 ") + "Move > " + a1$ + b1$
    List1.ListIndex = List1.ListCount - 1
    List1.Refresh

    'Fs22.DeleteFolder comrad$ + "\" + WFD$

Next
    
    v1$ = Mid$(txtPath.Text, 1, InStrRev(txtPath.Text, "\") - 1)
    Err.Clear
    On Local Error Resume Next
    Set Fs22 = CreateObject("Scripting.FileSystemObject")
    Fs22.copyfolder Drived2$ + "Temp\Anything", v1$, True
    
    Set Fs22 = CreateObject("Scripting.FileSystemObject")
    Fs22.deletefolder Drived2$ + "Temp\Anything", True


jeep:
End Sub

Private Sub txtPath_Change()

If Trim(txtPath.Text) = "" Then Exit Sub

If Mid$(txtPath.Text, Len(txtPath.Text), 1) <> "\" Then
    txtPath.Text = txtPath.Text + "\"
End If

End Sub
