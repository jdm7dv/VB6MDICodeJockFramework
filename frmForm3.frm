VERSION 5.00
Object = "{E08BA07E-6463-4EAB-8437-99F08000BAD9}#1.9#0"; "FlexCell.ocx"
Object = "{F9043C88-F6F2-101A-A3C9-08002B2F49FB}#1.2#0"; "COMDLG32.OCX"
Begin VB.Form frmForm3 
   Caption         =   "Form3"
   ClientHeight    =   5145
   ClientLeft      =   120
   ClientTop       =   450
   ClientWidth     =   8400
   LinkTopic       =   "Form1"
   MDIChild        =   -1  'True
   ScaleHeight     =   5145
   ScaleWidth      =   8400
   Begin MSComDlg.CommonDialog CommonDialog1 
      Left            =   1560
      Top             =   120
      _ExtentX        =   847
      _ExtentY        =   847
      _Version        =   393216
   End
   Begin VB.CommandButton Command1 
      Caption         =   "Command1"
      Height          =   495
      Left            =   5040
      TabIndex        =   1
      Top             =   120
      Width           =   1335
   End
   Begin FlexCell.Grid Grid1 
      Height          =   3855
      Left            =   720
      TabIndex        =   0
      Top             =   720
      Width           =   6975
      _ExtentX        =   12303
      _ExtentY        =   6800
      Cols            =   5
      GridColor       =   12632256
      Rows            =   30
   End
End
Attribute VB_Name = "frmForm3"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
Option Explicit

Private Sub Command1_Click()
    CommonDialog1.ShowOpen
    gfFileOpen (CommonDialog1.FileName)
End Sub

Private Sub Form_Load()
    Set Me.Icon = frmSysMDI.imgListCommandBars.ListImages("SysPassword").Picture
    Me.Caption = gMDI.cBS.Actions(gID.TestWindowThird).Caption
End Sub