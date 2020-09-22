VERSION 5.00
Begin VB.Form frmMain 
   BorderStyle     =   1  'Fixed Single
   Caption         =   "Try it !!!"
   ClientHeight    =   555
   ClientLeft      =   45
   ClientTop       =   330
   ClientWidth     =   2640
   Icon            =   "Main.frx":0000
   LinkTopic       =   "Form1"
   MaxButton       =   0   'False
   MinButton       =   0   'False
   ScaleHeight     =   555
   ScaleWidth      =   2640
   StartUpPosition =   3  'Windows Default
   Begin VB.CommandButton cmdGetFile 
      Caption         =   "Retrieve File"
      Height          =   390
      Left            =   1350
      TabIndex        =   1
      Top             =   75
      Width           =   1140
   End
   Begin VB.CommandButton cmdPutFile 
      Caption         =   "Combine Files"
      Height          =   390
      Left            =   75
      TabIndex        =   0
      Top             =   75
      Width           =   1140
   End
End
Attribute VB_Name = "frmMain"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
Option Explicit

Private Sub cmdGetFile_Click()
GetFile App.PATH & "\COMBINED.EXE", 10752, App.PATH & "\EXTRACTED.TXT"
End Sub

Private Sub cmdPutFile_Click()
PutFile App.PATH & "\FILE_IN_FILE.EXE", App.PATH & "\TEST.TXT", App.PATH & "\COMBINED.EXE"
End Sub
