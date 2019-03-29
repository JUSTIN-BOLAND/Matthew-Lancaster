VERSION 5.00
Object = "{831FDD16-0C5C-11D2-A9FC-0000F8754DA1}#2.0#0"; "MSCOMCTL.OCX"
Object = "{86CF1D34-0C5F-11D2-A9FC-0000F8754DA1}#2.0#0"; "mscomct2.ocx"
Begin VB.Form ScanPath 
   BackColor       =   &H00808080&
   Caption         =   "ScanPath 2.0 - Sort  Anything -"
   ClientHeight    =   8730
   ClientLeft      =   60
   ClientTop       =   630
   ClientWidth     =   12735
   LinkTopic       =   "Form1"
   ScaleHeight     =   8730
   ScaleWidth      =   12735
   StartUpPosition =   2  'CenterScreen
   WhatsThisButton =   -1  'True
   WhatsThisHelp   =   -1  'True
   Begin VB.CommandButton cmdScan_NO_LIST 
      Caption         =   "Scan Files NO LIST"
      BeginProperty Font 
         Name            =   "MS Sans Serif"
         Size            =   9.75
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   1020
      Left            =   5610
      Style           =   1  'Graphical
      TabIndex        =   54
      Top             =   2175
      Width           =   870
   End
   Begin VB.TextBox txtPath02 
      Height          =   315
      Left            =   1215
      TabIndex        =   50
      Text            =   "D:\"
      Top             =   660
      Width           =   4650
   End
   Begin VB.CommandButton Command12 
      Caption         =   "..."
      Height          =   300
      Left            =   5925
      TabIndex        =   49
      TabStop         =   0   'False
      Top             =   705
      Width           =   540
   End
   Begin VB.TextBox Text2 
      Height          =   585
      Left            =   6540
      TabIndex        =   48
      Text            =   "Text1"
      Top             =   2475
      Width           =   1725
   End
   Begin VB.TextBox Text1 
      Height          =   585
      Left            =   6540
      TabIndex        =   47
      Text            =   "Text1"
      Top             =   1875
      Width           =   1725
   End
   Begin VB.CheckBox Chk_SortOnDate 
      Caption         =   "Sort On Date"
      BeginProperty Font 
         Name            =   "Microsoft Sans Serif"
         Size            =   8.25
         Charset         =   0
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   195
      Left            =   0
      TabIndex        =   37
      Top             =   3300
      Width           =   1785
   End
   Begin VB.CommandButton CmdScanDir 
      Caption         =   "Scan Dir"
      BeginProperty Font 
         Name            =   "MS Sans Serif"
         Size            =   9.75
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   555
      Left            =   5610
      Style           =   1  'Graphical
      TabIndex        =   36
      Top             =   1050
      Width           =   870
   End
   Begin VB.CommandButton cmdHelp 
      Caption         =   "Help !"
      Enabled         =   0   'False
      Height          =   825
      Left            =   6420
      Style           =   1  'Graphical
      TabIndex        =   35
      Top             =   7845
      Visible         =   0   'False
      Width           =   435
   End
   Begin VB.Timer Timer1 
      Enabled         =   0   'False
      Interval        =   5000
      Left            =   2925
      Top             =   6450
   End
   Begin VB.ComboBox cboMask 
      Height          =   315
      Left            =   405
      TabIndex        =   1
      Text            =   "*.jpg"
      Top             =   330
      Width           =   6060
   End
   Begin VB.CommandButton cmdBrowse 
      Caption         =   "..."
      Height          =   315
      Left            =   5940
      TabIndex        =   23
      TabStop         =   0   'False
      Top             =   15
      Width           =   540
   End
   Begin VB.TextBox TxtPath 
      BeginProperty Font 
         Name            =   "Microsoft Sans Serif"
         Size            =   8.25
         Charset         =   0
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   315
      Left            =   420
      TabIndex        =   0
      Text            =   "E:\My Music Zen"
      Top             =   30
      Width           =   5175
   End
   Begin VB.CheckBox chkSubFolders 
      Caption         =   "Search Sub-Folders"
      Height          =   195
      Left            =   0
      TabIndex        =   8
      Top             =   2865
      Value           =   1  'Checked
      Width           =   1785
   End
   Begin VB.CheckBox chkPatternMatching 
      Caption         =   "Pattern Matching"
      Height          =   195
      Left            =   0
      TabIndex        =   7
      Top             =   2640
      Value           =   1  'Checked
      Width           =   1785
   End
   Begin VB.CheckBox chkNormal 
      Caption         =   "Normal"
      Height          =   195
      Left            =   15
      TabIndex        =   2
      Top             =   1290
      Value           =   1  'Checked
      Width           =   1365
   End
   Begin VB.CheckBox chkArchive 
      Caption         =   "Archive"
      Height          =   195
      Left            =   15
      TabIndex        =   3
      Top             =   1515
      Value           =   1  'Checked
      Width           =   1365
   End
   Begin VB.CheckBox chkHidden 
      Caption         =   "Hidden"
      Height          =   195
      Left            =   15
      TabIndex        =   4
      Top             =   1740
      Value           =   1  'Checked
      Width           =   1365
   End
   Begin VB.CheckBox chkReadOnly 
      Caption         =   "Read Only"
      Height          =   195
      Left            =   15
      TabIndex        =   5
      Top             =   1965
      Value           =   1  'Checked
      Width           =   1365
   End
   Begin VB.CheckBox chkSystem 
      Caption         =   "System"
      Height          =   195
      Left            =   15
      TabIndex        =   6
      Top             =   2175
      Value           =   1  'Checked
      Width           =   1365
   End
   Begin VB.ComboBox cboDate 
      Height          =   315
      Left            =   2445
      Style           =   2  'Dropdown List
      TabIndex        =   12
      Top             =   1290
      Width           =   1545
   End
   Begin VB.ComboBox cboSizeType 
      BeginProperty Font 
         Name            =   "Microsoft Sans Serif"
         Size            =   8.25
         Charset         =   0
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   315
      Index           =   0
      Left            =   3975
      Style           =   2  'Dropdown List
      TabIndex        =   17
      Top             =   2700
      Width           =   1365
   End
   Begin VB.ComboBox cboSize 
      Height          =   315
      Left            =   2445
      Style           =   2  'Dropdown List
      TabIndex        =   15
      Top             =   2355
      Width           =   1545
   End
   Begin VB.TextBox txtSize 
      Alignment       =   1  'Right Justify
      Height          =   315
      Index           =   0
      Left            =   2430
      TabIndex        =   16
      Top             =   2700
      Width           =   1530
   End
   Begin VB.ComboBox cboSizeType 
      BeginProperty Font 
         Name            =   "Microsoft Sans Serif"
         Size            =   8.25
         Charset         =   0
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   315
      Index           =   1
      Left            =   3975
      Style           =   2  'Dropdown List
      TabIndex        =   19
      Top             =   3060
      Width           =   1365
   End
   Begin VB.TextBox txtSize 
      Alignment       =   1  'Right Justify
      BeginProperty Font 
         Name            =   "Microsoft Sans Serif"
         Size            =   8.25
         Charset         =   0
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   315
      Index           =   1
      Left            =   2430
      TabIndex        =   18
      Top             =   3060
      Width           =   1530
   End
   Begin VB.CheckBox chkRefreshListView 
      Caption         =   "Refresh ListView (slower)"
      Enabled         =   0   'False
      Height          =   195
      Left            =   8250
      TabIndex        =   10
      Top             =   8325
      Visible         =   0   'False
      Width           =   2205
   End
   Begin VB.CheckBox chkCopyMemory 
      Caption         =   "(display Date && Size)"
      BeginProperty Font 
         Name            =   "Microsoft Sans Serif"
         Size            =   8.25
         Charset         =   0
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   195
      Left            =   0
      TabIndex        =   11
      Top             =   3090
      Value           =   1  'Checked
      Width           =   1785
   End
   Begin MSComctlLib.ListView ListView1 
      Height          =   2310
      Left            =   -30
      TabIndex        =   21
      Top             =   5790
      Width           =   11565
      _ExtentX        =   20399
      _ExtentY        =   4075
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
      Enabled         =   0   'False
      Height          =   195
      Left            =   8160
      TabIndex        =   9
      Top             =   8055
      Visible         =   0   'False
      Width           =   2535
   End
   Begin VB.CommandButton cmdScan 
      Caption         =   "Scan Files"
      BeginProperty Font 
         Name            =   "MS Sans Serif"
         Size            =   9.75
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   555
      Left            =   5610
      Style           =   1  'Graphical
      TabIndex        =   20
      Top             =   1605
      Width           =   870
   End
   Begin MSComCtl2.DTPicker DTPicker1 
      Height          =   315
      Index           =   0
      Left            =   2445
      TabIndex        =   13
      Top             =   1605
      Width           =   1545
      _ExtentX        =   2725
      _ExtentY        =   556
      _Version        =   393216
      CheckBox        =   -1  'True
      Format          =   16449537
      CurrentDate     =   37299
   End
   Begin MSComCtl2.DTPicker DTPicker1 
      Height          =   315
      Index           =   1
      Left            =   2445
      TabIndex        =   14
      Top             =   1965
      Width           =   1545
      _ExtentX        =   2725
      _ExtentY        =   556
      _Version        =   393216
      CheckBox        =   -1  'True
      Format          =   16449537
      CurrentDate     =   37296
   End
   Begin MSComCtl2.DTPicker DTPicker1 
      Height          =   315
      Index           =   2
      Left            =   4005
      TabIndex        =   44
      Top             =   1590
      Width           =   1110
      _ExtentX        =   1958
      _ExtentY        =   556
      _Version        =   393216
      Format          =   16449538
      CurrentDate     =   37299
   End
   Begin VB.Label Label18 
      Alignment       =   2  'Center
      AutoSize        =   -1  'True
      BorderStyle     =   1  'Fixed Single
      Caption         =   "COPY ANYWHERE TO ONE FOLDER"
      BeginProperty Font 
         Name            =   "Arial"
         Size            =   9.75
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   300
      Left            =   3975
      TabIndex        =   72
      Top             =   3600
      Width           =   3390
   End
   Begin VB.Label Command7 
      Alignment       =   2  'Center
      AutoSize        =   -1  'True
      BorderStyle     =   1  'Fixed Single
      Caption         =   "LIST FILES TO CLIP httrack"
      BeginProperty Font 
         Name            =   "Arial"
         Size            =   9.75
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   300
      Left            =   7650
      TabIndex        =   71
      Top             =   4125
      Width           =   2670
      WordWrap        =   -1  'True
   End
   Begin VB.Label Command10 
      AutoSize        =   -1  'True
      BorderStyle     =   1  'Fixed Single
      Caption         =   "USENET FROM OUTLOOK IN FOLDERS"
      BeginProperty Font 
         Name            =   "Arial"
         Size            =   9.75
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   300
      Left            =   0
      TabIndex        =   70
      Top             =   4200
      Width           =   3705
   End
   Begin VB.Label MOVE_IN_DATE_FOLDERS_JPGS 
      AutoSize        =   -1  'True
      BorderStyle     =   1  'Fixed Single
      Caption         =   "MOVE IN DATE FOLDERS JPGS"
      BeginProperty Font 
         Name            =   "Arial"
         Size            =   9.75
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   300
      Left            =   0
      TabIndex        =   69
      Top             =   4800
      Width           =   3015
   End
   Begin VB.Label Command9 
      AutoSize        =   -1  'True
      BorderStyle     =   1  'Fixed Single
      Caption         =   "MOVE AnyWhere HardCode"
      BeginProperty Font 
         Name            =   "Arial"
         Size            =   9.75
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   300
      Left            =   0
      TabIndex        =   68
      Top             =   5100
      Width           =   2685
   End
   Begin VB.Label Command13 
      Alignment       =   2  'Center
      AutoSize        =   -1  'True
      BorderStyle     =   1  'Fixed Single
      Caption         =   "CALL CRC DUPE MULTI MATRIX ON SMALLEST FILE LEAVE THE BIGGEST"
      BeginProperty Font 
         Name            =   "Arial"
         Size            =   9.75
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   780
      Left            =   8550
      TabIndex        =   67
      Top             =   2850
      Width           =   2700
      WordWrap        =   -1  'True
   End
   Begin VB.Label Command3 
      Alignment       =   2  'Center
      AutoSize        =   -1  'True
      BorderStyle     =   1  'Fixed Single
      Caption         =   "Find Replace"
      BeginProperty Font 
         Name            =   "Arial"
         Size            =   9.75
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   300
      Left            =   5475
      TabIndex        =   66
      Top             =   4875
      Width           =   1335
   End
   Begin VB.Label Command6 
      Alignment       =   2  'Center
      AutoSize        =   -1  'True
      BorderStyle     =   1  'Fixed Single
      Caption         =   "Grab String"
      BeginProperty Font 
         Name            =   "Arial"
         Size            =   9.75
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   300
      Left            =   7650
      TabIndex        =   65
      Top             =   4425
      Width           =   1215
      WordWrap        =   -1  'True
   End
   Begin VB.Label Command11 
      Alignment       =   2  'Center
      AutoSize        =   -1  'True
      BorderStyle     =   1  'Fixed Single
      Caption         =   "PATH TREE DIFF PLACE"
      BeginProperty Font 
         Name            =   "Arial"
         Size            =   9.75
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   300
      Left            =   7635
      TabIndex        =   64
      Top             =   5025
      Width           =   2415
      WordWrap        =   -1  'True
   End
   Begin VB.Label Command5 
      Alignment       =   2  'Center
      AutoSize        =   -1  'True
      BorderStyle     =   1  'Fixed Single
      Caption         =   "Files to Text List"
      BeginProperty Font 
         Name            =   "Arial"
         Size            =   9.75
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   300
      Left            =   7650
      TabIndex        =   63
      Top             =   3825
      Width           =   1620
      WordWrap        =   -1  'True
   End
   Begin VB.Label Command8 
      Alignment       =   2  'Center
      AutoSize        =   -1  'True
      BorderStyle     =   1  'Fixed Single
      Caption         =   "Find Replace .LNK'S"
      BeginProperty Font 
         Name            =   "Arial"
         Size            =   9.75
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   300
      Left            =   5475
      TabIndex        =   62
      Top             =   4575
      Width           =   2010
   End
   Begin VB.Label Command14 
      Alignment       =   2  'Center
      AutoSize        =   -1  'True
      BorderStyle     =   1  'Fixed Single
      Caption         =   "Del Emptys"
      BeginProperty Font 
         Name            =   "Arial"
         Size            =   9.75
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   300
      Left            =   3975
      TabIndex        =   61
      Top             =   4800
      Width           =   1110
   End
   Begin VB.Label Command4 
      Alignment       =   2  'Center
      AutoSize        =   -1  'True
      BorderStyle     =   1  'Fixed Single
      Caption         =   "Del Boy"
      BeginProperty Font 
         Name            =   "Arial"
         Size            =   9.75
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   300
      Left            =   3975
      TabIndex        =   60
      Top             =   4500
      Width           =   810
   End
   Begin VB.Label Command2 
      Alignment       =   2  'Center
      AutoSize        =   -1  'True
      BorderStyle     =   1  'Fixed Single
      Caption         =   "EXTRACT ALL WINRAR"
      BeginProperty Font 
         Name            =   "Arial"
         Size            =   9.75
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   300
      Left            =   7650
      TabIndex        =   59
      Top             =   4725
      Width           =   2250
      WordWrap        =   -1  'True
   End
   Begin VB.Label Command1 
      AutoSize        =   -1  'True
      BorderStyle     =   1  'Fixed Single
      Caption         =   "CALL CRC DUPE"
      BeginProperty Font 
         Name            =   "Arial"
         Size            =   9.75
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   300
      Left            =   0
      TabIndex        =   58
      Top             =   3900
      Width           =   1620
   End
   Begin VB.Label Label16 
      Alignment       =   2  'Center
      AutoSize        =   -1  'True
      BorderStyle     =   1  'Fixed Single
      Caption         =   "COPY ANYWHERE"
      BeginProperty Font 
         Name            =   "Arial"
         Size            =   9.75
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   300
      Left            =   3975
      TabIndex        =   57
      Top             =   3900
      Width           =   1770
   End
   Begin VB.Label Label15 
      Alignment       =   2  'Center
      AutoSize        =   -1  'True
      BorderStyle     =   1  'Fixed Single
      Caption         =   "COPY CDROM ANYWHERE"
      BeginProperty Font 
         Name            =   "Arial"
         Size            =   9.75
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   300
      Left            =   3975
      TabIndex        =   56
      Top             =   4200
      Width           =   2550
   End
   Begin VB.Label lblCount7 
      Appearance      =   0  'Flat
      BackColor       =   &H80000005&
      BorderStyle     =   1  'Fixed Single
      Caption         =   "-"
      BeginProperty Font 
         Name            =   "Arial"
         Size            =   12
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      ForeColor       =   &H80000008&
      Height          =   315
      Left            =   0
      TabIndex        =   55
      Top             =   5475
      Width           =   11505
   End
   Begin VB.Label Label14 
      Alignment       =   2  'Center
      AutoSize        =   -1  'True
      BorderStyle     =   1  'Fixed Single
      Caption         =   "SEND DESIGNATED FOLDER TO ALL BLUETOOTHS"
      BeginProperty Font 
         Name            =   "Arial"
         Size            =   9.75
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   780
      Left            =   8550
      TabIndex        =   53
      Top             =   2025
      Width           =   2460
      WordWrap        =   -1  'True
   End
   Begin VB.Label Label13 
      AutoSize        =   -1  'True
      BorderStyle     =   1  'Fixed Single
      Caption         =   "DONT MODIFY AUTO RUN NOW"
      BeginProperty Font 
         Name            =   "Arial"
         Size            =   9.75
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   300
      Left            =   0
      TabIndex        =   52
      Top             =   4500
      Width           =   3015
   End
   Begin VB.Label Label7 
      AutoSize        =   -1  'True
      Caption         =   "DESTI Path 02"
      Height          =   270
      Left            =   0
      TabIndex        =   51
      Top             =   705
      Width           =   1200
   End
   Begin VB.Label Label6 
      BackColor       =   &H0000FF00&
      Caption         =   "Label6"
      Height          =   270
      Left            =   4050
      TabIndex        =   46
      Top             =   1950
      Visible         =   0   'False
      Width           =   255
   End
   Begin VB.Label Label5 
      Alignment       =   2  'Center
      AutoSize        =   -1  'True
      BackColor       =   &H0000FF00&
      BorderStyle     =   1  'Fixed Single
      Caption         =   "CALL CRC DUPE Simulate Dont Del"
      BeginProperty Font 
         Name            =   "Arial"
         Size            =   9.75
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   300
      Left            =   15
      TabIndex        =   45
      Top             =   3600
      Width           =   3435
   End
   Begin VB.Label lblCount1 
      Alignment       =   2  'Center
      Appearance      =   0  'Flat
      BackColor       =   &H80000005&
      BorderStyle     =   1  'Fixed Single
      Caption         =   "-"
      BeginProperty Font 
         Name            =   "Arial"
         Size            =   12
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      ForeColor       =   &H80000008&
      Height          =   315
      Left            =   6510
      TabIndex        =   43
      Top             =   15
      Width           =   4335
   End
   Begin VB.Label lblCount3 
      Alignment       =   2  'Center
      Appearance      =   0  'Flat
      BackColor       =   &H80000005&
      BorderStyle     =   1  'Fixed Single
      Caption         =   "-"
      BeginProperty Font 
         Name            =   "Arial"
         Size            =   12
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      ForeColor       =   &H80000008&
      Height          =   300
      Left            =   6510
      TabIndex        =   42
      Top             =   645
      Width           =   4335
   End
   Begin VB.Label lblCount4 
      Alignment       =   2  'Center
      Appearance      =   0  'Flat
      BackColor       =   &H80000005&
      BorderStyle     =   1  'Fixed Single
      Caption         =   "-"
      BeginProperty Font 
         Name            =   "Arial"
         Size            =   12
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      ForeColor       =   &H80000008&
      Height          =   300
      Left            =   6510
      TabIndex        =   41
      Top             =   945
      Width           =   4335
   End
   Begin VB.Label lblCount5 
      Alignment       =   2  'Center
      Appearance      =   0  'Flat
      BackColor       =   &H80000005&
      BorderStyle     =   1  'Fixed Single
      Caption         =   "-"
      BeginProperty Font 
         Name            =   "Arial"
         Size            =   12
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      ForeColor       =   &H80000008&
      Height          =   300
      Left            =   6510
      TabIndex        =   40
      Top             =   1245
      Width           =   4335
   End
   Begin VB.Label lblCount2 
      Alignment       =   2  'Center
      Appearance      =   0  'Flat
      BackColor       =   &H80000005&
      BorderStyle     =   1  'Fixed Single
      Caption         =   "-"
      BeginProperty Font 
         Name            =   "Arial"
         Size            =   12
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      ForeColor       =   &H80000008&
      Height          =   315
      Left            =   6510
      TabIndex        =   39
      Top             =   330
      Width           =   4335
   End
   Begin VB.Label lblCount6 
      Alignment       =   2  'Center
      Appearance      =   0  'Flat
      BackColor       =   &H80000005&
      BorderStyle     =   1  'Fixed Single
      Caption         =   "-"
      BeginProperty Font 
         Name            =   "Arial"
         Size            =   12
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      ForeColor       =   &H80000008&
      Height          =   300
      Left            =   6510
      TabIndex        =   38
      Top             =   1545
      Width           =   4335
   End
   Begin VB.Label Label17 
      Alignment       =   2  'Center
      Appearance      =   0  'Flat
      BackColor       =   &H80000005&
      BorderStyle     =   1  'Fixed Single
      Caption         =   "Working"
      Enabled         =   0   'False
      ForeColor       =   &H80000008&
      Height          =   240
      Left            =   6975
      TabIndex        =   34
      Top             =   8025
      Visible         =   0   'False
      Width           =   1080
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
      Left            =   1830
      TabIndex        =   33
      Top             =   1095
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
      Left            =   15
      TabIndex        =   26
      Top             =   2430
      Width           =   720
   End
   Begin VB.Label Label2 
      AutoSize        =   -1  'True
      Caption         =   "Mask"
      Height          =   270
      Left            =   15
      TabIndex        =   24
      Top             =   345
      Width           =   390
   End
   Begin VB.Label Label1 
      AutoSize        =   -1  'True
      Caption         =   "Path"
      Height          =   270
      Left            =   15
      TabIndex        =   22
      Top             =   30
      Width           =   390
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
      Left            =   45
      TabIndex        =   25
      Top             =   1080
      Width           =   885
   End
   Begin VB.Label lblSize 
      AutoSize        =   -1  'True
      Caption         =   "Min"
      Height          =   195
      Index           =   0
      Left            =   1830
      TabIndex        =   30
      Top             =   2760
      Width           =   255
   End
   Begin VB.Label Label10 
      AutoSize        =   -1  'True
      Caption         =   "File Size"
      Height          =   195
      Left            =   1845
      TabIndex        =   28
      Top             =   2355
      Width           =   585
   End
   Begin VB.Label lblSize 
      AutoSize        =   -1  'True
      Caption         =   "Max"
      BeginProperty Font 
         Name            =   "Microsoft Sans Serif"
         Size            =   8.25
         Charset         =   0
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   195
      Index           =   1
      Left            =   1830
      TabIndex        =   32
      Top             =   3120
      Width           =   300
   End
   Begin VB.Label Label9 
      AutoSize        =   -1  'True
      Caption         =   "From"
      Height          =   195
      Left            =   1830
      TabIndex        =   29
      Top             =   1635
      Width           =   345
   End
   Begin VB.Label Label8 
      AutoSize        =   -1  'True
      Caption         =   "File Date"
      Height          =   195
      Left            =   1830
      TabIndex        =   27
      Top             =   1320
      Width           =   630
   End
   Begin VB.Label Label4 
      AutoSize        =   -1  'True
      Caption         =   "To"
      Height          =   195
      Left            =   1830
      TabIndex        =   31
      Top             =   1935
      Width           =   195
   End
   Begin VB.Menu Mnu_Cmd 
      Caption         =   "Commands"
      Begin VB.Menu MNU_VB 
         Caption         =   "VB ME"
      End
      Begin VB.Menu Mnu_Com1 
         Caption         =   "Com1"
      End
      Begin VB.Menu Mnu_MatchBungDel 
         Caption         =   "MATCH BUNG AND DELETE FROM MATCH COMPARES"
      End
      Begin VB.Menu Mnu_MatchBungDateDesti 
         Caption         =   "MATCH BUNG DATE DESTINATION WAY OUT DATE CHK JOB"
      End
      Begin VB.Menu MNU_LIST_FILES_TO_CLIP_httrack 
         Caption         =   "LIST FILES TO CLIP httrack"
      End
   End
End
Attribute VB_Name = "ScanPath"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
'-------------Is This Sub Get on It at start      at       Bangers

Dim OPATH
Dim DDate2 As Date
Public Dog, OutPutPath, Xdate As Date, Tdate As Date, Zdate$, Ydate As Date, OldFolder, OldSize

Private Declare Function DeleteFile Lib "kernel32" Alias "DeleteFileA" (ByVal lpFileName As String) As Long

'Private Declare Function FindFirstFile Lib "kernel32" Alias "FindFirstFileA" (ByVal lpFileName As String, lpFindFileData As WIN32_FIND_DATA) As Long


'Private Type FILETIME
'    dwLowDateTime     As Long
'    dwHighDateTime    As Long
'End Type

'Private Type WIN32_FIND_DATA
'    dwFileAttributes  As Long
'    ftCreationTime    As FILETIME
'    ftLastAccessTime  As FILETIME
'    ftLastWriteTime   As FILETIME
'    nFileSizeHigh     As Long
'    nFileSizeLow      As Long
'    dwReserved0       As Long
'    dwReserved1       As Long
'    cFileName         As String * MAX_PATH
'    cAlternate        As String * 14
'End Type

'Private mWFD As WIN32_FIND_DATA

'Put This in a Bas Mobule
'Public m_CRC As clsCRC

'Public WxHex$

Public A1$, B1$, G1$, FF$

'Put in Sub Of Code
'Set m_CRC = New clsCRC
'm_CRC.Algorithm = CRC32
'WxHex$ = Hex(m_CRC.CalculateString(Form3.Text1.Text))
'WxHex$ = Hex(m_CRC.CalculateFile(Filename))


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




Sub DelJunkFrontPage()


ScanPath.ListView1.ListItems.Clear
ScanPath.TxtPath = "D:\MY WEBS\MatthewLan.Com Web\"
ScanPath.cboMask.Text = "*.*"
ScanPath.chkSubFolders = vbChecked
Call ScanPath.cmdScanDir_Click
ScanPath.Show
Reset
For We = ScanPath.ListView1.ListItems.Count To 1 Step -1
'    we = ScanPath.ListView1.ListItems.Count
    ScanPath.lblCount1 = Trim(Str(We))
    DoEvents
    
    'Command1.Caption = Trim(Str(ScanPath.ListView1.ListItems.Count))
    A1$ = ScanPath.ListView1.ListItems.Item(We).SubItems(1)
    A1$ = A1$ + ScanPath.ListView1.ListItems.Item(We)
    outff = 0
    If InStr(A1$, "_private") > 0 Then outff = 1
    If InStr(A1$, "_vti") > 0 Then
        outff = 1
    End If
    
    If outff = 1 Then
        'ScanPath.ListView1.ListItems.Remove (we)
        On Error Resume Next
        FS.deletefolder A1$, True
        If err.Number > 0 Then Stop
        'err.description
        On Error GoTo 0

    End If
Next

End Sub

Sub INetContent()

If IsIDE = False Then
ScanPath.WindowState = 1
DoEvents
End If
DoEvents
ScanPath.Visible = True

OutPutPath = "M:\0 00 Art\Temp Inet Files JPGs\"

On Error Resume Next
MkDir "M:\0 00 Art\Temp Inet Files JPGs\#Gif"
MkDir "M:\0 00 Art\Temp Inet Files JPGs\#Png"
MkDir "M:\0 00 Art\Temp Inet Files JPGs\#Ico"
On Error GoTo 0


Open App.Path + "\Xdate.txt" For Input As #1
Line Input #1, Zdate$
Close #1
Ydate = DateValue(Zdate$) + TimeValue(Zdate$)


Label17 = "Process INet Content JPGs"

TxtPath.Text = "C:\Documents and Settings\Matt3\Local Settings\Temporary Internet Files\Content.IE5\"
TxtPath.Text = "D:\MY WEBS\MatthewLan.Com Web\"


cboDate.ListIndex = 0
DTPicker1(0) = Int(Ydate)

cboMask.Text = "*.jpg"
'cboSize.ListIndex = 1 'Less than
cboSize.ListIndex = 2 'Bigger Than
'cboSizeType(lCount).ListIndex = 0 'Byte
'cboSizeType(lCount).ListIndex = 2 'Meg
cboSizeType(lCount).ListIndex = 1 'K
txtSize(0) = 3
Call cmdScan_Click
TxtPath.Text = "C:\Documents and Settings\Matt4\Local Settings\Temporary Internet Files\Content.IE5\"
TxtPath.Text = "D:\MY WEBS\MatthewLan.Com Web\"
'Call cmdScan_Click

For We = ListView1.ListItems.Count To 1 Step -1
    
    Label13 = ListView1.ListItems.Count
    DoEvents
    
    G1$ = ListView1.ListItems.Item(We).SubItems(2)
    A1$ = ListView1.ListItems.Item(We).SubItems(1)
    B1$ = ListView1.ListItems.Item(We)
    
    Set F = FS.getfile(A1$ + G1$)
    Tdate = F.datelastmodified
    If Tdate > Xdate Then Xdate = Tdate
    
    remo = 0
    If Tdate <= Ydate Then
        ListView1.ListItems.Remove (We)
        remo = 1
    End If
    If remo = 0 Then
        hole = "Inet " + Format$(Now, "YYYY-MM-DD") + "\"
        GeText = LCase(Mid$(B1$, Len(B1$) - 2, 3)) + "\"
        If GeText = "jpg\" Then GeText = ""
        secext = "M:\0 00 Art\Temp Inet Files JPGs\" + hole + GeText + B1$
        If FS.FileExists(secext) = True Then
            ListView1.ListItems.Remove (We)
        End If
        secext = OutPutPath + hole + GeText + Mid$(B1$, 1, Len(B1$) - 4) + ".zip"
        If FS.FileExists(secext) = True Then
            ListView1.ListItems.Remove (We)
        End If
        secext = OutPutPath + hole + GeText + Mid$(B1$, 1, Len(B1$) - 4) + ".rar"
        If FS.FileExists(secext) = True Then
            ListView1.ListItems.Remove (We)
        End If
    End If
Next

Open App.Path + "\Xdate.txt" For Output As #1
Print #1, Xdate
Close #1
que = 0
    
hole = "INet " + Format$(Now, "YYYY-MM-DD") + "\"
On Error Resume Next
If que = 0 Then MkDir OutPutPath + hole: que = 1
On Error GoTo 0

For We = ListView1.ListItems.Count To 1 Step -1
    
    Label13 = ListView1.ListItems.Count
    DoEvents
    
    G1$ = ListView1.ListItems.Item(We).SubItems(2)
    A1$ = ListView1.ListItems.Item(We).SubItems(1)
    B1$ = ListView1.ListItems.Item(We)
    
    Set F = FS.getfile(A1$ + G1$)
    
    
    GeText = LCase(Mid$(B1$, Len(B1$) - 2, 3)) + "\"
    If GeText = "jpg\" Then GeText = ""
    
    On Error Resume Next
    MkDir OutPutPath + hole + GeText
    On Error GoTo 0
    
    F.Copy OutPutPath + hole + GeText

Next

'-------------------------------------
'-------------------------------------
'DTPicker1(0).Value = vbNullString
ListView1.ListItems.Clear
TxtPath.Text = "C:\Documents and Settings\Matt3\Local Settings\Temporary Internet Files\Content.IE5\"
cboSize.ListIndex = 0 ' Not Used
cboMask.Text = "*.png;*.ico;*.gif"
Call cmdScan_Click

Exit Sub

For We = ListView1.ListItems.Count To 1 Step -1
    
    Label13 = ListView1.ListItems.Count
    DoEvents
    
    G1$ = ListView1.ListItems.Item(We).SubItems(2)
    A1$ = ListView1.ListItems.Item(We).SubItems(1)
    B1$ = ListView1.ListItems.Item(We)
    Set F = FS.getfile(A1$ + G1$)
    Tdate = F.datelastmodified
    If Tdate > Xdate Then Xdate = Tdate
    remo = 0
    If Tdate <= Ydate Then
        ListView1.ListItems.Remove (We)
        remo = 1
    End If
    If remo = 0 Then
        GeText = "#" + LCase(Mid$(B1$, Len(B1$) - 2, 3)) + "\"
        If FS.FileExists(OutPutPath + GeText + B1$) = True Then
        ListView1.ListItems.Remove (We)
        End If
    End If
Next

Open App.Path + "\Xdate.txt" For Output As #1
Print #1, Xdate
Close #1


For We = ListView1.ListItems.Count To 1 Step -1
    
    Label13 = ListView1.ListItems.Count
    DoEvents
    
    G1$ = ListView1.ListItems.Item(We).SubItems(2)
    A1$ = ListView1.ListItems.Item(We).SubItems(1)
    B1$ = ListView1.ListItems.Item(We)
    
    Set F = FS.getfile(A1$ + G1$)

    GeText = "#" + LCase(Mid$(B1$, Len(B1$) - 2, 3)) + "\"
    F.Copy OutPutPath + GeText
Next

ListView1.ListItems.Clear
TxtPath.Text = "C:\Documents and Settings\Matt3\Local Settings\Temporary Internet Files\Content.IE5\"
cboSize.ListIndex = 0 ' Not Used
cboMask.Text = "*.png;*.ico;*.gif"
Call cmdScan_Click
Call cmdScanDir_Click

If IsIDE = False Then End

End Sub


Sub Bangers()

Label17 = "Process Banger Favs Quick"
'Call Banger_Favs
Label17 = "Working"

tpath1$ = "M:\04 Music ---\03 My Music Zen\"
tpath2$ = "M:\04 Music ---\04 My Music\"
tpath3$ = "M:\04 Music ---\Del\"
'MkDir tpath3$
TxtPath.Text = tpath1$

cboMask.Text = "*.mp3"

TxtPath.Text = "F:\04 Music ---\04 My Music"
TxtPath.Text = "F:\04 Music ---\04 My Music Talking Books"

Dim ra(30)

ra(1) = "M:\05 Media\MIDI"
ra(2) = "M:\04 Music ---\03 My Music Zen"
ra(3) = "M:\04 Music ---\04 My Music"
ra(4) = "M:\04 Music ---\05 Whole Lot"
ra(5) = "M:\04 Music ---\00 TBooks All"

ra(1) = "M:\04 Music ---"
ra(2) = "M:\Videos\00 Vid Films"
ra(3) = "M:\Videos\00 Vid XXX"
'ra(3) = "M:\04 Music ---\04 My Music Talking Books"

'ra(1) = "M:\04 Music ---\"
'ra(2) = "M:\04 Music ---\04 My Music Talking Books"
'ra(3) = "S:\Tbooks"
'ra(4) = "S:\My Music Talking Books"



For Ret = 1 To 3
DoEvents
If Right$(ra(Ret), 1) <> "\" Then ra(Ret) = ra(Ret) + "\"

TxtPath.Text = ra(Ret)

cboSize.ListIndex = 1 'Less than
txtSize(0) = 1

If Dog = True Then Exit Sub

Call cmdScan_Click

If Dog = True Then Exit Sub
DoEvents
If Dog = True Then Exit Sub

For We = ListView1.ListItems.Count To 1 Step -1
    
    Label13 = We
    DoEvents
    
    G1$ = ListView1.ListItems.Item(We).SubItems(2)
    A1$ = ListView1.ListItems.Item(We).SubItems(1)
    B1$ = ListView1.ListItems.Item(We)
    w = DeleteFile(A1$ + G1$)

Next

Call cmdScanDir_Click

For We = ListView1.ListItems.Count To 1 Step -1
  
    Label14 = We
    DoEvents
    
    A1$ = ListView1.ListItems.Item(We).SubItems(1)
    B1$ = ListView1.ListItems.Item(We)
    A1$ = A1$ + B1$ + "\"
  
    
    Set F = FS.GetFolder(A1$)
    
    If F.Size = 0 Then
        ListView1.ListItems.Remove (We)
    End If
Next

A1$ = TxtPath.Text

Call Tagg2


For We = 1 To ListView1.ListItems.Count
  
    Label16 = We
    DoEvents
    
    A1$ = ListView1.ListItems.Item(We).SubItems(1)
    B1$ = ListView1.ListItems.Item(We)
    A1$ = A1$ + B1$ + "\"
    
    If InStr(A1$, " - 20") > 0 And InStr(LCase(A1$), "banging") > 0 Then
        Call TaggBang
    Else
        Call Tagg2
    End If

Next

Next

Label17 = "Done"



End

End Sub



Sub Tagg2()
 
 

FF$ = Mid$(A1$, Len(TxtPath.Text) + 1)
If FF$ = "" Then
FF$ = Mid$(A1$, 4)
End If
FF$ = Left$(FF$, Len(FF$) - 1)

Do
ttgx = InStr(FF$, "\")
If ttgx > 0 Then
FF$ = Mid$(FF$, 1, ttgx - 1) + " -- " + Mid$(FF$, ttgx + 1)
End If
Loop Until ttgx = 0

Call WriteTagg

End Sub

Sub TaggBang()
 
    
TY$ = ""
If InStr(A1$, "My Music\") Then TY$ = "My Music"
If InStr(A1$, "My Music Zen\") Then TY$ = "My Music Zen"
If TY$ = "My Music" And InStr(A1$, "Favs") Then TY$ = "My Music - Favs"
If TY$ = "My Music Zen" And InStr(A1$, "Favs") Then TY$ = "My Music Zen - Favs"
If TY$ = "My Music" And InStr(A1$, " Bang Sets") Then TY$ = "My Music - Sets"
If TY$ = "My Music Zen" And InStr(A1$, " Bang Sets") Then TY$ = "My Music Zen - Sets"
If TY$ = "My Music" And InStr(A1$, " Bang Fav Sets") Then TY$ = "My Music - Fav Sets"
If TY$ = "My Music Zen" And InStr(A1$, " Bang Fav Sets") Then TY$ = "My Music Zen - Fav Sets"
'03 Bang Sets
    
    
gg$ = Mid$(A1$, InStrRev(A1$, "\", Len(A1$) - 1) + 1)
Tx$ = Left$(gg$, Len(gg$) - 1)

FF$ = "---------------[[(({{ " + Tx$ + " - " + TY$ + " }}))]]---------------.mp3"


On Error Resume Next
Do
fg1 = FreeFile
err.Clear
Open A1$ + FF$ For Output As fg1
Close fg1
If err.Number > 0 Then FF$ = Left$(FF$, Len(FF$) - 5) + ".mp3"
Loop Until err.Number = 0


'Call WriteTagg



End Sub



Sub WriteTagg()

On Local Error Resume Next
'Kill A1$ + "0#-" + FF$ + "-^.mp3"
'Kill A1$ + "01#-" + FF$ + "-^.mp3"
'Err.Clear
easy = Dir$(A1$ + "\*.txt") <> ""
 '
Do
    err.Clear
'    If InStr(FF$, "Art And Music") > 0 Then Stop

    fg1 = FreeFile
    Open A1$ + "0#01--" + FF$ + "-^.mp3" For Output As fg1
    Close fg1
    FF$ = Left$(FF$, Len(FF$) - 1)
Loop Until err.Number = 0
    
Do
    err.Clear
    ek$ = String$(Len(FF$) + 20, "-")
    fg1 = FreeFile
    Open A1$ + "0#00--" + ek$ + "-^.mp3" For Output As fg1
    Close fg1
    If easy = True Then
        fg1 = FreeFile
        Open A1$ + "0#02----- Text File In Dir -----^.mp3" For Output As fg1
        Close fg1
    End If
    fg1 = FreeFile
    Open A1$ + "0#02--" + ek$ + "-^.mp3" For Output As fg1
    Close fg1
    FF$ = Left$(FF$, Len(FF$) - 1)
Loop Until err.Number = 0
    
    
On Local Error GoTo 0
    


End Sub


Private Sub cboSize_Click()
    'cboSize.ListIndex = 2
    'txtSize(0).Text = 1
    
    'cboSizeType(0).Visible = True
    'cboSizeType(0).

    
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


Private Sub cboSizeType_Change(Index As Integer)
'cboSizeType = 0
End Sub

Private Sub chkCopyMemory_Click()
    
    chkSort.Enabled = (chkCopyMemory.Value = vbUnchecked)
    
End Sub


Private Sub chkSort_Click()
    chkCopyMemory.Enabled = (chkSort.Value = vbUnchecked)
End Sub

Private Sub cmdBrowse_Click()
    TxtPath.Text = GetFolder(Me.hWnd, "Scan Path:", TxtPath.Text)
    fg1 = FreeFile
    Open App.Path + "\Scan Path.txt" For Output As #fg1
    Print #fg1, TxtPath.Text
    Close #fg1

'    fg1 = FreeFile
'    Open App.Path + "\Scan Path.txt" For Input As #fg1
'    Line Input #fg1, ae$
'    Close #fg1
'    txtPath.Text = ae$



End Sub

Private Sub cmdHelp_Click()
    'txtHelp.Visible = Not txtHelp.Visible
End Sub

Public Sub cmdScan_Click()
    Dim lCount As Long
    Dim lSize(1) As Long
    
    'chkSort.Enabled = True
    
    
    If cmdScan.Caption = "Scan Files" Then
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
        
        lblCount1.Caption = "-"
 
        'Screen.MousePointer = vbHourglass
        'ListView1.ListItems.Clear
        
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
            .StartScan TxtPath, chkSubFolders.Value, chkSort.Value And chkSort.Enabled, chkPatternMatching
            
            If Chk_SortOnDate.Value = vbChecked Then
                ListView1.SortOrder = lvwAscending
                ListView1.SortKey = 3
                ListView1.Sorted = True
                ListView1.Sorted = False
            Else
                ListView1.SortOrder = lvwAscending
                ListView1.SortKey = 0
                ListView1.Sorted = True
                ListView1.SortKey = 1
                ListView1.Sorted = True
                ListView1.Sorted = False
            End If
        
        End With
        
       With ListView1
            If .ListItems.Count > 0 Then
                .SelectedItem = .ListItems(1)
            End If
            
            lblCount1.Caption = .ListItems.Count
        End With
        
        LockWindowUpdate 0
        
        cmdScan.Caption = "Scan Files"
        Screen.MousePointer = vbDefault
    Else
        'User want's to stop current scan
        SP.StopScan
        'End
    End If


cmdScan.Caption = "Scan Files"




'We always use direct scan as is better to sort after job then during thats all we need

Sorti = 0

Select Case Sorti
Case 0

Case 1
    'Sort On Date
    ListView1.SortOrder = lvwAscending
    ListView1.SortKey = 4
    ListView1.Sorted = True
    ListView1.Sorted = False

Case 2
    'Sort On Dos File Name
    ListView1.SortOrder = lvwAscending
    ListView1.SortKey = 2
    ListView1.Sorted = True
    ListView1.Sorted = False

Case 3
    'Sort On Size
    ListView1.SortOrder = lvwAscending
    ListView1.SortKey = 3
    ListView1.Sorted = True
    ListView1.Sorted = False

Case 4
'sort of PATH then FILE
    ListView1.SortOrder = lvwAscending
    ListView1.SortKey = 0
    ListView1.Sorted = True
    ListView1.SortKey = 1
    ListView1.Sorted = True
    ListView1.Sorted = False

Case 5
'sort of FILE then PATH
    ListView1.SortOrder = lvwAscending
    ListView1.SortKey = 1
    ListView1.Sorted = True
    ListView1.SortKey = 0
    ListView1.Sorted = True
    ListView1.Sorted = False

End Select

End Sub



Public Sub cmdScanDir_Click()
    Dim lCount As Long
    Dim lSize(1) As Long
    
    If CmdScanDir.Caption = "Scan Dir" Then
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
        lblCount2.Caption = "-"
 
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
            .StartScanDir TxtPath, chkSubFolders.Value, chkSort.Value And chkSort.Enabled, chkPatternMatching
        
            
            'Correct Yes 1st one column sort keeps sort then another
            ListView1.SortOrder = lvwAscending
            ListView1.SortKey = 0
            ListView1.Sorted = True
            ListView1.SortKey = 1
            ListView1.Sorted = True
            ListView1.Sorted = False
        
            If Chk_SortOnDate.Value = vbChecked Then
                ListView1.SortOrder = lvwAscending
                ListView1.SortKey = 3
                ListView1.Sorted = True
                ListView1.Sorted = False
            End If
        
        End With
        
       With ListView1
            If .ListItems.Count > 0 Then
                .SelectedItem = .ListItems(1)
            End If
            
            lblCount1.Caption = .ListItems.Count
        End With
        
        LockWindowUpdate 0
        
        cmdScan.Caption = "Scan"
        Screen.MousePointer = vbDefault
    Else
        'User want's to stop current scan
        SP.StopScan
   End If
'

lblCount1.Caption = ListView1.ListItems.Count
    

End Sub




Private Sub Command1_Click()

Call CRCDUPE

End Sub

Private Sub Command10_Click()


'ScanPath.txtPath = "K:\00 HTTrack\Techno BeatPlexity.com MusicGateWay\http___www.beatplexity.com_musicgateway\www.beatplexity.com\musicgateway\"
'ScanPath.txtPath = "K:\00 HTTrack\Techno PoMac.Net Swarm\Http___pomac.netswarm.net_music.html_music\pomac.netswarm.net\music"

'ScanPath.txtPath = "X:\00 Blue Tooth Exchange Folder\IMAGES 2009\"

'ScanPath.txtPath = "M:\Temp\alt.support.schizophrenia JUST BORG"
'
'24hoursupport.helpdesk
'ScanPath.txtPath = "M:\Temp\24hoursupport.helpdesk"
ScanPath.TxtPath = "M:\Temp\alt.usenet.kooks"

If Mid(ScanPath.TxtPath, Len(ScanPath.TxtPath) - 1, 1) <> "\" Then ScanPath.TxtPath = ScanPath.TxtPath + "\"



'    'MOST HARD CODED
'    ScanPath.Text1 = "    Loop" + vbCrLf + "    " + vbCrLf + "    " + "FindClose lResult"
'    ScanPath.Text2 = "        FindClose lResult" + vbCrLf + "    " + vbCrLf + "    " + "Loop"


'ScanPath.Text2 = """>"
'ScanPath.Text1 = "http:"



ScanPath.ListView1.ListItems.Clear

ScanPath.cboMask.Text = "*.NWS"
ScanPath.chkSubFolders = vbUnchecked
Call ScanPath.cmdScan_Click
ScanPath.Show

ScanPath.lblCount1 = Trim(Str(ScanPath.ListView1.ListItems.Count)) + " TOTAL FILES"
    
'B1 = ScanPath.ListView1.ListItems.Item(1)
'RXRIME = Format(DateValue(Mid(B1, 8, 10)), "YYYY-MM-MMM")
'FN = ScanPath.txtPath.Text + "HTTP's From Email's -- " + RXRIME + ".txt"

'If Dir(FN) <> "" Then Kill FN
'UU = FreeFile
'Open FN For Append As #UU



For We = 1 To ScanPath.ListView1.ListItems.Count
    
    
    
'    If ScanPath.ListView1.ListItems.Count = 0 Then Exit For
    
    TTD = TTD + 1
    ScanPath.lblCount2 = Trim(Str(TTD)) + " DEALT WITH FILES"
    
    DoEvents
    
    A1 = ScanPath.ListView1.ListItems.Item(We).SubItems(1)
    B1 = ScanPath.ListView1.ListItems.Item(We)
    G1 = ScanPath.ListView1.ListItems.Item(We).SubItems(2)
    
    TT = TT + "-*/" + B1 + vbCrLf
    
    'Set F = Fs.getfile(A1 + B1)
    'ADATE1 = F.datelastmodified
    
    Open A1 + G1 For Binary As #1
    OO = Input(LOF(1), 1)
    Close #1
    
    
    'Clipboard.Clear
    'Clipboard.SetText oo
    
   
   ADate1 = Mid(OO, InStr(OO, vbCrLf + "Date: ") + 2 + 6)
   ADate1 = Mid(ADate1, 1, InStr(ADate1, vbCrLf))
   If InStr(ADate1, ",") > 0 Then
        ADate1 = Mid(ADate1, InStr(ADate1, ",") + 2)
   End If
   
   
   
            DDate = ADate1
            'DDATE = Mid(DDATE, InStr(DDATE, ";") + 2)
                
            DDate = Replace(DDate, "GMT", "")
            DDate = Replace(DDate, "", "")
            DDate = Replace(DDate, "(BST)", "")
            UU = ""
            If InStr(DDate, "-") > 0 Then
                UU = DDate
                UU = Mid(DDate, 1, InStr(DDate, "-") - 2)
                UU1 = Mid(DDate, InStr(DDate, "-") + 1, 2)
                'UU = Mid(UU, 6)
                UU = DateValue(UU) + TimeValue(UU)
                uu2 = Val(UU1)
                UU = UU - TimeSerial(uu2, 0, 0)
                DDate2 = UU
            End If
            If InStr(DDate, "+") > 0 Then
                UU = DDate
                UU = Mid(DDate, 1, InStr(DDate, "+") - 2)
                UU1 = Mid(DDate, InStr(DDate, "+") + 1, 2)
                'UU = Mid(UU, 6)
                UU = DateValue(UU) + TimeValue(UU)
                uu2 = Val(UU1)
                UU = UU + TimeSerial(uu2, 0, 0)
                DDate2 = UU
            End If
   
            If UU <> "" Then DDate = Format(DDate2, "DD MM YYYY")
   
        'ADATE1 = F.datelastmodified
    
    
    
    'YY = Format(DDATE, "YYYY") + " 0" + Format(DDATE, "MM") + "(" + Format(DDATE, "MMM") + ") " + Format(DDATE, "DD DDD")
    YY = Format(DDate, "YYYY") + "-" + Format(DDate, "MM") + "-" + Format(DDate, "DD") + "  " + Format(DDate, "hh-mm-ss")
    
    
            
               SUBJ = B1
            SUBJ = Replace(SUBJ, "    ", "")
            SUBJ = Replace(SUBJ, vbCr, "")
            SUBJ = Replace(SUBJ, vbLf, "")
            SUBJ = Replace(SUBJ, Chr(9), "")
            SUBJ = Replace(SUBJ, """", "")
            SUBJ = Replace(SUBJ, "\", "")
            SUBJ = Replace(SUBJ, "?", "")
            SUBJ = Replace(SUBJ, ":", "-")
            SUBJ = Replace(SUBJ, "/", "-")
            SUBJ = Replace(SUBJ, "=", "-")
            SUBJ = Replace(SUBJ, "*", "-")
            SUBJ = Replace(SUBJ, "<", "")
            SUBJ = Replace(SUBJ, ">", "")
            SUBJ = Replace(SUBJ, "|", "")
            If SUBJ <> B1 Then B1 = SUBJ
    
    
    YY = YY + "#" + B1
    
    
    
    YY2 = Format(DDate, "YYYY") + " 0" + Format(DDate, "MM") + "(" + Format(DDate, "MMM") + ")"
    
    'Name A1 + G1 As A1 + YY
    
    'MOVE INTO FOLDER
    If FS.FolderExists(ScanPath.TxtPath + YY2) = False Then MkDir ScanPath.TxtPath + YY2
    'If Fs.FileExists(ScanPath.txtPath + yy + "\" + yy2) = False Then
        
        LONGLOOP = 0
        Do
        LONGLOOP = LONGLOOP + 1
        If LONGLOOP > 50 Then Stop
        On Error Resume Next
        Set F = FS.getfile(A1 + G1)
        err.Clear
        If FS.FileExists(ScanPath.TxtPath + "\" + YY2 + "\" + YY) = True Then Exit Do
        F.Move ScanPath.TxtPath + "\" + YY2 + "\" + YY
        
        'ERR.DESCRIPTION
        '>256 CHARS PATH
        If err.Number = 76 Then
            YY = Mid(YY, 1, Len(YY) - 10) + ".nws"
        End If
        If Len(YY) < Len(ScanPath.TxtPath) And err.Number > 0 Then
            Exit For
        End If
        Loop Until err.Number = 0
        
        
    'End If
    
    'MOVE WHERE IS
    'If Fs.FileExists(A1$ + YY2) = False Then
        'F.Move A1$ + YY2
    'End If
    
    
    
    'F.Move A1 + YY + "\" + YY + " - " + B1
    
    
    
    
    
    
Next




End Sub

Private Sub Command13_Click()
Call CRCDUPE_MULTI_MATRIX_ON_SMALLEST_FILE
End Sub

Private Sub Command14_Click()
Call DelEMPTYS
End Sub

Public Sub cmdScan_NO_LIST_Click()
   
    XX = 58
    Dim lCount As Long
    Dim lSize(1) As Long
    mFileCount2 = 0

    With ListView1
        .ColumnHeaders.Item(1).Width = 1
    End With
    'chkSort.Enabled = True
    
    
    If cmdScan.Caption = "Scan Files" Then
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
        
        lblCount1.Caption = "-"
 
        'Screen.MousePointer = vbHourglass
        'ListView1.ListItems.Clear
        
        If chkRefreshListView.Value = vbUnchecked Then
            'LockWindowUpdate ListView1.hWnd
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
            .StartScan_USE_NO_LIST TxtPath, chkSubFolders.Value, chkSort.Value And chkSort.Enabled, chkPatternMatching
            
            If Chk_SortOnDate.Value = vbChecked Then
                ListView1.SortOrder = lvwAscending
                ListView1.SortKey = 3
                ListView1.Sorted = True
                ListView1.Sorted = False
            Else
                ListView1.SortOrder = lvwAscending
                ListView1.SortKey = 0
                ListView1.Sorted = True
                ListView1.SortKey = 1
                ListView1.Sorted = True
                ListView1.Sorted = False
            End If
        
        End With
        
       With ListView1
            If .ListItems.Count > 0 Then
                .SelectedItem = .ListItems(1)
            End If
            
            lblCount1.Caption = .ListItems.Count
        End With
        
        LockWindowUpdate 0
        
        cmdScan.Caption = "Scan Files"
        Screen.MousePointer = vbDefault
    Else
        'User want's to stop current scan
        SP.StopScan
        'End
    End If


cmdScan.Caption = "Scan Files"




'We always use direct scan as is better to sort after job then during thats all we need

Sorti = 0

Select Case Sorti
Case 0

Case 1
    'Sort On Date
    ListView1.SortOrder = lvwAscending
    ListView1.SortKey = 4
    ListView1.Sorted = True
    ListView1.Sorted = False

Case 2
    'Sort On Dos File Name
    ListView1.SortOrder = lvwAscending
    ListView1.SortKey = 2
    ListView1.Sorted = True
    ListView1.Sorted = False

Case 3
    'Sort On Size
    ListView1.SortOrder = lvwAscending
    ListView1.SortKey = 3
    ListView1.Sorted = True
    ListView1.Sorted = False

Case 4
'sort of PATH then FILE
    ListView1.SortOrder = lvwAscending
    ListView1.SortKey = 0
    ListView1.Sorted = True
    ListView1.SortKey = 1
    ListView1.Sorted = True
    ListView1.Sorted = False

Case 5
'sort of FILE then PATH
    ListView1.SortOrder = lvwAscending
    ListView1.SortKey = 1
    ListView1.Sorted = True
    ListView1.SortKey = 0
    ListView1.Sorted = True
    ListView1.Sorted = False

End Select

End Sub

Private Sub Command2_Click()
Call WINRAR_EXTRACT

End Sub

Private Sub Command3_Click()
    'MOST HARD CODED
    Call FIND_REPLACE





End Sub

Private Sub Command4_Click()
Call DelBoy




End Sub

Private Sub Command5_Click()

Call FilesToTextList

End Sub

Private Sub Command6_Click()
    'MOST HARD CODED
    Text1 = "Start to Search"
    Text2 = "How Does End"
    
    'Text1 = "http:"
    'Text2 = """"
    
    Call GRAB_STRING
    


End Sub

Private Sub Command7_Click()


ScanPath.TxtPath = "C:\HTTRACK\Techno PoMac.Net Swarm\Http___pomac.netswarm.net_music.html_music\pomac.netswarm.net\music\"

'ScanPath.txtPath = "C:\HTTRACK\Techno BeatPlexity.com MusicGateWay\http___www.beatplexity.com_musicgateway\www.beatplexity.com\musicgateway\"

'    'MOST HARD CODED
'    ScanPath.Text1 = "    Loop" + vbCrLf + "    " + vbCrLf + "    " + "FindClose lResult"
'    ScanPath.Text2 = "        FindClose lResult" + vbCrLf + "    " + vbCrLf + "    " + "Loop"


'ScanPath.Text2 = """>"
'ScanPath.Text1 = "http:"

'GREATER THAN ONE BYTE
cboSize.ListIndex = 2
txtSize(0).Text = 1

ScanPath.ListView1.ListItems.Clear

ScanPath.cboMask.Text = "*.MP3;*.ogg"
ScanPath.chkSubFolders = vbChecked
Call ScanPath.cmdScan_Click
ScanPath.Show

ScanPath.lblCount1 = Trim(Str(ScanPath.ListView1.ListItems.Count)) + " TOTAL FILES"
    
'B1 = ScanPath.ListView1.ListItems.Item(1)
'RXRIME = Format(DateValue(Mid(B1, 8, 10)), "YYYY-MM-MMM")
'FN = ScanPath.txtPath.Text + "HTTP's From Email's -- " + RXRIME + ".txt"

'If Dir(FN) <> "" Then Kill FN
'UU = FreeFile
'Open FN For Append As #UU

For We = 1 To ScanPath.ListView1.ListItems.Count
    
    
    
'    If ScanPath.ListView1.ListItems.Count = 0 Then Exit For
    
    TTD = TTD + 1
    ScanPath.lblCount2 = Trim(Str(TTD)) + " DEALT WITH FILES"
    
    DoEvents
    
    A1 = ScanPath.ListView1.ListItems.Item(We).SubItems(1)
    B1 = ScanPath.ListView1.ListItems.Item(We)
    G1 = ScanPath.ListView1.ListItems.Item(We).SubItems(1)
    
    'TT = TT + "-*/" + B1 + vbCrLf
    'TT = TT + "-*/" + Mid(B1, 1, 4) + "*" + vbCrLf
    
    'GET WHOLE LINE FILE
    TT = TT + "-*/" + Mid(B1, 1, Len(B1) - 4) + "*" + vbCrLf
    
    
Next

Clipboard.Clear
Clipboard.SetText TT



End Sub

Private Sub Command8_Click()

ScanPath.ListView1.ListItems.Clear
ScanPath.cboMask.Text = "*.LNK"
ScanPath.chkSubFolders = vbChecked

ScanPath.TxtPath = "E:\01 VB Shell Folders\00 Shell Notepad Loader"
ScanPath.TxtPath = "E:\01 VB Shell Folders\"

Call ScanPath.cmdScan_Click


'MY DOCS
sPersonalFolder = GetSpecialfolder(CSIDL_PERSONAL)

ScanPath.Show

ScanPath.lblCount1 = Trim(Str(ScanPath.ListView1.ListItems.Count)) + " TOTAL FILES"
    

Dim RR As String, D1, TT, D4 As String, D5, S1, D3

Debug.Print vbCrLf

For We = 1 To ScanPath.ListView1.ListItems.Count
    
    ScanPath.lblCount2 = Trim(Str(We)) + " CHKED"
    
    DoEvents
    
    A1 = ScanPath.ListView1.ListItems.Item(We).SubItems(1)
    B1 = ScanPath.ListView1.ListItems.Item(We)
    G1 = ScanPath.ListView1.ListItems.Item(We).SubItems(1)




'Load File From Link
D1 = A1 + B1
Open A1 + B1 For Binary As #1
RR = Space$(LOF(1))
Get #1, 1, RR
Close #1
'If Mid$(rr$, &H568, 3) = ":" + Chr$(0) + "\" Then
'rr$ = Mid$(rr$, &H566)
'End If
S1 = InStr(105, RR, ":\") - 1
S2 = Len(RR)
If S1 > 0 Then

TT = Mid$(RR, S1)
D1 = Mid$(TT, 1, InStr(TT, Chr$(0)) - 1)


D2 = 0
D2 = InStr(D1, "My Documents")
If D2 > 0 Then
D3 = InStr(D2, D1, "\")
If D3 > 0 Then
D4 = "'%PERSONAL%" + Mid$(D1, D3) + "'"
D4 = "%PERSONAL%" + Mid$(D1, D3)
D4 = sPersonalFolder + Mid$(D1, D3)

'If Dir(A1 + B1) <> "" Then Kill A1 + B1

G1 = Mid(B1, 1, InStrRev(B1, ".") - 1)

D5 = Mid(D4, 1, InStrRev(D4, "\"))

If InStr(LCase(D4), "my web") > 0 Then
    'Stop
    D3 = InStr(LCase(D4), "my web")
    D4 = "D:\" + Mid$(D4, D3)
    D5 = Mid(D4, 1, InStrRev(D4, "\"))

End If

'If InStr(LCase(D4), "my web") = 0 Then

'Debug.Print D4
'Debug.Print A1 + B1
'Debug.Print G1
'Debug.Print D5

If FS.FileExists(D4) = True Or FS.FolderExists(D4) = True Then

        CNT3 = CNT3 + 1
        ScanPath.lblCount3 = Trim(Str(CNT3)) + " DEALT WITH"
        Debug.Print "CONVERT LINK "
        'Call Create_ShortCut(D4, A1 + B1, G1, D5)
    
    Else
    
        'MsgBox "FILE NOT EXIST" + VBCLRF + D4
        Debug.Print "FILE NOT EXIST ------ " + A1 + B1
        Debug.Print "FILE NOT EXIST ------ " + D4
        Debug.Print
    
    End If


'Else

    'Stop

'End If


'Stop
End If

End If 'S1
End If 'D3

'Exit Sub

Next

End Sub

Private Sub Label14_Click()

ScanPath.ListView1.ListItems.Clear

ScanPath.chkSubFolders = vbUnchecked

ScanPath.TxtPath = "D:\# MY DOCS\# 01 My Documents\00 Blue Tooth Exchange Folder\00 CONTACTS\## CONS BLUE SEND FOLDER"

Call ScanPath.cmdScan_Click

'On Error Resume Next
ScanPath.lblCount1 = Trim(Str(ScanPath.ListView1.ListItems.Count)) + " TOTAL FILES"

If ScanPath.ListView1.ListItems.Count = 0 Then Exit Sub
fp = App.Path + "\TOSEND.vcf"
If Dir(fp) <> "" Then Kill fp

For We = 1 To ScanPath.ListView1.ListItems.Count
    ScanPath.lblCount2 = Trim(Str(We)) + " Process Files"
    DoEvents
    A1 = ScanPath.ListView1.ListItems.Item(We).SubItems(1)
    B1 = ScanPath.ListView1.ListItems.Item(We)
    SOURCE1 = A1 + B1
    Open SOURCE1 For Input As #1
        TT = Input(LOF(1), 1)
    Close #1
    
    Open fp For Append As #1
        Print #1, TT
    Close #1
Next


SOURCE1 = fp

'W595
ScanPath.lblCount2 = " W595 - PROCESS"
I = ExecCmdWAIT("C:\Program Files\WIDCOMM\Bluetooth Software\btsendto_explorer.exe -BD_ADDR=6c:0e:0d:30:fc:86 -BD_NAME=W595i -DEV_CLASS=00262746" + " """ + SOURCE1 + """")

'K700i
ScanPath.lblCount2 = " K700 - PROCESS"
I = ExecCmdWAIT("C:\Program Files\WIDCOMM\Bluetooth Software\btsendto_explorer.exe -BD_ADDR=00:fc:22:08:04:0e -BD_NAME=K700i -DEV_CLASS=00262738" + " """ + SOURCE1 + """")

'V600i
ScanPath.lblCount2 = " V600 - PROCESS"
I = ExecCmdWAIT("C:\Program Files\WIDCOMM\Bluetooth Software\btsendto_explorer.exe -BD_ADDR=00:12:ee:61:65:7e -BD_NAME=V600i -DEV_CLASS=00262738" + " """ + SOURCE1 + """")

'K800i
ScanPath.lblCount2 = " K800 - PROCESS"
I = ExecCmdWAIT("C:\Program Files\WIDCOMM\Bluetooth Software\btsendto_explorer.exe -BD_ADDR=00:1d:28:2b:90:9c -BD_NAME=K800i -DEV_CLASS=00262746" + " """ + SOURCE1 + """")

'W880i
ScanPath.lblCount2 = " W880 - PROCESS"
I = ExecCmdWAIT("C:\Program Files\WIDCOMM\Bluetooth Software\btsendto_explorer.exe -BD_ADDR=00:1d:28:36:2a:8d -BD_NAME=W80x2D07919180203 -DEV_CLASS=00262746" + " """ + SOURCE1 + """")

    
ScanPath.lblCount6 = "DONE"

End

End Sub

Private Sub Label15_Click()
Call COPY_CDROM_ANYWHERE
End Sub

Private Sub Label16_Click()
Call COPY_ANYWHERE
End Sub

Private Sub MNU_LIST_FILES_TO_CLIP_httrack_Click()
Call Command7_Click
End Sub

Private Sub Mnu_MatchBungDateDesti_Click()


ScanPath.ListView1.ListItems.Clear

ScanPath.chkSubFolders = vbChecked


ScanPath.TxtPath = "F:\##ACER-D2"

Call ScanPath.cmdScan_Click


'destipath1 = "\\55-88-happy\MY BOOK (M)\##ASUS-D"
destipath1 = "\\55-88-happy\D"


'On Error Resume Next
ScanPath.lblCount1 = Trim(Str(ScanPath.ListView1.ListItems.Count)) + " TOTAL FILES"

For We = 1 To ScanPath.ListView1.ListItems.Count
    
    If ScanPath.ListView1.ListItems.Count = 0 Then Exit For
    
    TTD = TTD + 1
    ScanPath.lblCount2 = Trim(Str(TTD)) + " Process Files"
    
    DoEvents
    
    'Command1.Caption = Trim(Str(ScanPath.ListView1.ListItems.Count))
    A1 = ScanPath.ListView1.ListItems.Item(We).SubItems(1)
    B1 = ScanPath.ListView1.ListItems.Item(We)
    G1 = ScanPath.ListView1.ListItems.Item(We).SubItems(1)
    
    
    D1 = destipath1 + Mid(A1, Len(ScanPath.TxtPath) + 1)
    'D2 = destipath2 + Mid(A1, Len(ScanPath.txtPath) + 1)
    'D3 = "D:" + Mid(A1, Len(ScanPath.txtPath) + 1)
    
    
    
    If FS.FileExists(A1 + B1) = True And FS.FileExists(D1 + B1) = True Then
        
        Set F = FS.getfile(D1 + B1)
        ADate1 = F.datelastmodified
        If ADate1 < DateSerial(2010, 2, 1) Then
        
        
        err.Clear
        
        'DEL FROM OUR SWAP DRIVE
        FS.DeleteFile A1 + B1, True
            
        TTD2 = TTD2 + 1
        ScanPath.lblCount3 = Trim(Str(TTD2)) + " Del-ed Files"
            
        End If
    End If
    
    'On Error Resume Next
    
    If err.Number > 0 Then
        AG = AG + 1
    End If
    ScanPath.lblCount4 = Trim(Str(AG)) + " Del Errors"

Next


ScanPath.lblCount6 = "** DONE **"
ScanPath.WindowState = 0
    




End Sub

Private Sub Mnu_MatchBungDel_Click()

Set m_CRC = New clsCRC
m_CRC.Algorithm = CRC32

ScanPath.ListView1.ListItems.Clear

ScanPath.chkSubFolders = vbChecked


ScanPath.TxtPath = "F:\##ACER-D2"

Call ScanPath.cmdScan_Click


destipath1 = "\\55-88-happy\MY BOOK (M)\##ASUS-D"
destipath2 = "\\55-88-happy\D"


'On Error Resume Next
ScanPath.lblCount1 = Trim(Str(ScanPath.ListView1.ListItems.Count)) + " TOTAL FILES"

For We = 1 To ScanPath.ListView1.ListItems.Count
    
    If ScanPath.ListView1.ListItems.Count = 0 Then Exit For
    
    TTD = TTD + 1
    ScanPath.lblCount2 = Trim(Str(TTD)) + " Process Files"
    
    DoEvents
    
    'Command1.Caption = Trim(Str(ScanPath.ListView1.ListItems.Count))
    A1 = ScanPath.ListView1.ListItems.Item(We).SubItems(1)
    B1 = ScanPath.ListView1.ListItems.Item(We)
    G1 = ScanPath.ListView1.ListItems.Item(We).SubItems(1)
    
    
    D1 = destipath1 + Mid(A1, Len(ScanPath.TxtPath) + 1)
    D2 = destipath2 + Mid(A1, Len(ScanPath.TxtPath) + 1)
    D3 = "D:" + Mid(A1, Len(ScanPath.TxtPath) + 1)
    
    
    
    If FS.FileExists(A1 + B1) = True And FS.FileExists(D1 + B1) = True Then
        
        If m_CRC.CalculateFile(A1 + B1) = m_CRC.CalculateFile(D1 + B1) Then
        
        err.Clear
        'COPY TO OUR  -D-
        'Debug.Print A1
        Debug.Print D3
        
        If FS.FolderExists(D3) = False Then
            'MkDir Mid(D3, 1, InStrRev(D3, "\", Len(D3) - 1))
            MkDir D3
            Stop
            err.Clear
        End If
        
        FS.CopyFile A1 + B1, D3 + B1, True
        
        'Err.Clear
        'DEL FROM OUR SWAP DRIVE
        If err.Number = 0 Then FS.DeleteFile A1 + B1, True
        
        
        On Error Resume Next
        'COPY TO DESTINATION'S -D-
        If err.Number = 0 Then FS.CopyFile A1 + B1, D2 + B1
        
        'DEL FROM DESTINATION SWAP DRIVE
        If err.Number = 0 Then FS.DeleteFile D1 + B1, True
        On Error GoTo 0
        
            
        End If
    End If
    
    'On Error Resume Next
    
    If err.Number > 0 Then
        AG = AG + 1
    End If
    ScanPath.lblCount3 = Trim(Str(AG)) + " Del Errors"

Next


ScanPath.lblCount6 = "** DONE **"
ScanPath.WindowState = 0
    



End Sub


Private Sub MOVE_IN_DATE_FOLDERS_M2CARD_Click()
'FIXED CODE DONT CHANGE


'If Command$ <> "" Then Me.WindowState = 0

'=NEWER THAN THIS DATE

'DTPicker1(0).CheckBox = True

'SOMETIMES WE USE

'cboDate.ListIndex = 0 ' MODIFIED
'DTPicker1(0) = Int(Now) - 15


ScanPath.ListView1.ListItems.Clear
ScanPath.cboMask.Text = "*.MPG;*.3GP"
ScanPath.chkSubFolders = vbChecked

'ScanPath.txtPath = "D:\# MY DOCS\# 01 My Documents\00 Blue Tooth Exchange Folder\"
''Call ScanPath.cmdScan_Click

ScanPath.TxtPath = "D:\# W880i\VIDEO\"
Call ScanPath.cmdScan_Click

ScanPath.TxtPath = "M:\# W880i\VIDEO\"
Call ScanPath.cmdScan_Click




'## OF THIS NULL THEN DIR RELATIVE TO DIR OF PATH FILE
''## WELL TO FIRST DIR PATH

DXDIR = ScanPath.TxtPath

Set F = FS.GETDRIVE("M")
If F.ISREADY = True Then
    Mid(DXDIR, 1, 1) = "M"
Else
    Mid(DXDIR, 1, 1) = "D"
End If

DTPicker1(0) = vbNullString





'Exit Sub



'    'MOST HARD CODED
'    ScanPath.Text1 = "    Loop" + vbCrLf + "    " + vbCrLf + "    " + "FindClose lResult"
'    ScanPath.Text2 = "        FindClose lResult" + vbCrLf + "    " + vbCrLf + "    " + "Loop"


'ScanPath.Text2 = """>"
'ScanPath.Text1 = "http:"


ScanPath.Show

ScanPath.lblCount1 = Trim(Str(ScanPath.ListView1.ListItems.Count)) + " TOTAL FILES"
    
'B1 = ScanPath.ListView1.ListItems.Item(1)
'RXRIME = Format(DateValue(Mid(B1, 8, 10)), "YYYY-MM-MMM")
'FN = ScanPath.txtPath.Text + "HTTP's From Email's -- " + RXRIME + ".txt"

'If Dir(FN) <> "" Then Kill FN
'UU = FreeFile
'Open FN For Append As #UU

For We = 1 To ScanPath.ListView1.ListItems.Count
    
'    If ScanPath.ListView1.ListItems.Count = 0 Then Exit For
    
    TTD = TTD + 1
    ScanPath.lblCount2 = Trim(Str(TTD)) + " DEALT WITH FILES"
    
    DoEvents
    
    A1 = ScanPath.ListView1.ListItems.Item(We).SubItems(1)
    B1 = ScanPath.ListView1.ListItems.Item(We)
    G1 = ScanPath.ListView1.ListItems.Item(We).SubItems(1)
    
    TT = TT + "-*/" + B1 + vbCrLf
    
    Set F = FS.getfile(A1 + B1)
    ADate1 = F.datelastmodified
    
    
    
    II = InStr(OO, Chr(1) + Chr(0) + Chr(0) + Chr(0) + Chr(32))
    II = InStr(OO, Trim(Str(Year(Now))))
    If II = 0 Then
    II1 = InStr(OO, Trim(Str(Year(Now) - 1)))
    II3 = InStr(OO, Trim(Str(Year(Now) + 1)))
    If II1 > 0 Then II = II1
    If II2 > 0 Then II = II2
    If II3 > 0 Then II = II2
    End If
    
    IIRIME = ""
    If II > 0 Then
        For R = 1 To 19
            IIRIME = IIRIME + Chr(Asc(Mid(OO, II + R - 1, 1)))
            '&HFA
        Next
    End If
    
    IIRIME2 = ""
    If IIRIME <> "" Then
        Mid(IIRIME, 5, 1) = "/"
        Mid(IIRIME, 8, 1) = "/"
        IIRIME2 = DateValue(IIRIME) + TimeValue(IIRIME)
    End If
    
    If IIRIME2 <> "" Then
        If IIRIME2 > DateSerial(2005, 1, 1) Then
            ADate1 = IIRIME2
        Else
            Stop
        End If
    End If
    
    YY = Format(ADate1, "YYYY") + " 0" + Format(ADate1, "MM") + "(" + Format(ADate1, "MMM") + ") " + Format(ADate1, "DD DDD")
    
'    If InStr(B1, "DSC") > 0 Then
'        yy2 = Format(adate1, "YYYY") + " 0" + Format(adate1, "MM") + "(" + Format(adate1, "MMM") + ") " + Format(adate1, "DD DDD") + " " + Format(adate1, "hh-Mm-ss") + " - " + cam + " - " + Mid(B1, InStr(B1, "DSC"))
'    Else
'        yy2 = Format(adate1, "YYYY") + " 0" + Format(adate1, "MM") + "(" + Format(adate1, "MMM") + ") " + Format(adate1, "DD DDD") + " " + Format(adate1, "hh-Mm-ss") + " - " + cam + " - " + B1
'    End If
    
    'yy2 = Format(adate1, "YYYY") + " 0" + Format(adate1, "MM") + "(" + Format(adate1, "MMM") + ") " + Format(adate1, "DD DDD") + " " + Format(adate1, "hh-Mm-ss") + " - " + B1
    'yy2 = Format(adate1, "YYYY") + " 0" + Format(adate1, "MM") + "(" + Format(adate1, "MMM") + ") " + Format(adate1, "DD DDD") + " - " + B1
    
    YY2 = Format(ADate1, "YYYY") + " 0" + Format(ADate1, "MM") + "(" + Format(ADate1, "MMM") + ") " + Format(ADate1, "DD DDD") + " " + Format(ADate1, "hh-Mm-ss") + " - " + Mid(B1, InStrRev(B1, "MOV"))
    
    If InStrRev(B1, "MOV") = 0 Then
        Me.WindowState = 0
        MsgBox "WE WANTED O KNOW IF ANY FILE NOT AND --.MOV -- FILE"
        Stop
    End If
    
    'If InStr(B1, "JFIF -") > 0 Then
    '    yy2 = Format(adate1, "YYYY") + " 0" + Format(adate1, "MM") + "(" + Format(adate1, "MMM") + ") " + Format(adate1, "DD DDD") + " " + Format(adate1, "hh-Mm-ss") + " - " + Mid(B1, InStrRev(B1, "JFIF -") + 7)
    'End If
    
    'MOVE INTO FOLDER
    
    
        
    
    If FS.FolderExists(DXDIR + YY) = False Then MkDir DXDIR + YY
    If FS.FileExists(DXDIR + YY + "\" + YY2) = False Then
        Call ShellFileMove(A1 + B1, DXDIR + YY + "\" + YY2)
        'Name A1 + B1 As DXDIR + yy + "\" + yy2
    Else
        Debug.Print "File Exists Already SOURCE ="
        Debug.Print A1 + B1
    End If
    
    'MOVE WHERE IS
    If FS.FileExists(A1$ + YY2) = False Then
        'F.Move A1$ + YY2
    End If
    
    
    
    'F.Move A1 + YY + "\" + YY + " - " + B1
    
    
    
    
    
    
Next


End Sub



Private Sub MNU_VB_Click()

Shell """C:\Program Files\Microsoft Visual Studio\VB98\VB6.EXE"" """ + App.Path + "\" + App.EXEName + ".vbp""", vbNormalFocus
End
End Sub

Private Sub MOVE_IN_DATE_FOLDERS_JPGS_Click()

'PLYABLE CODE DO WHAT WANT WITH

'ScanPath.txtPath = "K:\00 HTTrack\Techno BeatPlexity.com MusicGateWay\http___www.beatplexity.com_musicgateway\www.beatplexity.com\musicgateway\"
'ScanPath.txtPath = "K:\00 HTTrack\Techno PoMac.Net Swarm\Http___pomac.netswarm.net_music.html_music\pomac.netswarm.net\music"

'ScanPath.txtPath = "X:\00 Blue Tooth Exchange Folder\IMAGES 2009\"
'ScanPath.txtPath = "M:\0 00 Art\00 My Pictures\01 All Phone\00 Mental\TEST"

If Command$ <> "" Then Me.WindowState = 0

'=NEWER THAN THIS DATE
cboDate.ListIndex = 0 ' MODIFIED
'DTPicker1(0).CheckBox = True
DTPicker1(0) = Int(Now) - 15


ScanPath.ListView1.ListItems.Clear
ScanPath.cboMask.Text = "*.JPG;*.MPG;*.3GP"
ScanPath.chkSubFolders = vbChecked

ScanPath.TxtPath = "D:\# MY DOCS\# 01 My Documents\00 Blue Tooth Exchange Folder\"
Call ScanPath.cmdScan_Click

'## OF THIS NULL THEN DIR RELATIVE TO DIR OF PATH FILE
''## WELL TO FIRST DIR PATH
DXDIR = ScanPath.TxtPath
DTPicker1(0) = vbNullString

ScanPath.TxtPath = "M:\# W880i\VIDEO\"
Call ScanPath.cmdScan_Click



'Exit Sub



'    'MOST HARD CODED
'    ScanPath.Text1 = "    Loop" + vbCrLf + "    " + vbCrLf + "    " + "FindClose lResult"
'    ScanPath.Text2 = "        FindClose lResult" + vbCrLf + "    " + vbCrLf + "    " + "Loop"


'ScanPath.Text2 = """>"
'ScanPath.Text1 = "http:"


ScanPath.Show

ScanPath.lblCount1 = Trim(Str(ScanPath.ListView1.ListItems.Count)) + " TOTAL FILES"
    
'B1 = ScanPath.ListView1.ListItems.Item(1)
'RXRIME = Format(DateValue(Mid(B1, 8, 10)), "YYYY-MM-MMM")
'FN = ScanPath.txtPath.Text + "HTTP's From Email's -- " + RXRIME + ".txt"

'If Dir(FN) <> "" Then Kill FN
'UU = FreeFile
'Open FN For Append As #UU

For We = 1 To ScanPath.ListView1.ListItems.Count
    
'    If ScanPath.ListView1.ListItems.Count = 0 Then Exit For
    
    TTD = TTD + 1
    ScanPath.lblCount2 = Trim(Str(TTD)) + " DEALT WITH FILES"
    
    DoEvents
    
    A1 = ScanPath.ListView1.ListItems.Item(We).SubItems(1)
    B1 = ScanPath.ListView1.ListItems.Item(We)
    G1 = ScanPath.ListView1.ListItems.Item(We).SubItems(1)
    
    TT = TT + "-*/" + B1 + vbCrLf
    
    Set F = FS.getfile(A1 + B1)
    ADate1 = F.datelastmodified
    
    'C1 = YY + B1
    Open A1 + B1 For Binary As #1
    OO = UCase(Input(800, 1))
    Close #1
    cam = ""
    
    'Debug.Print OO
    'MsgBox OO
    
    If InStr(OO, "K800I") > 0 Then cam = "K800I"
    If InStr(OO, "W880I") > 0 Then cam = "W880I"
    If InStr(OO, "W595") > 0 Then cam = "W595"
    
    If cam = "" Then
        cam = "JFIF"
    End If
    
    II = InStr(OO, Chr(1) + Chr(0) + Chr(0) + Chr(0) + Chr(32))
    II = InStr(OO, Trim(Str(Year(Now))))
    If II = 0 Then
    II1 = InStr(OO, Trim(Str(Year(Now) - 1)))
    II3 = InStr(OO, Trim(Str(Year(Now) + 1)))
    If II1 > 0 Then II = II1
    If II2 > 0 Then II = II2
    If II3 > 0 Then II = II2
    End If
    
    IIRIME = ""
    If II > 0 Then
        For R = 1 To 19
            IIRIME = IIRIME + Chr(Asc(Mid(OO, II + R - 1, 1)))
            '&HFA
        Next
    End If
    
    IIRIME2 = ""
    If IIRIME <> "" Then
        Mid(IIRIME, 5, 1) = "/"
        Mid(IIRIME, 8, 1) = "/"
        IIRIME2 = DateValue(IIRIME) + TimeValue(IIRIME)
    End If
    
    If IIRIME2 <> "" Then
        If IIRIME2 > DateSerial(2005, 1, 1) Then
            ADate1 = IIRIME2
        Else
            Stop
        End If
    End If
    YY = Format(ADate1, "YYYY") + " 0" + Format(ADate1, "MM") + "(" + Format(ADate1, "MMM") + ") " + Format(ADate1, "DD DDD") + " - " + cam
    
    If InStr(B1, "DSC") > 0 Then
        YY2 = Format(ADate1, "YYYY") + " 0" + Format(ADate1, "MM") + "(" + Format(ADate1, "MMM") + ") " + Format(ADate1, "DD DDD") + " " + Format(ADate1, "hh-Mm-ss") + " - " + cam + " - " + Mid(B1, InStr(B1, "DSC"))
    Else
        YY2 = Format(ADate1, "YYYY") + " 0" + Format(ADate1, "MM") + "(" + Format(ADate1, "MMM") + ") " + Format(ADate1, "DD DDD") + " " + Format(ADate1, "hh-Mm-ss") + " - " + cam + " - " + B1
    End If
    
    If InStr(B1, "JFIF -") > 0 Then
        YY2 = Format(ADate1, "YYYY") + " 0" + Format(ADate1, "MM") + "(" + Format(ADate1, "MMM") + ") " + Format(ADate1, "DD DDD") + " " + Format(ADate1, "hh-Mm-ss") + " - " + Mid(B1, InStrRev(B1, "JFIF -"))
    End If
    
    
    'MOVE INTO FOLDER
    
    If DXDIR = "" Then
        If FS.FolderExists(ScanPath.TxtPath + YY) = False Then MkDir ScanPath.TxtPath + YY
        If FS.FileExists(ScanPath.TxtPath + YY + "\" + YY2) = False Then
            'F.Move ScanPath.txtPath + YY + "\" + YY2
            Call ShellFileMove(A1 + B1, ScanPath.TxtPath + YY + "\" + YY2)
        End If
    Else
        If FS.FolderExists(DXDIR + YY) = False Then MkDir DXDIR + YY
        If FS.FileExists(DXDIR + YY + "\" + YY2) = False Then
            Call ShellFileMove(A1 + B1, DXDIR + YY + "\" + YY2)
        End If
    End If
        'If DXDIR <> "" Then F.Move DXDIR + yy + "\" + YY2
    
    
    'MOVE WHERE IS
    If FS.FileExists(A1$ + YY2) = False Then
        'F.Move A1$ + YY2
    End If
    
    
    
    'F.Move A1 + YY + "\" + YY + " - " + B1
    
    
    
    
    
    
Next


End Sub



Private Sub Command9_Click()
    Call MOVE_ANY_WHERE
End Sub

Private Sub Form_Load()
    
'Shell "C:\Program Files\WIDCOMM\Bluetooth Software\btsendto_explorer.exe -BD_ADDR=00:1d:28:2b:90:9c -BD_NAME=K80x2D07919180203 -DEV_CLASS=00262746" + " """ + Source1 + """"
    
'Call ShellFileDelete("C:\C", True)
    
    
Me.BackColor = &HC0C0C0
    
Set FS = CreateObject("Scripting.FileSystemObject")
    
'--------
'If you use ChkMem Size Files then Know G1$ Alternate Data uses same column(2) for its data
'-
'Seem to have a problem with some program an not other when use chkmem file size and date
'Work Around done that
'-
'The Date checker box does scan for time if the var contains time
'---------
    
ScanPath.Caption = ScanPath.Caption + App.EXEName
'scanpath.Caption = frmMain.Caption + App.EXEName
  
x = 1
y = 1
On Error Resume Next
For Each Control In Controls
    If Control.Enabled = True Then
        If Control.Width + Control.Left > x Then x = Control.Width + Control.Left
        If Control.Height + Control.Top > y Then y = Control.Height + Control.Top
        If InStr(Control.Name, "Mnu_") > 0 Then MNU = 1
    End If
Next
On Error GoTo 0


ScanPath.Width = x + 110
If MNU = 1 Then
    PlusO = 720
Else
    PlusO = 450
End If
ScanPath.Height = y + PlusO
    
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
            .ListIndex = 0 ' set it to bytes here
        End With
    Next lCount
    
    With ListView1
        .ColumnHeaders.Add , "FILE", "File", 4200, lvwColumnLeft
        .ColumnHeaders.Add , "PATH", "Path", 8100, lvwColumnLeft
        .ColumnHeaders.Add , "DOS-8.3", "Dos", 1400, lvwColumnLeft
        .ColumnHeaders.Add , "SIZE", "Size", 1100, lvwColumnRight
        .ColumnHeaders.Add , "DATE", "Date", 1700, lvwColumnLeft
        .ColumnHeaders.Add , "CRC", "CRC", 1700, lvwColumnLeft
        
        .View = lvwReport
    End With

    Call chkCopyMemory_Click

'Call DelJunkFrontPage

'ScanPath.Show

'Call INetContent

'Call Bangers

'txtPath.Text = "D:\MY WEBS\MatthewLan.Com Web\"

'Call CRCDUPE

TxtPath = Clipboard.GetText
txtPath02 = Clipboard.GetText

ListView1.Width = Me.Width - 50



'Shell "E:\01 VB Shell Folders\00 Shell VBasic 6 Loader\Sort_AnyThing - MULTI USE MENU.exe.lnk MOVE_IN_DATE_FOLDERS_JPGS", vbMinimizedNoFocus
If Command$ = "MOVE_IN_DATE_FOLDERS_M2CARD" Then 'Or IsIDE = True Then
    'MsgBox "HELLO"
    ScanPath.Visible = False
    Call MOVE_IN_DATE_FOLDERS_M2CARD_Click
    End
End If

End Sub


Private Sub Form_Unload(Cancel As Integer)
End
End Sub

Private Sub List1_Click()

tpath3$ = "M:\04 Music ---\Del\"

B1$ = Mid$(List1.List(List1.ListIndex), 14)
C1$ = B1$ + "--Todel"

'tpath1$ = "M:\04 Music ---\"

C1$ = Mid$(B1$, InStrRev(B1$, "\") + 1)
List1.RemoveItem (List1.ListIndex)
'Name b1$ As c1$

'fs.copyFile b1$, tpath3$ + c1$
If Dir$(tpath3$ + C1$) <> "" Then Kill tpath3$ + C1$
FS.MoveFile B1$, tpath3$ + C1$



End Sub

Private Sub Label18_Click()

Call COPY_ANYWHERE_ONE_FOLDER
Exit Sub


Dog = True

If cmdScan.Caption = "Stop" Then cmdScan_Click
Label17 = "Stopped before Complete"
End Sub


Private Sub Label5_Click()

    Label5.BackColor = Label6.BackColor


End Sub


Private Sub SP_DirMatch(Directory As String, DDirectory As String, Path As String)
    '####################################################################################################
    'This Event fires for each Folder found
    '####################################################################################################
    
    
    
    Dim LV As ListItem

    With ListView1
    Set LV = .ListItems.Add(, , "")
        LV.SubItems(1) = Path + Directory
    End With
    'OPATH = Path

    TL = ScanPath.ListView1.ListItems.Count
    If TL < 1 Then Exit Sub
    ScanPath.ListView1.ListItems(TL).EnsureVisible
Exit Sub



'--------------



'sort of PATH then FILE
    ListView1.SortOrder = lvwAscending
    ListView1.SortKey = 0
    ListView1.Sorted = True
    ListView1.SortKey = 1
    ListView1.Sorted = True
    ListView1.Sorted = False
    
    
For We = 1 To ScanPath.ListView1.ListItems.Count
    A1$ = ScanPath.ListView1.ListItems.Item(We).SubItems(1)
    B1$ = ScanPath.ListView1.ListItems.Item(We)
    YY$ = A1$ + B1$
    Print #1, YY$
Next


ScanPath.ListView1.ListItems.Clear


End Sub

Private Sub SP_DirMatchxx(Directory As String, DDirectory As String, Path As String)
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
        LV.SubItems(2) = DDirectory
        
        
        
        
        
        
        
        
        
        If chkCopyMemory.Value Then
            'VB does not allows UDT's to be passed directly from a Class but we can access the structure
            'using pointers. We use CopyMemory to place the WIN32_FIND_DATA variable from the Class into
            'the uWIN32 declared in this Sub.
            
            'This is primarily a speed trick - we could retrieve the date & time information "ourselves"
            'using the standard VB functions or an API call but since we already have it...
            
            'CopyMemory ByVal uWIN32, ByVal SP.WFDPointer, ByVal Len(uWIN32)
            'This is not working in EXE but does in IDE Revert back to Old Way
            'CopyMemory ByVal uWIN32, ByVal SP.WFDPointer, ByVal Len(uWIN32)
                
            'Remember Public FS
            If Filename <> "" Then
                Set F = FS.getfile(Path + DFilename)
                ADate1 = F.datelastmodified
                asize1 = F.Size
            Else
                Set F = FS.GetFolder(Path)
                If Len(Path) > 3 Then
                    ADate1 = F.datelastmodified
                    'We May want this later Slow Down is Massive
                    If OldFolder <> Path Then
                        asize1 = F.Size
                    Else
                        asize1 = OldSize
                    End If
                    OldFolder = Path
                    OldSize = asize1
                End If
            End If

'            LV.SubItems(2) = uWIN32.nFileSizeLow
'            LV.SubItems(3) = FormatFileDate(uWIN32.ftLastWriteTime)
            LV.SubItems(3) = asize1
            LV.SubItems(4) = Format(ADate1, "YYYY-MM-DD HH-MM-SS")
        End If
        
        'Refresh Count & Scroll the list every 10th file
        If (LV.Index Mod 10) = 0 Then
            If chkRefreshListView.Value Then
                .SelectedItem = LV
                .SelectedItem.EnsureVisible
            End If
            
            lblCount1.Caption = LV.Index
        End If
    End With
    Exit Sub

GetFileError:
    MsgBox err.Description, vbCritical


End Sub





Private Sub SP_FileMatch(Filename As String, DFilename As String, Path As String)
    Dim LV As ListItem
    Dim uWIN32 As WIN32_FIND_DATA
    
    '####################################################################################################
    'This Event fires for each File found
    '####################################################################################################
    
    On Local Error GoTo GetFileError
    
    
    If XX = 58 Then
        
        'lblCount1.Caption = mFileCount2
        Print #1, "*" + Path + Filename
    
    Exit Sub
    End If
    
    
    
    
    
    With ListView1
        Set LV = .ListItems.Add(, , Filename)
        LV.SubItems(1) = Path
        'mod by matt l
        LV.SubItems(2) = DFilename
        
        
        
        
        
        
        
        
        
        
        If chkCopyMemory.Value Then
            'VB does not allows UDT's to be passed directly from a Class but we can access the structure
            'using pointers. We use CopyMemory to place the WIN32_FIND_DATA variable from the Class into
            'the uWIN32 declared in this Sub.
            
            'This is primarily a speed trick - we could retrieve the date & time information "ourselves"
            'using the standard VB functions or an API call but since we already have it...
            
            'CopyMemory ByVal uWIN32, ByVal SP.WFDPointer, ByVal Len(uWIN32)
            'LV.SubItems(3) = uWIN32.nFileSizeLow
            'LV.SubItems(4) = FormatFileDate(uWIN32.ftLastWriteTime)
        
                    'Remember Public FS
            If Filename <> "" Then
                Set F = FS.getfile(Path + DFilename)
                ADate1 = F.datelastmodified
                asize1 = F.Size
            Else
                Set F = FS.GetFolder(Path)
                ADate1 = F.datelastmodified
                'We May want this later Slow Down is Massive
                If OldFolder <> Path Then
                asize1 = F.Size
                Else
                asize1 = OldSize
                End If
                OldFolder = Path
                OldSize = asize1
            End If
'            LV.SubItems(2) = uWIN32.nFileSizeLow
'            LV.SubItems(3) = FormatFileDate(uWIN32.ftLastWriteTime)
            LV.SubItems(3) = asize1
            LV.SubItems(4) = Format(ADate1, "YYYY-MM-DD HH-MM-SS")


        
        End If
        
        'Refresh Count & Scroll the list every 10th file
        If (LV.Index Mod 10) = 0 Then
            If chkRefreshListView.Value Then
                .SelectedItem = LV
                .SelectedItem.EnsureVisible
            End If
            
            'lblCount1.Caption = LV.Index
        End If
    End With
    Exit Sub

GetFileError:
    MsgBox err.Description, vbCritical
End Sub



Private Function FormatFileDate(CT As FILETIME) As String
    Const SHORT_DATE = "Short Date"
    
    Dim ST As SYSTEMTIME
    Dim ds1 As Single
    Dim ds2 As Single
       
    If FileTimeToSystemTime(CT, ST) Then
          ds1 = DateSerial(ST.wYear, ST.wMonth, ST.wDay)
          ds2 = TimeSerial(ST.wHour, ST.wMinute, ST.wSecond)
          
          FormatFileDate = Format$(ds1 + ds2, "YYYY-MM-DD HH-MM-SS")
    End If
End Function

Private Sub Timer1_Timer()
'End
End Sub














Sub Jeepers()


On Local Error GoTo jeep
Drived2$ = Mid$(TxtPath.Text, 1, 3)
MkDir Drived2$ + "Temp\Anything"
v1$ = Mid$(TxtPath.Text, InStrRev(TxtPath.Text, "\"))

MkDir Drived2$ + "Temp\Anything" + v1$
On Local Error GoTo 0

List1.AddItem "Stage 1 of 2 : Make Dir's And Move Files to Temp"
List1.AddItem "------------------------------------------------"
List1.ListIndex = List1.ListCount - 1
List1.Refresh

For We = 1 To ListView1.ListItems.Count
    A1$ = ListView1.ListItems.Item(We).SubItems(1)
    B1$ = ListView1.ListItems.Item(We)

    'ets1 = Len("D:\# MY DOCS\# 01 My Documents\Favorites")
    ets1 = Len(TxtPath.Text)
    C1$ = Drived2$ + "Temp\Anything" + v1$ + "\" + Mid$(A1$, ets1 + 2)

    etd1 = 13
    ets2 = 1
    Do
        'jc1$ = Mid$(c1$, etd1 + ets2-1)
        ets2 = InStr(etd1 + ets2, C1$, "\")
        etd1 = 1
        If ets2 = 0 Then Exit Do

        D2$ = Mid$(C1$, 1, ets2)

        If InStr(F1$, D2$) = 0 Then
            On Local Error GoTo jeep
            MkDir D2$
            If errs2 <> 75 And errs2 > 0 Then
                MsgBox ("Error Making Temp Directory")
                Stop
            End If
            On Local Error GoTo 0
        End If
    Loop Until ets2 = 0

    F1$ = D2$

    errs2 = 0
    On Local Error GoTo jeep
    FS.MoveFile A1$ + B1$, C1$ + B1$
    On Local Error GoTo 0

    If errs2 <> 0 Then
        MsgBox ("Error Moving File to Temp")
        End
    End If

    List1.AddItem Format$(We, "000 ") + "Move > " + A1$ + B1$
    List1.ListIndex = List1.ListCount - 1
    List1.Refresh

    'Fs.DeleteFolder comrad$ + "\" + WFD$

Next

err.Clear
On Local Error Resume Next
FS.deletefolder TxtPath.Text, True
If err.Number > 0 Then Call HardDel
On Local Error GoTo 0


List1.AddItem "----------------------------------------"
List1.AddItem "Stage 2 of 2 : Move Files Back From Temp"
List1.AddItem "----------------------------------------"
List1.ListIndex = List1.ListCount - 1
List1.Refresh

v2$ = Mid$(TxtPath.Text, 1, InStrRev(TxtPath.Text, "\"))

err.Clear
On Local Error Resume Next
FS.Movefolder Drived2$ + "Temp\Anything\*", v2$
If err.Number > 0 Then Call HardMove
On Local Error GoTo 0

List1.AddItem "Stage 2 of 2 : Complete --------------"
List1.AddItem "--------------------------------------"
List1.ListIndex = List1.ListCount - 1
List1.Refresh

'Timer1.Enabled = True

Exit Sub
jeep:
errs2 = err.Number
errs3$ = err.Description
Resume Next

End Sub



Sub HardDel()

Drived2$ = Mid$(TxtPath.Text, 1, 3)
v1$ = Mid$(TxtPath.Text, InStrRev(TxtPath.Text, "\"))


List1.AddItem "Stage Opp : Del Original Dir"
List1.AddItem "------------------------------------------------"
List1.ListIndex = List1.ListCount - 1
List1.Refresh

For We = 1 To ListView1.ListItems.Count
    A1$ = ListView1.ListItems.Item(We).SubItems(1)
    B1$ = ListView1.ListItems.Item(We)

    'ets1 = Len("D:\# MY DOCS\# 01 My Documents\Favorites")
    ets1 = Len(TxtPath.Text)
    C1$ = Drived2$ + "My Music" + v1$ + "\" + Mid$(A1$, ets1 + 2)

    etd1 = 13
    ets2 = 1
    Do
        'jc1$ = Mid$(c1$, etd1 + ets2-1)
        ets2 = InStr(etd1 + ets2, C1$, "\")
        etd1 = 1
        If ets2 = 0 Then Exit Do

        D2$ = Mid$(C1$, 1, ets2 - 1)

        If InStr(F1$, D2$) = 0 Then
            err.Clear
            On Local Error Resume Next
            'MkDir d2$
            FS.deletefolder D2$, True
            If err.Number <> 75 And err.Number > 0 Then
                'MsgBox ("Error Making Temp Directory")
                '
            End If
            On Local Error GoTo 0
        End If
    Loop Until ets2 = 0

    F1$ = D2$

    errs2 = 0
    On Local Error Resume Next
'    fs.DeleteFile a1$ + b1$, True
    On Local Error GoTo 0

    'If errs2 <> 0 Then
    '    MsgBox ("Error Moving File to Temp")
    '    End
    'End If

    List1.AddItem Format$(We, "000 ") + "Move > " + A1$ + B1$
    List1.ListIndex = List1.ListCount - 1
    List1.Refresh

    'fs.DeleteFolder comrad$ + "\" + WFD$

Next

A = A
jeep:
End Sub


Sub HardMove()

Drived2$ = Mid$(TxtPath.Text, 1, 3)
v1$ = Mid$(TxtPath.Text, InStrRev(TxtPath.Text, "\"))


List1.AddItem "Stage Opp : Del Original Dir"
List1.AddItem "------------------------------------------------"
List1.ListIndex = List1.ListCount - 1
List1.Refresh

For We = 1 To ListView1.ListItems.Count
    A1$ = ListView1.ListItems.Item(We).SubItems(1)
    B1$ = ListView1.ListItems.Item(We)

    'ets1 = Len("D:\# MY DOCS\# 01 My Documents\Favorites")
    ets1 = Len(TxtPath.Text)
    C1$ = Drived2$ + "My Music" + v1$ + "\" + Mid$(A1$, ets1 + 2)
    c2$ = Drived2$ + "Temp\Anything" + v1$ + "\" + Mid$(A1$, ets1 + 2)

    etd1 = 13
    ets2 = 1
    Do
        'jc1$ = Mid$(c1$, etd1 + ets2-1)
        ets2 = InStr(etd1 + ets2, C1$, "\")
        etd1 = 1
        If ets2 = 0 Then Exit Do

        D2$ = Mid$(C1$, 1, ets2 - 1)

        If InStr(F1$, D2$) = 0 Then
            err.Clear
            On Local Error Resume Next
            MkDir D2$
   '         fs.deletefolder d2$, True
            If err.Number <> 75 And err.Number > 0 Then
                'MsgBox ("Error Making Temp Directory")
                'T
            End If
            On Local Error GoTo 0
        End If
    Loop Until ets2 = 0

    F1$ = D2$
    err.Clear
    errs2 = 0
    On Local Error Resume Next
    
    FS.MoveFile c2$ + B1$, A1$ + B1$
    'err.number
    'err.description
    On Local Error GoTo 0

    'If errs2 <> 0 Then
    '    MsgBox ("Error Moving File to Temp")
    '    End
    'End If

    List1.AddItem Format$(We, "000 ") + "Move > " + A1$ + B1$
    List1.ListIndex = List1.ListCount - 1
    List1.Refresh

    'fs.DeleteFolder comrad$ + "\" + WFD$

Next
    
    v1$ = Mid$(TxtPath.Text, 1, InStrRev(TxtPath.Text, "\") - 1)
    err.Clear
    On Local Error Resume Next
    
    FS.copyfolder Drived2$ + "Temp\Anything", v1$, True
    
    FS.deletefolder Drived2$ + "Temp\Anything", True


jeep:
End Sub

'***********************************************
'# Check, whether we are in the IDE
Function IsIDE() As Boolean
  Debug.Assert Not TestIDE(IsIDE)
End Function
Private Function TestIDE(Test As Boolean) As Boolean
  Test = True
End Function
'***********************************************


Private Sub txtPath_Click()
If TxtPath <> Clipboard.GetText Then TxtPath = Clipboard.GetText

If Mid(ScanPath.TxtPath, Len(ScanPath.TxtPath) - 1, 1) <> "\" Then ScanPath.TxtPath = ScanPath.TxtPath + "\"

TxtPath.SelStart = 0
TxtPath.SelLength = Len(TxtPath)



End Sub

Private Sub txtPath02_Change()
Call txtPath02_CLICK
End Sub

Private Sub txtPath02_CLICK()

DESTIPATH = txtPath02
If Mid(Clipboard.GetText, 2, 1) <> ":" Then Exit Sub
If InStr(txtPath02, Clipboard.GetText) > 0 Then Exit Sub
If txtPath02 <> Clipboard.GetText Then txtPath02 = Clipboard.GetText

If Mid(ScanPath.txtPath02, Len(ScanPath.txtPath02) - 1, 1) <> "\" Then ScanPath.txtPath02 = ScanPath.txtPath02 + "\"
txtPath02.SelStart = 0
txtPath02.SelLength = Len(txtPath02)
End Sub
