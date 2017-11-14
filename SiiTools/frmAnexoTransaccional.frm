VERSION 5.00
Object = "{C0A63B80-4B21-11D3-BD95-D426EF2C7949}#1.0#0"; "Vsflex7L.ocx"
Object = "{831FDD16-0C5C-11D2-A9FC-0000F8754DA1}#2.2#0"; "MSCOMCTL.OCX"
Object = "{86CF1D34-0C5F-11D2-A9FC-0000F8754DA1}#2.0#0"; "mscomct2.ocx"
Object = "{F9043C88-F6F2-101A-A3C9-08002B2F49FB}#1.2#0"; "COMDLG32.OCX"
Object = "{ED5A9B02-5BDB-48C7-BAB1-642DCC8C9E4D}#2.0#0"; "SelFold.ocx"
Begin VB.Form frmAnexoTransaccional 
   Caption         =   "dlg1"
   ClientHeight    =   7845
   ClientLeft      =   45
   ClientTop       =   345
   ClientWidth     =   9825
   KeyPreview      =   -1  'True
   LinkTopic       =   "Form1"
   MDIChild        =   -1  'True
   ScaleHeight     =   7845
   ScaleWidth      =   9825
   WindowState     =   2  'Maximized
   Begin VB.Frame frmfecha 
      Height          =   1755
      Left            =   60
      TabIndex        =   17
      Top             =   60
      Width           =   5595
      Begin VB.ComboBox cboTipo 
         Height          =   315
         ItemData        =   "frmAnexoTransaccional.frx":0000
         Left            =   840
         List            =   "frmAnexoTransaccional.frx":000A
         TabIndex        =   1
         Top             =   240
         Width           =   2235
      End
      Begin VB.TextBox txtCarpeta 
         Height          =   320
         Left            =   840
         TabIndex        =   3
         Text            =   "c:\"
         Top             =   840
         Width           =   4170
      End
      Begin VB.CommandButton cmdExaminarCarpeta 
         Caption         =   "..."
         Height          =   320
         Index           =   0
         Left            =   4980
         TabIndex        =   4
         Top             =   840
         Width           =   372
      End
      Begin SelFold.SelFolder slf 
         Left            =   4200
         Top             =   660
         _ExtentX        =   1349
         _ExtentY        =   265
         Title           =   "Seleccione una carpeta"
         Caption         =   "Selecci�n de carpeta"
         RootFolder      =   "\"
         Path            =   "C:\VBPROG_ESP\SII\SELFOLD"
      End
      Begin MSComCtl2.DTPicker dtpPeriodo 
         Height          =   315
         Left            =   840
         TabIndex        =   2
         Top             =   540
         Width           =   2235
         _ExtentX        =   3942
         _ExtentY        =   556
         _Version        =   393216
         BeginProperty Font {0BE35203-8F91-11CE-9DE3-00AA004BB851} 
            Name            =   "MS Sans Serif"
            Size            =   8.25
            Charset         =   0
            Weight          =   400
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         CustomFormat    =   "MMMM/yyyy"
         Format          =   112852995
         CurrentDate     =   37356
      End
      Begin VB.Label Label3 
         Caption         =   "Tipo:"
         Height          =   255
         Left            =   60
         TabIndex        =   20
         Top             =   240
         Width           =   570
      End
      Begin VB.Label Label2 
         Caption         =   "Mes:"
         Height          =   255
         Left            =   60
         TabIndex        =   19
         Top             =   600
         Width           =   570
      End
      Begin VB.Label Label1 
         Caption         =   "Ubicacion:"
         Height          =   255
         Left            =   60
         TabIndex        =   18
         Top             =   900
         Width           =   870
      End
   End
   Begin VB.Frame fraPasos 
      Height          =   2355
      Left            =   5700
      TabIndex        =   12
      Top             =   60
      Width           =   8235
      Begin VB.CheckBox chkConsFinal 
         Caption         =   "Cargar como Consumidor Final"
         Height          =   195
         Left            =   5340
         TabIndex        =   40
         Top             =   660
         Visible         =   0   'False
         Width           =   2595
      End
      Begin VB.CheckBox chkSoloError 
         Caption         =   "Solo con error"
         Height          =   195
         Left            =   5340
         TabIndex        =   39
         Top             =   300
         Width           =   1455
      End
      Begin VB.CommandButton cmdPasos 
         Caption         =   "Generar"
         Height          =   330
         Index           =   8
         Left            =   3660
         TabIndex        =   36
         Top             =   1680
         Width           =   735
      End
      Begin VB.CommandButton cmdPasos 
         Caption         =   "Abrir"
         Height          =   330
         Index           =   13
         Left            =   6900
         TabIndex        =   35
         TabStop         =   0   'False
         Top             =   900
         Visible         =   0   'False
         Width           =   735
      End
      Begin VB.CommandButton cmdPasos 
         Caption         =   "Abrir"
         Height          =   330
         Index           =   11
         Left            =   6900
         TabIndex        =   34
         TabStop         =   0   'False
         Top             =   540
         Visible         =   0   'False
         Width           =   735
      End
      Begin VB.CommandButton cmdPasos 
         Caption         =   "Guardar"
         Height          =   330
         Index           =   10
         Left            =   7620
         TabIndex        =   33
         TabStop         =   0   'False
         Top             =   180
         Visible         =   0   'False
         Width           =   735
      End
      Begin VB.CommandButton cmdPasos 
         Caption         =   "Abrir"
         Height          =   330
         Index           =   9
         Left            =   6900
         TabIndex        =   32
         TabStop         =   0   'False
         Top             =   180
         Visible         =   0   'False
         Width           =   735
      End
      Begin VB.CommandButton cmdPasos 
         Caption         =   "Guardar"
         Height          =   330
         Index           =   14
         Left            =   7620
         TabIndex        =   31
         TabStop         =   0   'False
         Top             =   900
         Visible         =   0   'False
         Width           =   735
      End
      Begin VB.CommandButton cmdPasos 
         Caption         =   "Guardar"
         Height          =   330
         Index           =   12
         Left            =   7620
         TabIndex        =   30
         TabStop         =   0   'False
         Top             =   540
         Visible         =   0   'False
         Width           =   735
      End
      Begin VB.CommandButton cmdPasos 
         Caption         =   "Generar"
         Height          =   330
         Index           =   5
         Left            =   3660
         TabIndex        =   29
         Top             =   960
         Width           =   735
      End
      Begin VB.CommandButton cmdPasos 
         Caption         =   "Generar"
         Height          =   330
         Index           =   7
         Left            =   3660
         TabIndex        =   28
         Top             =   1320
         Width           =   735
      End
      Begin VB.CommandButton cmdPasos 
         Caption         =   "Generar"
         Height          =   330
         Index           =   3
         Left            =   3660
         TabIndex        =   27
         Top             =   600
         Width           =   735
      End
      Begin VB.CommandButton cmdPasos 
         Caption         =   "Generar"
         Height          =   330
         Index           =   1
         Left            =   3660
         TabIndex        =   26
         Top             =   240
         Width           =   735
      End
      Begin VB.CommandButton cmdPasos 
         Caption         =   "Buscar"
         Height          =   330
         Index           =   4
         Left            =   2940
         TabIndex        =   8
         Top             =   960
         Width           =   675
      End
      Begin VB.CommandButton cmdPasos 
         Caption         =   "Buscar"
         Height          =   330
         Index           =   0
         Left            =   2940
         TabIndex        =   5
         Top             =   240
         Width           =   675
      End
      Begin VB.CommandButton cmdPasos 
         Caption         =   "Buscar"
         Height          =   330
         Index           =   2
         Left            =   2940
         TabIndex        =   6
         Top             =   600
         Width           =   675
      End
      Begin VB.CommandButton cmdPasos 
         Caption         =   "Buscar"
         Height          =   330
         Index           =   6
         Left            =   2940
         TabIndex        =   7
         Top             =   1320
         Width           =   675
      End
      Begin MSComDlg.CommonDialog dlg1 
         Left            =   3120
         Top             =   1860
         _ExtentX        =   688
         _ExtentY        =   688
         _Version        =   393216
         CancelError     =   -1  'True
      End
      Begin VB.Label lblPasos 
         BackColor       =   &H00C0FFFF&
         BorderStyle     =   1  'Fixed Single
         Caption         =   "5. Generar Archivo ATS"
         Height          =   330
         Index           =   4
         Left            =   120
         TabIndex        =   38
         Top             =   1680
         Width           =   2805
      End
      Begin VB.Label lblPasos 
         BackColor       =   &H00C0FFFF&
         BorderStyle     =   1  'Fixed Single
         Height          =   330
         Index           =   13
         Left            =   4440
         TabIndex        =   37
         Top             =   1680
         Width           =   825
      End
      Begin VB.Label lblPasos 
         BackColor       =   &H00C0FFFF&
         BorderStyle     =   1  'Fixed Single
         Height          =   330
         Index           =   9
         Left            =   4440
         TabIndex        =   25
         Top             =   960
         Width           =   825
      End
      Begin VB.Label lblPasos 
         BackColor       =   &H00C0FFFF&
         BorderStyle     =   1  'Fixed Single
         Height          =   330
         Index           =   11
         Left            =   4440
         TabIndex        =   24
         Top             =   1320
         Width           =   825
      End
      Begin VB.Label lblPasos 
         BackColor       =   &H00C0FFFF&
         BorderStyle     =   1  'Fixed Single
         Height          =   330
         Index           =   7
         Left            =   4440
         TabIndex        =   23
         Top             =   600
         Width           =   825
      End
      Begin VB.Label lblPasos 
         BackColor       =   &H00C0FFFF&
         BorderStyle     =   1  'Fixed Single
         Height          =   330
         Index           =   5
         Left            =   4440
         TabIndex        =   22
         Top             =   240
         Width           =   825
      End
      Begin VB.Label lblPasos 
         BackColor       =   &H00C0FFFF&
         BorderStyle     =   1  'Fixed Single
         Caption         =   "3. Pasar Exportaciones"
         Height          =   330
         Index           =   2
         Left            =   120
         TabIndex        =   16
         Top             =   960
         Width           =   2805
      End
      Begin VB.Label lblPasos 
         BackColor       =   &H00C0FFFF&
         BorderStyle     =   1  'Fixed Single
         Caption         =   "1. Pasar Compras"
         Height          =   330
         Index           =   0
         Left            =   120
         TabIndex        =   15
         Top             =   240
         Width           =   2800
      End
      Begin VB.Label lblPasos 
         BackColor       =   &H00C0FFFF&
         BorderStyle     =   1  'Fixed Single
         Caption         =   "2. Pasar Ventas"
         Height          =   330
         Index           =   1
         Left            =   120
         TabIndex        =   14
         Top             =   600
         Width           =   2800
      End
      Begin VB.Label lblPasos 
         BackColor       =   &H00C0FFFF&
         BorderStyle     =   1  'Fixed Single
         Caption         =   "4. Pasar Comprobantes Anulados"
         Height          =   330
         Index           =   3
         Left            =   120
         TabIndex        =   13
         Top             =   1320
         Width           =   2805
      End
   End
   Begin VB.PictureBox picBoton 
      Align           =   2  'Align Bottom
      BorderStyle     =   0  'None
      Height          =   480
      Left            =   0
      ScaleHeight     =   480
      ScaleWidth      =   9825
      TabIndex        =   0
      TabStop         =   0   'False
      Top             =   7365
      Width           =   9825
      Begin VB.CommandButton cmdCancelar 
         Caption         =   "Cancelar"
         Enabled         =   0   'False
         Height          =   288
         Left            =   10020
         TabIndex        =   10
         Top             =   60
         Width           =   1212
      End
      Begin MSComctlLib.ProgressBar prg 
         Height          =   255
         Left            =   180
         TabIndex        =   11
         Top             =   120
         Width           =   9615
         _ExtentX        =   16960
         _ExtentY        =   450
         _Version        =   393216
         Appearance      =   1
      End
   End
   Begin VSFlex7LCtl.VSFlexGrid grd 
      Height          =   3870
      Left            =   -300
      TabIndex        =   9
      Top             =   5460
      Width           =   15015
      _cx             =   26485
      _cy             =   6826
      _ConvInfo       =   1
      Appearance      =   1
      BorderStyle     =   1
      Enabled         =   -1  'True
      BeginProperty Font {0BE35203-8F91-11CE-9DE3-00AA004BB851} 
         Name            =   "MS Sans Serif"
         Size            =   8.25
         Charset         =   0
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      MousePointer    =   0
      BackColor       =   -2147483643
      ForeColor       =   -2147483640
      BackColorFixed  =   -2147483633
      ForeColorFixed  =   -2147483630
      BackColorSel    =   -2147483635
      ForeColorSel    =   -2147483634
      BackColorBkg    =   -2147483636
      BackColorAlternate=   -2147483643
      GridColor       =   -2147483633
      GridColorFixed  =   -2147483632
      TreeColor       =   -2147483632
      FloodColor      =   192
      SheetBorder     =   -2147483642
      FocusRect       =   3
      HighLight       =   0
      AllowSelection  =   0   'False
      AllowBigSelection=   0   'False
      AllowUserResizing=   1
      SelectionMode   =   0
      GridLines       =   1
      GridLinesFixed  =   2
      GridLineWidth   =   1
      Rows            =   1
      Cols            =   3
      FixedRows       =   1
      FixedCols       =   1
      RowHeightMin    =   0
      RowHeightMax    =   0
      ColWidthMin     =   0
      ColWidthMax     =   0
      ExtendLastCol   =   0   'False
      FormatString    =   $"frmAnexoTransaccional.frx":0029
      ScrollTrack     =   -1  'True
      ScrollBars      =   3
      ScrollTips      =   -1  'True
      MergeCells      =   0
      MergeCompare    =   0
      AutoResize      =   -1  'True
      AutoSizeMode    =   0
      AutoSearch      =   0
      AutoSearchDelay =   2
      MultiTotals     =   -1  'True
      SubtotalPosition=   0
      OutlineBar      =   0
      OutlineCol      =   0
      Ellipsis        =   0
      ExplorerBar     =   5
      PicturesOver    =   0   'False
      FillStyle       =   0
      RightToLeft     =   0   'False
      PictureType     =   0
      TabBehavior     =   0
      OwnerDraw       =   0
      Editable        =   0
      ShowComboButton =   -1  'True
      WordWrap        =   0   'False
      TextStyle       =   0
      TextStyleFixed  =   0
      OleDragMode     =   0
      OleDropMode     =   0
      ComboSearch     =   3
      AutoSizeMouse   =   -1  'True
      FrozenRows      =   0
      FrozenCols      =   0
      AllowUserFreezing=   0
      BackColorFrozen =   0
      ForeColorFrozen =   0
      WallPaperAlignment=   9
   End
   Begin VSFlex7LCtl.VSFlexGrid grdRet 
      Height          =   3870
      Left            =   -180
      TabIndex        =   21
      TabStop         =   0   'False
      Top             =   2460
      Width           =   15015
      _cx             =   26485
      _cy             =   6826
      _ConvInfo       =   1
      Appearance      =   1
      BorderStyle     =   1
      Enabled         =   -1  'True
      BeginProperty Font {0BE35203-8F91-11CE-9DE3-00AA004BB851} 
         Name            =   "MS Sans Serif"
         Size            =   8.25
         Charset         =   0
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      MousePointer    =   0
      BackColor       =   -2147483643
      ForeColor       =   -2147483640
      BackColorFixed  =   -2147483633
      ForeColorFixed  =   -2147483630
      BackColorSel    =   -2147483635
      ForeColorSel    =   -2147483634
      BackColorBkg    =   -2147483636
      BackColorAlternate=   -2147483643
      GridColor       =   -2147483633
      GridColorFixed  =   -2147483632
      TreeColor       =   -2147483632
      FloodColor      =   192
      SheetBorder     =   -2147483642
      FocusRect       =   3
      HighLight       =   0
      AllowSelection  =   0   'False
      AllowBigSelection=   0   'False
      AllowUserResizing=   1
      SelectionMode   =   0
      GridLines       =   1
      GridLinesFixed  =   2
      GridLineWidth   =   1
      Rows            =   1
      Cols            =   3
      FixedRows       =   1
      FixedCols       =   1
      RowHeightMin    =   0
      RowHeightMax    =   0
      ColWidthMin     =   0
      ColWidthMax     =   0
      ExtendLastCol   =   0   'False
      FormatString    =   $"frmAnexoTransaccional.frx":008C
      ScrollTrack     =   -1  'True
      ScrollBars      =   3
      ScrollTips      =   -1  'True
      MergeCells      =   0
      MergeCompare    =   0
      AutoResize      =   -1  'True
      AutoSizeMode    =   0
      AutoSearch      =   0
      AutoSearchDelay =   2
      MultiTotals     =   -1  'True
      SubtotalPosition=   0
      OutlineBar      =   0
      OutlineCol      =   0
      Ellipsis        =   0
      ExplorerBar     =   5
      PicturesOver    =   0   'False
      FillStyle       =   0
      RightToLeft     =   0   'False
      PictureType     =   0
      TabBehavior     =   0
      OwnerDraw       =   0
      Editable        =   0
      ShowComboButton =   -1  'True
      WordWrap        =   0   'False
      TextStyle       =   0
      TextStyleFixed  =   0
      OleDragMode     =   0
      OleDropMode     =   0
      ComboSearch     =   3
      AutoSizeMouse   =   -1  'True
      FrozenRows      =   0
      FrozenCols      =   0
      AllowUserFreezing=   0
      BackColorFrozen =   0
      ForeColorFrozen =   0
      WallPaperAlignment=   9
   End
   Begin VSFlex7LCtl.VSFlexGrid grdCF 
      Height          =   6810
      Left            =   15120
      TabIndex        =   41
      TabStop         =   0   'False
      Top             =   120
      Visible         =   0   'False
      Width           =   3435
      _cx             =   6059
      _cy             =   12012
      _ConvInfo       =   1
      Appearance      =   1
      BorderStyle     =   1
      Enabled         =   -1  'True
      BeginProperty Font {0BE35203-8F91-11CE-9DE3-00AA004BB851} 
         Name            =   "MS Sans Serif"
         Size            =   8.25
         Charset         =   0
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      MousePointer    =   0
      BackColor       =   -2147483643
      ForeColor       =   -2147483640
      BackColorFixed  =   -2147483633
      ForeColorFixed  =   -2147483630
      BackColorSel    =   -2147483635
      ForeColorSel    =   -2147483634
      BackColorBkg    =   -2147483636
      BackColorAlternate=   -2147483643
      GridColor       =   -2147483633
      GridColorFixed  =   -2147483632
      TreeColor       =   -2147483632
      FloodColor      =   192
      SheetBorder     =   -2147483642
      FocusRect       =   3
      HighLight       =   0
      AllowSelection  =   0   'False
      AllowBigSelection=   0   'False
      AllowUserResizing=   1
      SelectionMode   =   0
      GridLines       =   1
      GridLinesFixed  =   2
      GridLineWidth   =   1
      Rows            =   1
      Cols            =   3
      FixedRows       =   1
      FixedCols       =   1
      RowHeightMin    =   0
      RowHeightMax    =   0
      ColWidthMin     =   0
      ColWidthMax     =   0
      ExtendLastCol   =   0   'False
      FormatString    =   $"frmAnexoTransaccional.frx":00EF
      ScrollTrack     =   -1  'True
      ScrollBars      =   3
      ScrollTips      =   -1  'True
      MergeCells      =   0
      MergeCompare    =   0
      AutoResize      =   -1  'True
      AutoSizeMode    =   0
      AutoSearch      =   0
      AutoSearchDelay =   2
      MultiTotals     =   -1  'True
      SubtotalPosition=   0
      OutlineBar      =   0
      OutlineCol      =   0
      Ellipsis        =   0
      ExplorerBar     =   5
      PicturesOver    =   0   'False
      FillStyle       =   0
      RightToLeft     =   0   'False
      PictureType     =   0
      TabBehavior     =   0
      OwnerDraw       =   0
      Editable        =   0
      ShowComboButton =   -1  'True
      WordWrap        =   0   'False
      TextStyle       =   0
      TextStyleFixed  =   0
      OleDragMode     =   0
      OleDropMode     =   0
      ComboSearch     =   3
      AutoSizeMouse   =   -1  'True
      FrozenRows      =   0
      FrozenCols      =   0
      AllowUserFreezing=   0
      BackColorFrozen =   0
      ForeColorFrozen =   0
      WallPaperAlignment=   9
   End
   Begin VSFlex7LCtl.VSFlexGrid GrdRetVentas 
      Height          =   3870
      Left            =   8520
      TabIndex        =   42
      TabStop         =   0   'False
      Top             =   1980
      Width           =   6555
      _cx             =   11562
      _cy             =   6826
      _ConvInfo       =   1
      Appearance      =   1
      BorderStyle     =   1
      Enabled         =   -1  'True
      BeginProperty Font {0BE35203-8F91-11CE-9DE3-00AA004BB851} 
         Name            =   "MS Sans Serif"
         Size            =   8.25
         Charset         =   0
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      MousePointer    =   0
      BackColor       =   -2147483643
      ForeColor       =   -2147483640
      BackColorFixed  =   -2147483633
      ForeColorFixed  =   -2147483630
      BackColorSel    =   -2147483635
      ForeColorSel    =   -2147483634
      BackColorBkg    =   -2147483636
      BackColorAlternate=   -2147483643
      GridColor       =   -2147483633
      GridColorFixed  =   -2147483632
      TreeColor       =   -2147483632
      FloodColor      =   192
      SheetBorder     =   -2147483642
      FocusRect       =   3
      HighLight       =   0
      AllowSelection  =   0   'False
      AllowBigSelection=   0   'False
      AllowUserResizing=   1
      SelectionMode   =   0
      GridLines       =   1
      GridLinesFixed  =   2
      GridLineWidth   =   1
      Rows            =   1
      Cols            =   3
      FixedRows       =   1
      FixedCols       =   1
      RowHeightMin    =   0
      RowHeightMax    =   0
      ColWidthMin     =   0
      ColWidthMax     =   0
      ExtendLastCol   =   0   'False
      FormatString    =   $"frmAnexoTransaccional.frx":0152
      ScrollTrack     =   -1  'True
      ScrollBars      =   3
      ScrollTips      =   -1  'True
      MergeCells      =   0
      MergeCompare    =   0
      AutoResize      =   -1  'True
      AutoSizeMode    =   0
      AutoSearch      =   0
      AutoSearchDelay =   2
      MultiTotals     =   -1  'True
      SubtotalPosition=   0
      OutlineBar      =   0
      OutlineCol      =   0
      Ellipsis        =   0
      ExplorerBar     =   5
      PicturesOver    =   0   'False
      FillStyle       =   0
      RightToLeft     =   0   'False
      PictureType     =   0
      TabBehavior     =   0
      OwnerDraw       =   0
      Editable        =   0
      ShowComboButton =   -1  'True
      WordWrap        =   0   'False
      TextStyle       =   0
      TextStyleFixed  =   0
      OleDragMode     =   0
      OleDropMode     =   0
      ComboSearch     =   3
      AutoSizeMouse   =   -1  'True
      FrozenRows      =   0
      FrozenCols      =   0
      AllowUserFreezing=   0
      BackColorFrozen =   0
      ForeColorFrozen =   0
      WallPaperAlignment=   9
   End
End
Attribute VB_Name = "frmAnexoTransaccional"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
Option Explicit


Private mbooProcesando As Boolean
Private mbooCancelado As Boolean
Private mEmpOrigen As Empresa
Private Const MSG_OK As String = "OK"
Private mObjCond As RepCondicion
Private mobjBusq As Busqueda

Private WithEvents mGrupo As grupo
Attribute mGrupo.VB_VarHelpID = -1
Const COL_C_TRANSID = 1
Const COL_C_FECHATRANS = 2
Const COL_C_FECHAREGISTRO = 3
Const COL_C_TRANS = 4
Const COL_C_NUMTRANS = 5
Const COL_C_TIPODOC = 6
Const COL_C_RUC = 7
Const COL_C_NOMBRE = 8
Const COL_C_NUMSERESTA = 9
Const COL_C_NUMSERPUNTO = 10
Const COL_C_NUMSECUENCIAL = 11
Const COL_C_NUMAUTOSRI = 12
Const COL_C_FECHACADUCIDAD = 13
Const COL_C_CODSUSTENTO = 14
Const COL_C_CODTIPOCOMP = 15
Const COL_C_BASE0 = 16
Const COL_C_BASE12 = 17
Const COL_C_BASENO12 = 18
Const COL_C_MONTOIVA = 19
Const COL_C_CODICE = 20
Const COL_C_MONTOICE = 21
Const COL_C_RESP = 22

Const COL_R_TIPO = 1
Const COL_R_CODIGORET = 2
Const COL_R_CODIGOSRI = 3
Const COL_R_PORCEN = 4
Const COL_R_TRANS = 5
Const COL_R_NUMTRANS = 6
Const COL_R_RUC = 7
Const COL_R_RETTRANS = 8
Const COL_R_RETNUMTRANS = 9
Const COL_R_FECHARET = 10
Const COL_R_NUMEST = 11
Const COL_R_NUMPTO = 12
Const COL_R_NUMRET = 13
Const COL_R_NUMAUTO = 14
Const COL_R_BASE = 15
Const COL_R_VALOR = 16

Const COL_V_FECHA = 1
Const COL_V_TIPODOC = 2
Const COL_V_IDPROVCLI = 3
Const COL_V_RUC = 4
Const COL_V_CLIENTE = 5
Const COL_V_TIPOCOMP = 6
Const COL_V_CANTRANS = 7
Const COL_V_BASE0 = 8
Const COL_V_BASEIVA = 9
Const COL_V_BASENOIVA = 10
Const COL_V_RESP = 11

Const COL_RF_TIPO = 1
Const COL_RF_RUC = 2
Const COL_RF_BASE = 3
Const COL_RF_VALOR = 4


Const COL_A_FECHA = 1
Const COL_A_TCODTRAN = 2
Const COL_A_TIPODOC = 3
Const COL_A_NUMESTA = 4
Const COL_A_NUMPUNTO = 5
Const COL_A_NUMSECUE = 6
Const COL_A_NUMAUTO = 7
Const COL_A_FECHAANULA = 8
Const COL_A_RESP = 9



Private Cadena As String
Private cadEncabezado As String
Private cadCompras As String
Private cadVentas As String
Private cadAnulados As String
Private NumFile As Integer
Private NumProc As Integer

Public Sub Inicio(ByVal tag As String)
    On Error GoTo ErrTrap
    Set mObjCond = New RepCondicion
    Select Case tag
        Case "FAT"
            Me.Caption = "Anexo Transaccional"
    End Select
    dtpPeriodo.value = CDate("01/" & IIf(Month(Date) - 1 <> 0, Month(Date) - 1, 12) & "/" & Year(Date))
    cboTipo.ListIndex = 0
    If Len(gobjMain.EmpresaActual.GNOpcion.ObtenerValor("RutaATS-REOC")) > 0 Then
        txtCarpeta.Text = gobjMain.EmpresaActual.GNOpcion.ObtenerValor("RutaATS-REOC")
    End If
    Me.tag = tag
    Me.Show
    Exit Sub
ErrTrap:
    DispErr
    Unload Me
    Exit Sub
End Sub

Private Sub cboTipo_Click()
    If cboTipo.ListIndex = 1 Then
        lblPasos(1).Caption = ""
        lblPasos(2).Caption = ""
        lblPasos(3).Caption = ""
        lblPasos(4).Caption = "2. Generar Archivo REOC"
        cmdPasos(2).Enabled = False
        cmdPasos(3).Enabled = False
        cmdPasos(4).Enabled = False
        cmdPasos(5).Enabled = False
        cmdPasos(6).Enabled = False
        cmdPasos(7).Enabled = False
    Else
        lblPasos(1).Caption = "2. Pasar Ventas"
        lblPasos(2).Caption = "3. Pasar Exportaciones"
        lblPasos(3).Caption = "4. Pasar Comprobantes Anulados"
        lblPasos(4).Caption = "5. Generar Archivo ATS "
        cmdPasos(2).Enabled = True
        cmdPasos(3).Enabled = True
        cmdPasos(4).Enabled = True
        cmdPasos(5).Enabled = True
        cmdPasos(6).Enabled = True
        cmdPasos(7).Enabled = True
    
    End If
End Sub

Private Sub Check1_Click()

End Sub

Private Sub chkSoloError_Click()
Dim i As Integer
    For i = 1 To grd.Rows - 1
        If grd.TextMatrix(i, grd.ColIndex("Resultado")) = " OK " Then
            If chkSoloError.value = vbChecked Then
                grd.RowHidden(i) = True
            Else
                grd.RowHidden(i) = False
            End If
        End If
    Next i
End Sub

Private Sub cmdCancelar_Click()
    mbooCancelado = True
End Sub


Private Sub cmdPasos_Click(Index As Integer)
    Dim r As Boolean, cad As String, nombre As String, file As String
    NumProc = Index + 1
    Select Case Index + 1
    Case 1      '1. Busca Compras
        BuscarComprasATS
    Case 2      '1. Genera Compras
        lblPasos(5).Caption = ""
        If cboTipo.ListIndex = 0 Then
            r = GenerarComprasATS(cadCompras)
        Else
            r = GenerarComprasREOC(cadCompras)
        End If
    Case 3      '2. Busca Ventas
            BuscarVentasATS
    Case 4      '2. Generar ventas
        lblPasos(7).Caption = ""
        If cboTipo.ListIndex = 0 Then
            r = GenerarVentasATS(cadVentas)
        
        End If
    Case 5      '3. Busca Exportaciones
'            BuscarExportacionesATS
    Case 6      '3. Generar ventas
        lblPasos(7).Caption = ""
        If cboTipo.ListIndex = 0 Then
'            r = GenerarExportaciopnesATS(cadCompras)
        End If
    
    Case 7      '3. Busca Anulados
            BuscarANuladosATS
    Case 8      '7. Generar Anulados
        lblPasos(9).Caption = ""
        r = GenerarANuladosATS(cadAnulados)
    
    Case 9      '8. Generar Archivo
        If cboTipo.ListIndex = 0 Then
            nombre = "AT" & Format(CStr(Month(dtpPeriodo.value)), "00") & Year(dtpPeriodo.value) & ".XML"
            file = txtCarpeta.Text & nombre
            If ExisteArchivo(file) Then
                If MsgBox("El nombre del archivo " & nombre & " ya existe desea sobreescribirlo?", vbYesNo) = vbNo Then
                    Exit Sub
                End If
            End If
            NumFile = FreeFile
            Open file For Output Access Write As #NumFile
            cadEncabezado = GeneraArchivoEncabezadoATSXML
               
            Cadena = cadEncabezado & cadCompras & cadVentas & cadAnulados & "</iva>"
            Print #NumFile, Cadena
            Close NumFile
            
            gobjMain.EmpresaActual.GNOpcion.AsignarValor "RutaATS-REOC", txtCarpeta.Text
            gobjMain.EmpresaActual.GNOpcion.Grabar
            
            r = True
            
            
        Else
            nombre = "REOC" & Format(CStr(Month(dtpPeriodo.value)), "00") & Year(dtpPeriodo.value) & ".XML"
            file = txtCarpeta.Text & nombre
            If ExisteArchivo(file) Then
                If MsgBox("El nombre del archivo " & nombre & " ya existe desea sobreescribirlo?", vbYesNo) = vbNo Then
                    Exit Sub
                End If
            End If
            NumFile = FreeFile
            Open file For Output Access Write As #NumFile
        
            cadEncabezado = GeneraArchivoEncabezadoREOCXML
               
            Cadena = cadEncabezado & cadCompras & "</reoc>"
            Print #NumFile, Cadena
            Close NumFile
            r = True
        End If
        lblPasos(13).Caption = "OK."
'''    Case 10
'''        Exportar "IMPCPI"
'''    Case 12
'''        AbrirArchivo "IMPCPI"
    
    End Select
   
    
    If r Then
        If Index < cmdPasos.Count - 1 Then
            If cboTipo.ListIndex = 0 Then
            If Index <> 8 Then
                If lblPasos(Index + 4).Caption <> "Error" Then
                    If Index <> 9 Then cmdPasos(Index + 1).SetFocus
                End If
            Else
                lblPasos(Index + 5).BackColor = vbBlue
                lblPasos(Index + 5).ForeColor = vbYellow
            
            End If
            Else
                If cmdPasos(8).Enabled Then
                    cmdPasos(8).SetFocus
                Else
'                    cmdPasos(9).SetFocus
                End If
            End If
        End If
        If Index <> 8 Then
            If lblPasos(Index + 4).Caption <> "Error" Then
                lblPasos(Index + 4).BackColor = vbBlue
                lblPasos(Index + 4).ForeColor = vbYellow
            End If
        Else
            lblPasos(Index + 5).BackColor = vbBlue
            lblPasos(Index + 5).ForeColor = vbYellow
        End If
        If Index <> 8 Then
            If lblPasos(Index + 4).Caption <> "Error" Then
                cmdPasos(Index - 1).Enabled = False
                cmdPasos(Index).Enabled = False
            End If
        End If
    End If

End Sub

Private Sub dtpPeriodo_Change()
 Dim i As Integer
    For i = 0 To 10
        cmdPasos(i).Enabled = True
    Next i
    
    For i = 5 To 13 Step 2
        lblPasos(i).BackColor = &HC0FFFF
        lblPasos(i).Caption = ""
    Next i
End Sub

Private Sub Form_Initialize()
'    Set mobjBusq = New Busqueda
End Sub

Private Sub Form_KeyDown(KeyCode As Integer, Shift As Integer)
    Select Case KeyCode
    Case vbKeyEscape
        Unload Me
    Case Else
        MoverCampo Me, KeyCode, Shift, True
    End Select
End Sub

Private Sub Form_KeyPress(KeyAscii As Integer)
    ImpideSonidoEnter Me, KeyAscii
End Sub

Private Sub Form_Load()
    'Guarda referencia a la empresa de origen
    Set mEmpOrigen = gobjMain.EmpresaActual

    'Fecha de corte asignamos predeterminadamente FechaFinal
    
End Sub

Private Sub Form_QueryUnload(Cancel As Integer, UnloadMode As Integer)
    Cancel = mbooProcesando
End Sub

Private Sub Form_Resize()
    On Error Resume Next
    If Me.WindowState = 1 Then Exit Sub
    grd.Move 0, fraPasos.Height + 100, Me.ScaleWidth - 4000, (Me.ScaleHeight - (fraPasos.Height + picBoton.Height) - 105) * 0.75
    grd.Move 0, fraPasos.Height + 100, Me.ScaleWidth, (Me.ScaleHeight - (fraPasos.Height + picBoton.Height) - 105) * 0.75
    GrdRetVentas.Visible = False
    grdRet.Move 0, grd.Top + grd.Height + 100, Me.ScaleWidth, (Me.ScaleHeight - (fraPasos.Height + picBoton.Height) - 200) * 0.25
    GrdRetVentas.Move grd.Left + grd.Width, fraPasos.Height + 100, Me.ScaleWidth / 2, (Me.ScaleHeight - (fraPasos.Height + picBoton.Height) - 105) * 0.75
    grdCF.Height = 4000
End Sub

Private Sub Form_Unload(Cancel As Integer)
    On Error GoTo ErrTrap
    
    MensajeStatus

    'Cierra y abre de nuevo para que quede como EmpresaActual
    mEmpOrigen.Cerrar
    mEmpOrigen.Abrir
    
    'Libera la referencia
    Set mEmpOrigen = Nothing
    Exit Sub
ErrTrap:
    Set mEmpOrigen = Nothing
    DispErr
    Exit Sub
End Sub


Public Sub MiGetRowsRep(ByVal rs As Recordset, grd As VSFlexGrid)
    grd.LoadArray MiGetRows(rs)
End Sub

Private Sub BuscarComprasATS()
    
    On Error GoTo ErrTrap
        With grd
        .Redraw = False
        .Rows = .FixedRows
        If Not frmB_Trans.Inicio(gobjMain, "IMPCPI", dtpPeriodo.value) Then
            grd.SetFocus
        End If
        mObjCond.fecha1 = gobjMain.objCondicion.fecha1
        mObjCond.fecha2 = gobjMain.objCondicion.fecha2
        MiGetRowsRep gobjMain.EmpresaActual.ConsANCompras2008ParaXML(), grd
        
        'GeneraArchivo
        
        ConfigCols "IMPCPI"
        ConfigCols "IMPCPIR"
        AjustarAutoSize grd, -1, -1
        AjustarAutoSize grdRet, -1, -1
        grd.ColWidth(0) = "500"
        grd.ColWidth(COL_C_NOMBRE) = "1500"
        grdRet.ColFormat(COL_R_BASE) = "#,#0.00"
        grdRet.ColFormat(COL_R_VALOR) = "#,#0.00"
        
        SubTotalizar (COL_C_CODTIPOCOMP)
        Totalizar
        GNPoneNumFila grd, False
        GNPoneNumFila grdRet, False
        
        .Redraw = True
    End With
    Exit Sub
ErrTrap:
    grd.Redraw = True
    DispErr
    Exit Sub
End Sub



Private Function GenerarComprasATS(ByRef cad As String) As Boolean
    
    On Error GoTo ErrTrap
        GenerarComprasATS = False
        GenerarComprasATS = GeneraArchivoATSComprasXML(cad)
    Exit Function
ErrTrap:
    grd.Redraw = True
    DispErr
    Exit Function
End Function

Private Sub ConfigCols(cad As String)
    Dim s As String, i As Integer
    Select Case cad
    Case "IMPCPI"           'Compras
        s = "^#|TransId|^Fecha|^FechaReg|<CodTrans|<Num|^Doc.|<RUC|<Proveedor|^Estab|^Punto|^Secuencial|^AutSRI|^Caducidad|^Sustento|^TipoComp|>Base Cero|>Base IVA|>Base NO IVA|<Cod ICE|>Val ICE|^BANDREToTRO"
        '|>Base Ser|<Cod Ser|>Val Ser|>Base Bien|<Cod Bien|>Val Bien|>Base IR|<Cod IR|>Val IR|<NumDocRef|^NumSerieEstabRet|^NumSeriePuntoRet|^NumSecuencialRet|^NumAutSRIRet|^FechaEmisionRet|>Base ICE|<Cod ICE|>Val ICE"
        grd.FormatString = s & "|<         Resultado           "
        AsignarTituloAColKey grd
    
    Case "IMPCPIR"           ' Retencion Compras
        s = "^#|Tipo Ret|<Codigo|<Codigo SRI|>Porcen|<CodTrans|<NumTrans|<RUC|<CodTrans Ret|<NumTrans Ret|^FechaEmisionRet|^NumSerieEstabRet|^NumSeriePuntoRet|^NumSecuencialRet|^NumAutSRIRet|>Base Ret|>Valor Ret"
        grdRet.FormatString = s
        AsignarTituloAColKey grdRet
    Case "IMPFC"

        s = "^#|<Fecha|^Doc|<IdProvcli|<RUC|<Cliente|^Tipo Comp|^Cant Trans |>Base 0|>Base IVA|>Base NO IVA "
        grd.FormatString = s & "|<         Resultado           "
        AsignarTituloAColKey grd
    
        grdCF.FormatString = s & "|<         Resultado           "
        AsignarTituloAColKey grdCF
        
        s = "^#|<Fecha|^Doc|<IdProvcli|<RUC|<Cliente|^Tipo Comp|^Cant Trans |>Base 0|>Base IVA|>Base NO IVA "
        GrdRetVentas.FormatString = s & "|<         Resultado           "
        
    
    Case "IMPFCIR"           ' Retencion Ventas
        s = "^#|Tipo Ret|<RUC|>Base Ret|>Valor Ret"
        grdRet.FormatString = s
        AsignarTituloAColKey grdRet
    
    Case "IMPCA"
        s = "^#|<Fecha|<Tipo Comp|^Doc|^Num Serie Estab|^Num Serie Punto|>Num Secuencial|>Num Aut SRI|^Fecha Anulacion "       ' jeaa 27/03/2006
        grd.FormatString = s & "|<         Resultado           "
        AsignarTituloAColKey grd
    
    End Select
   
    
    Select Case cad
    Case "IMPCPI"
            For i = 1 To COL_C_MONTOIVA
                grd.ColHidden(i) = False
'                If i = COL_C_RUC Then i = i + 1
'                grd.ColFormat(i) = flexDTString
            Next i
'            grd.ColFormat(COL_C_RUC) =
            grd.ColHidden(COL_C_TRANSID) = True
'            grd.ColHidden(COL_C_NOMBRE) = True
            
           
           grd.ColFormat(COL_C_NUMSERESTA) = "000"
           grd.ColFormat(COL_C_NUMSERPUNTO) = "000"
           grd.ColFormat(COL_C_NUMSECUENCIAL) = "000000000"
'           grd.ColFormat(COL_C_NUMAUTOSRI) = "0000000000"
           grd.ColFormat(COL_C_CODSUSTENTO) = "00"
           
            grd.ColFormat(grd.ColIndex("Base Cero")) = "#,#0.00"
            grd.ColFormat(grd.ColIndex("Base IVA")) = "#,#0.00"
            grd.ColFormat(grd.ColIndex("Base NO IVA")) = "#,#0.00"
            grd.ColFormat(COL_C_MONTOICE) = "#,#0.00"
            grd.ColDataType(grd.ColIndex("BANDREToTRO")) = flexDTString
            grd.ColFormat(grd.ColIndex("BANDREToTRO")) = "0"
            

            grd.ColData(COL_C_CODTIPOCOMP) = "SubTotal"
            grd.ColData(COL_C_BASE0) = "SubTotal"
            grd.ColData(COL_C_BASE12) = "SubTotal"
            grd.ColData(COL_C_BASENO12) = "SubTotal"
            grd.ColData(COL_C_MONTOICE - 1) = "SubTotal"
            
            


    Case "IMPCPIR"
            grdRet.ColHidden(COL_R_TRANS) = True
            grdRet.ColHidden(COL_R_NUMTRANS) = True
            grdRet.ColHidden(COL_R_RUC) = True
    Case "IMPFC"
            
            For i = 1 To COL_V_BASENOIVA
                grd.ColHidden(i) = False
'                If i <> COL_V_CLIENTE Then
'                    grd.ColFormat(i) = flexDTString
'                End If
            Next i
            grd.ColHidden(COL_V_IDPROVCLI) = True
            grd.ColFormat(COL_V_BASE0) = "##0.00"
            grd.ColFormat(COL_V_BASEIVA) = "##0.00"
            grd.ColFormat(COL_V_BASENOIVA) = "##0.00"
    
'            grd.ColData(COL_V_CANTRANS) = "SubTotal"
            grd.ColData(COL_V_BASE0) = "SubTotal"
            grd.ColData(COL_V_BASEIVA) = "SubTotal"
            grd.ColData(COL_V_BASENOIVA) = "SubTotal"
            grd.ColData(COL_V_CANTRANS) = "SubTotal"
            
            
    
    Case "IMPCA"
            For i = 1 To COL_A_RESP
                grd.ColHidden(i) = False
'                grd.ColFormat(i) = flexDTString
            Next i
            grd.ColFormat(COL_A_NUMESTA) = "000"
           grd.ColFormat(COL_A_NUMPUNTO) = "000"
            grd.ColFormat(COL_A_NUMSECUE) = "0000000"
    End Select
    
    grd.ColSort(1) = flexSortGenericAscending
    grd.ColSort(2) = flexSortGenericAscending
    grd.ColSort(3) = flexSortGenericAscending
    grd.ColSort(4) = flexSortGenericAscending

    AsignarTituloAColKey grd
    grd.SetFocus

End Sub



''''Private Sub GeneraArchivo()
''''    Dim v As Variant, file As String, nombre As String
''''    Dim Filas As Long, Columnas As Long, i As Long, j As Long
''''    On Error GoTo ErrTrap
''''    nombre = "AT" & Format(CStr(Month(mObjCond.Fecha2)), "00") & Year(mObjCond.Fecha2) & ".XML"
''''    file = "c:\" & nombre 'txtCarpeta.Text & Nombre
''''    If ExisteArchivo(file) Then
''''        If MsgBox("El nombre del archivo " & nombre & " ya existe desea sobreescribirlo?", vbYesNo) = vbNo Then
''''            Exit Sub
''''        End If
''''    End If
''''    NumFile = FreeFile
''''    Open file For Output Access Write As #NumFile
'''''     grd.AddItem vbTab & Nombre & vbTab & "Generando  archivo..."
''''    Cadena = GeneraArchivoEncabezado
''''
''''
'''''    grd.AddItem vbTab & Nombre & vbTab & "Generando  archivo..."
''''   Print #NumFile, Cadena
''''
''''    Close NumFile
'''''    grd.textmatrix(i,grd.Rows - 1, grd.Cols - 1) = "Grabado con exito"
''''    Exit Sub
''''ErrTrap:
''''    'grd.TextMatrix(i, grd.Rows - 1, 2) = Err.Description
''''    Close NumFile
''''End Sub

Private Function GeneraArchivoEncabezadoATSXML() As String
    Dim obj As GNOpcion, cad As String
    cad = "<?xml version=" & """1.0""" & " encoding=" & """ISO-8859-1""" & "" & " standalone=" & """yes""" & "?>"
    cad = cad & "<!--  Generado por Ishida Asociados   -->"
    cad = cad & "<!--  Dir: Av. Espana  y Elia Liut Aeropuerto Mariscal Lamar Segundo Piso -->"
    cad = cad & "<!--  Telf: 098499003, 072870346      -->"
    cad = cad & "<!--  email: ishidacue@hotmail.com    -->"
    cad = cad & "<!--  Cuenca - Ecuador                -->"
    cad = cad & "<!--  SISTEMAS DE GESTION EMPRESASRIAL-->"
        
    cad = cad & "<iva>"
        
    cad = cad & "<numeroRuc>" & Format(gobjMain.EmpresaActual.GNOpcion.ruc, "0000000000000") & "</numeroRuc>"
    cad = cad & "<razonSocial>" & UCase(gobjMain.EmpresaActual.GNOpcion.RazonSocial) & "</razonSocial>"
    cad = cad & "<anio>" & Year(mObjCond.fecha1) & "</anio>"
    cad = cad & "<mes>" & IIf(Len(Month(mObjCond.fecha1)) = 1, "0" & Month(mObjCond.fecha1), Month(mObjCond.fecha1)) & "</mes>"
'    cad = cad & "<compras>"

    GeneraArchivoEncabezadoATSXML = cad
End Function



Public Function RellenaDer(ByVal s As String, lon As Long) As String
    Dim r As String
    r = "!" & String(lon, "@")
    If Len(s) = 0 Then s = " "
    RellenaDer = Format(s, r)
End Function

Public Function ValidaTelefono(ByVal Tel As String) As String
    Dim c As String
    If Len(Tel) < 6 Then Exit Function
    'asigna caracter
    Select Case Mid(Tel, 1, 2)
            Case "02", "04", "07": c = "2"
            Case "09": c = "9"
            Case Else: c = "-"  'Diego 27 Abril 2004 ' si va jeaa 02/04/04
    End Select
   
    Select Case Len(Tel)
    Case 6: Tel = "07" & c & Tel
    Case 7:
        If InStr("0249", Mid(Tel, 1, 1)) = 0 Then
            Tel = "0" & Mid(Tel, 1, 1) & c & Mid(Tel, 2, Len(Tel))
        Else
            'jeaa 2/06/04
            Tel = "07" & Tel
        End If
    Case 8: Tel = Mid(Tel, 1, 2) & c & Mid(Tel, 3, 8)
    Case 9: If Mid(Tel, 3, 1) <> c Then Tel = Mid(Tel, 1, 2) & c & Mid(Tel, 3, Len(Tel))
    End Select
    
    ValidaTelefono = Tel
End Function



Private Sub cmdExaminarCarpeta_Click(Index As Integer)
    On Error GoTo ErrTrap
    slf.OwnerHWnd = Me.hWnd
    slf.Path = txtCarpeta.Text
    If slf.Browse Then
        txtCarpeta.Text = slf.Path
        txtCarpeta_LostFocus
    End If
    Exit Sub
ErrTrap:
    MsgBox Err.Description, vbInformation
    Exit Sub
End Sub

Private Sub grd_Click()
    Dim rsRet As Recordset
    If NumProc = 1 Or NumProc = 2 Then
        Set rsRet = gobjMain.EmpresaActual.ConsANRetencionCompras2008ParaXML(grd.ValueMatrix(grd.Row, COL_C_TRANSID))
        
        If rsRet.RecordCount = 0 And grd.TextMatrix(grd.Row, COL_C_CODTIPOCOMP) <> "4" Then
            Set rsRet = gobjMain.EmpresaActual.ConsANRetencionCompras2008ParaXMLSinRetencion(grd.ValueMatrix(grd.Row, COL_C_TRANSID))
        End If
        If rsRet.RecordCount > 0 Then
            MiGetRowsRep rsRet, grdRet
        Else
            grdRet.Clear
        End If
    ElseIf NumProc = 3 Or NumProc = 4 Then
        Set rsRet = gobjMain.EmpresaActual.ConsANRetencionVentas2008ParaXML(grd.TextMatrix(grd.Row, COL_V_RUC))
        
        If rsRet.RecordCount > 0 Then
            MiGetRowsRep rsRet, grdRet
        Else
            grdRet.Clear
        End If
    
    End If
End Sub

Private Sub grd_DblClick()
    Dim gnc As GNComprobante, cad As String
    Dim pc As PCProvCli
    Select Case NumProc
    Case 1, 2
        Set gnc = gobjMain.EmpresaActual.RecuperaGNComprobante(grd.ValueMatrix(grd.Row, COL_C_TRANSID))
        gnc.RecuperaDetalleTodo
        gnc.BandNoGrabaTransXML = False
        If Not gnc Is Nothing Then
            Select Case grd.col
            Case COL_C_FECHATRANS, COL_C_NUMSERESTA
                    cad = frmDatosAnexos.Inicio(gnc)
                    If cad = "O.K." Then
                        gnc.Grabar False, False
                    End If
            Case COL_C_NUMSERPUNTO, COL_C_NUMSECUENCIAL
                    cad = frmDatosAnexos.Inicio(gnc)
                    If cad = "O.K." Then
                        gnc.Grabar False, False
                    End If
            Case COL_C_NUMAUTOSRI, COL_C_FECHACADUCIDAD
                    cad = frmDatosAnexos.Inicio(gnc)
                    If cad = "O.K." Then
                        gnc.Grabar False, False
                    End If
            Case COL_C_CODSUSTENTO, COL_C_CODTIPOCOMP
                    cad = frmDatosAnexos.Inicio(gnc)
                    If cad = "O.K." Then
                        gnc.Grabar False, False
                    End If
            Case COL_C_TIPODOC, COL_C_RUC, COL_C_NOMBRE
                Set pc = gobjMain.EmpresaActual.RecuperaPCProvCli(grd.TextMatrix(grd.Row, COL_C_RUC))
                'Select Case grd.col
                'Case COL_V_RUC, COL_V_RUC, COL_V_CLIENTE
                    cad = frmDatosPC.Inicio(pc)
                            If cad = "O.K." Then
                                pc.Grabar
                                If NumProc < 3 Then
                                    grd.TextMatrix(grd.Row, COL_C_TIPODOC) = pc.codtipoDocumento
                                Else
                                    grd.TextMatrix(grd.Row, COL_V_TIPODOC) = pc.codtipoDocumento
                                End If
                                
                            End If
                'End Select
            
            End Select
            Set gnc = Nothing
        End If
    Case 3, 4
        Set pc = gobjMain.EmpresaActual.RecuperaPCProvCli(grd.TextMatrix(grd.Row, COL_V_RUC))
        Select Case grd.col
        Case COL_V_RUC, COL_V_RUC, COL_V_CLIENTE
            cad = frmDatosPC.Inicio(pc)
                    If cad = "O.K." Then
                        pc.Grabar
                    End If
                    grd.TextMatrix(grd.Row, COL_V_TIPODOC) = pc.codtipoDocumento
        End Select
    End Select
    Set pc = Nothing
End Sub

Private Sub txtCarpeta_LostFocus()
    If Right$(txtCarpeta.Text, 1) <> "\" Then
        txtCarpeta.Text = txtCarpeta.Text & "\"
    End If
    'Luego a actualiza linea de comando
End Sub

Private Function GeneraArchivoATSComprasXML(ByRef cad As String) As Boolean
    Dim cadenaCP As String
    Dim i As Long, j As Long
    Dim vIR As Variant, cadenaCPIR As String
    Dim FilasIR As Long, ColumnasIR As Long, iIR As Long, jIR As Long
    Dim rsRet As Recordset, cadenaCPIVA30 As String
    Dim cadenaCPIVA70 As String, cadenaCPIVA100 As String, cadenaRET As String
    Dim rsNC As Recordset, cadenaNC As String, ret As TSRetencion
    Dim msg As String, bandIgualaFechaCompra_Reten As Boolean, resp As E_MiMsgBox
    Dim m As Integer, n As Integer, codret As String, ane As Anexos
    
    On Error GoTo ErrTrap
    resp = 10
    GeneraArchivoATSComprasXML = True
    grd.Refresh
    'With grd
        cadenaCP = "<compras>"
            If grd.Rows < 1 Then
                prg.value = 0
                cadenaCP = cadenaCP & "</compras>"
                cad = cadenaCP
                GeneraArchivoATSComprasXML = True
                GoTo SiguienteFila
            End If
            prg.max = grd.Rows - 1
            For i = 1 To grd.Rows - 1
                bandIgualaFechaCompra_Reten = False
                If grd.IsSubtotal(i) Then GoTo SiguienteFila
                grd.Cell(flexcpBackColor, i, 1, i, grd.ColIndex("Resultado")) = vbWhite
                prg.value = i
                DoEvents
                cadenaCP = cadenaCP & "<detalleCompras>"
                cadenaCP = cadenaCP & "<codSustento>" & grd.TextMatrix(i, COL_C_CODSUSTENTO) & "</codSustento>"
                
                
                
                Select Case grd.TextMatrix(i, COL_C_TIPODOC)
                    Case "R":
                            If Len(grd.TextMatrix(i, COL_C_RUC)) <> 13 Then
                                msg = " El Tipo de Comprobante del Proveedor " & grd.TextMatrix(i, COL_C_NOMBRE) & " es Incorrecto"
                                'MsgBox msg
                                grd.TextMatrix(i, grd.ColIndex("Resultado")) = " Error " & msg
                                grd.ShowCell i, grd.ColIndex("Resultado")
                                grd.Cell(flexcpBackColor, i, 1, i, grd.ColIndex("Resultado")) = vbRed
                                GeneraArchivoATSComprasXML = False
                                lblPasos(5).Caption = "Error"
                                GoTo SiguienteFila
                            End If
                            cadenaCP = cadenaCP & "<tpIdProv>" & "01" & "</tpIdProv>"
                    Case "C":
                            If Len(grd.TextMatrix(i, COL_C_RUC)) <> 10 Then
                                msg = " El Tipo de Comprobante del Proveedor " & grd.TextMatrix(i, COL_C_NOMBRE) & " es Incorrecto"
                                'MsgBox msg
                                grd.TextMatrix(i, grd.ColIndex("Resultado")) = " Error " & msg
                                grd.ShowCell i, grd.ColIndex("Resultado")
                                grd.Cell(flexcpBackColor, i, 1, i, grd.ColIndex("Resultado")) = vbRed
                                GeneraArchivoATSComprasXML = False
                                lblPasos(5).Caption = "Error"
                                GoTo SiguienteFila
                            End If
                    
                        cadenaCP = cadenaCP & "<tpIdProv>" & "02" & "</tpIdProv>"
                    Case "P":                     cadenaCP = cadenaCP & "<tpIdProv>" & "03" & "</tpIdProv>"
                    Case Else
                            msg = " El Proveedor " & grd.TextMatrix(i, COL_C_NOMBRE) & " Tipo de Documento Incorrecto"
                            'MsgBox msg
                            grd.TextMatrix(i, grd.ColIndex("Resultado")) = " Error " & msg
                            grd.ShowCell i, grd.ColIndex("Resultado")
                            grd.Cell(flexcpBackColor, i, 1, i, grd.ColIndex("Resultado")) = vbRed
                            GeneraArchivoATSComprasXML = False
                            lblPasos(5).Caption = "Error"
                            GoTo SiguienteFila
                End Select
                
                
                
                cadenaCP = cadenaCP & "<idProv>" & grd.TextMatrix(i, COL_C_RUC) & "</idProv>"
                If Mid$(grd.TextMatrix(i, COL_C_CODTIPOCOMP), 1, 1) = "0" Then
                    cadenaCP = cadenaCP & "<tipoComprobante>" & Mid$(grd.TextMatrix(i, COL_C_CODTIPOCOMP), 2, 1) & "</tipoComprobante>"
                Else
                    If grd.TextMatrix(i, COL_C_CODTIPOCOMP) = "2" Then
                        If grd.TextMatrix(i, COL_C_CODSUSTENTO) = "01" Then
                            msg = " El Sustento " & grd.TextMatrix(i, COL_C_CODSUSTENTO) & ", no va con comprobante " & grd.TextMatrix(i, COL_C_CODTIPOCOMP)
                            'MsgBox msg
                            grd.TextMatrix(i, grd.ColIndex("Resultado")) = " Error " & msg
                            grd.ShowCell i, grd.ColIndex("Resultado")
                            grd.Cell(flexcpBackColor, i, 1, i, grd.ColIndex("Resultado")) = vbRed
                            GeneraArchivoATSComprasXML = False
                            lblPasos(5).Caption = "Error"
                            GoTo SiguienteFila
                        End If
                        cadenaCP = cadenaCP & "<tipoComprobante>" & grd.TextMatrix(i, COL_C_CODTIPOCOMP) & "</tipoComprobante>"
                    Else
                        cadenaCP = cadenaCP & "<tipoComprobante>" & grd.TextMatrix(i, COL_C_CODTIPOCOMP) & "</tipoComprobante>"
                    End If
                End If
                cadenaCP = cadenaCP & "<fechaRegistro>" & grd.TextMatrix(i, COL_C_FECHAREGISTRO) & "</fechaRegistro>"
                If Len(grd.TextMatrix(i, COL_C_NUMSERESTA)) <> 3 Or grd.ValueMatrix(i, COL_C_NUMSERESTA) = 0 Then
                            msg = " El Numero de Serie Establecimiento " & grd.TextMatrix(i, COL_C_NUMSERESTA) & " Incorrecto"
                            'MsgBox msg
                            grd.TextMatrix(i, grd.ColIndex("Resultado")) = " Error " & msg
                            grd.Cell(flexcpBackColor, i, 1, i, grd.ColIndex("Resultado")) = vbRed
                            grd.ShowCell i, grd.ColIndex("Resultado")
                            GeneraArchivoATSComprasXML = False
                            lblPasos(5).Caption = "Error"
                            GoTo SiguienteFila
                Else
                    cadenaCP = cadenaCP & "<establecimiento>" & grd.TextMatrix(i, COL_C_NUMSERESTA) & "</establecimiento>"
                End If
                If Len(grd.TextMatrix(i, COL_C_NUMSERPUNTO)) <> 3 Or grd.ValueMatrix(i, COL_C_NUMSERPUNTO) = 0 Then
                            msg = " El Numero de Serie Punto " & grd.TextMatrix(i, COL_C_NUMSERPUNTO) & " Incorrecto"
                            'MsgBox msg
                            grd.TextMatrix(i, grd.ColIndex("Resultado")) = " Error " & msg
                            grd.Cell(flexcpBackColor, i, 1, i, grd.ColIndex("Resultado")) = vbRed
                            grd.ShowCell i, grd.ColIndex("Resultado")
                            GeneraArchivoATSComprasXML = False
                            lblPasos(5).Caption = "Error"
                            GoTo SiguienteFila
                Else
                    cadenaCP = cadenaCP & "<puntoEmision>" & grd.TextMatrix(i, COL_C_NUMSERPUNTO) & "</puntoEmision>"
                End If
                If grd.TextMatrix(i, COL_C_NUMSECUENCIAL) <> "000000000" Then
                    cadenaCP = cadenaCP & "<secuencial>" & grd.TextMatrix(i, COL_C_NUMSECUENCIAL) & "</secuencial>"
                Else
                            msg = " El Numero de Secuencia no puede ser " & grd.TextMatrix(i, COL_C_NUMSECUENCIAL) & " esta Incorrecto"
                            'MsgBox msg
                            grd.TextMatrix(i, grd.ColIndex("Resultado")) = " Error " & msg
                            grd.Cell(flexcpBackColor, i, 1, i, grd.ColIndex("Resultado")) = vbRed
                            grd.ShowCell i, grd.ColIndex("Resultado")
                            GeneraArchivoATSComprasXML = False
                            lblPasos(5).Caption = "Error"
                            GoTo SiguienteFila
                
                End If
                cadenaCP = cadenaCP & "<fechaEmision>" & grd.TextMatrix(i, COL_C_FECHATRANS) & "</fechaEmision>"
                If Len(grd.TextMatrix(i, COL_C_NUMAUTOSRI)) > 50 Or grd.ValueMatrix(i, COL_C_NUMAUTOSRI) < 1 Then
                            msg = " El Numero de Autorizaci�n SRI " & grd.TextMatrix(i, COL_C_NUMAUTOSRI) & " Incorrecto"
                            'MsgBox msg
                            grd.TextMatrix(i, grd.ColIndex("Resultado")) = " Error " & msg
                            grd.Cell(flexcpBackColor, i, 1, i, grd.ColIndex("Resultado")) = vbRed
                            grd.ShowCell i, grd.ColIndex("Resultado")
                            GeneraArchivoATSComprasXML = False
                            lblPasos(5).Caption = "Error"
                            GoTo SiguienteFila
                Else
                    cadenaCP = cadenaCP & "<autorizacion>" & grd.TextMatrix(i, COL_C_NUMAUTOSRI) & "</autorizacion>"
                End If
                cadenaCP = cadenaCP & "<baseNoGraIva>" & Format(Abs(grd.ValueMatrix(i, COL_C_BASENO12)), "#0.00") & "</baseNoGraIva>"
                cadenaCP = cadenaCP & "<baseImponible>" & Format(Abs(grd.ValueMatrix(i, COL_C_BASE0)), "#0.00") & "</baseImponible>"

                
                cadenaCP = cadenaCP & "<baseImpGrav>" & Format(Abs(grd.ValueMatrix(i, COL_C_BASE12)), "#0.00") & "</baseImpGrav>"
                
                cadenaCP = cadenaCP & "<montoIce>" & Format(Abs(grd.ValueMatrix(i, COL_C_MONTOICE)), "#0.00") & "</montoIce>"
                
                If grd.TextMatrix(i, COL_C_FECHATRANS) >= gobjMain.EmpresaActual.GNOpcion.FechaIVA Then
                    cadenaCP = cadenaCP & "<montoIva>" & Format(IIf(Abs(grd.ValueMatrix(i, COL_C_BASE12)) = 0, "0.00", Abs(grd.ValueMatrix(i, COL_C_BASE12)) * gobjMain.EmpresaActual.GNOpcion.PorcentajeIVA), "#0.00") & "</montoIva>"
                Else
                    cadenaCP = cadenaCP & "<montoIva>" & Format(IIf(Abs(grd.ValueMatrix(i, COL_C_BASE12)) = 0, "0.00", Abs(grd.ValueMatrix(i, COL_C_BASE12)) * gobjMain.EmpresaActual.GNOpcion.PorcentajeIVAAnt), "#0.00") & "</montoIva>"
                End If


                'retencion IVA
                Set rsRet = gobjMain.EmpresaActual.ConsANRetencionCompras2008ParaXML(grd.ValueMatrix(i, COL_C_TRANSID))
                If rsRet.RecordCount = 0 And grd.TextMatrix(i, COL_C_CODTIPOCOMP) <> "4" Then
                    Set rsRet = gobjMain.EmpresaActual.ConsANRetencionCompras2008ParaXMLSinRetencion(grd.ValueMatrix(i, COL_C_TRANSID))
                End If
                cadenaCPIR = "<air>"
                cadenaCPIVA30 = "<valorRetBienes> 0.00 </valorRetBienes>"
                cadenaCPIVA70 = "<valorRetServicios> 0.00 </valorRetServicios>"
                cadenaCPIVA100 = "<valRetServ100> 0.00 </valRetServ100>"
                 cadenaRET = ""
                If rsRet.RecordCount > 0 Then
                    MiGetRowsRep rsRet, grdRet
'                    If grd.TextMatrix(i, COL_C_NUMTRANS) = "3892" Then MsgBox "hola"
                    For j = 1 To grdRet.Rows - 1
                    
                        For m = 1 To grdRet.Rows - 1
                            codret = grdRet.TextMatrix(m, COL_R_CODIGORET)
                            For n = m + 1 To grdRet.Rows - 1
                                If codret = grdRet.TextMatrix(n, COL_R_CODIGORET) Then
                                            msg = " Retenci�n  " & grdRet.TextMatrix(j, COL_R_NUMTRANS) & " C�d. de Ret.  Duplicado " & codret
                                            grd.TextMatrix(i, grd.ColIndex("Resultado")) = " Error " & msg
                                            grd.Cell(flexcpBackColor, i, 1, i, grd.ColIndex("Resultado")) = vbRed
                                            grd.ShowCell i, grd.ColIndex("Resultado")
                                            GeneraArchivoATSComprasXML = False
                                            lblPasos(5).Caption = "Error"
                                            GoTo SiguienteFila
                                End If
                            Next n
                        Next m
                            
                    
                    
                            If grd.TextMatrix(i, COL_C_RUC) <> grdRet.TextMatrix(j, COL_R_RUC) Then
                                            msg = " Compra  " & grd.TextMatrix(i, COL_C_RUC) & " RTP " & grdRet.TextMatrix(j, COL_C_RUC)
                                            grd.TextMatrix(i, grd.ColIndex("Resultado")) = " Error " & msg
                                            grd.Cell(flexcpBackColor, i, 1, i, grd.ColIndex("Resultado")) = vbRed
                                            grd.ShowCell i, grd.ColIndex("Resultado")
                                            GeneraArchivoATSComprasXML = False
                                            lblPasos(5).Caption = "Error"
                                            GoTo SiguienteFila
                            
                            Else
                            
                                If (grd.TextMatrix(i, COL_C_TRANS) = grdRet.TextMatrix(j, COL_R_TRANS)) And (grd.TextMatrix(i, COL_C_NUMTRANS) = grdRet.TextMatrix(j, COL_R_NUMTRANS)) Then
                                    
                                    If grdRet.TextMatrix(j, COL_R_TIPO) = -1 Then
                                        Select Case grdRet.ValueMatrix(j, COL_R_PORCEN)
                                        Case 30
                                            cadenaCPIVA30 = "<valorRetBienes>" & Format(grdRet.ValueMatrix(j, COL_R_VALOR), "#0.00") & "</valorRetBienes>"
                                        Case 70
                                            cadenaCPIVA70 = "<valorRetServicios>" & Format(grdRet.ValueMatrix(j, COL_R_VALOR), "#0.00") & "</valorRetServicios>"
                                        Case 100
                                            cadenaCPIVA100 = "<valRetServ100>" & Format(grdRet.ValueMatrix(j, COL_R_VALOR), "#0.00") & "</valRetServ100>"
                                        End Select
                                    Else
                                        'valores renta
'                                        If i = 29 Then MsgBox "HOLA"
                                        If Len(grdRet.TextMatrix(j, COL_R_CODIGOSRI)) = 0 Then
                                             Set ret = gobjMain.EmpresaActual.RecuperaTSRetencion(grdRet.TextMatrix(j, COL_R_CODIGORET))
                                             If Not ret Is Nothing Then
                                                Set ane = gobjMain.EmpresaActual.RecuperaAnexosRetIR(Mid$(ret.CodRetencion, 3, 3))
                                                If Not ane Is Nothing Then
                                                    ret.CodAnexo = ane.CodRetencion
                                                    ret.Grabar
                                                Else
                                                    msg = " Falta crear c�digo " & Mid$(grdRet.TextMatrix(j, COL_R_CODIGORET), 3, 3)
                                                    grd.TextMatrix(i, grd.ColIndex("Resultado")) = " Error " & msg
                                                    grd.Cell(flexcpBackColor, i, 1, i, grd.ColIndex("Resultado")) = vbRed
                                                    grd.ShowCell i, grd.ColIndex("Resultado")
                                                    GeneraArchivoATSComprasXML = False
                                                    lblPasos(5).Caption = "Error"
                                                    GoTo SiguienteFila
                                                
                                                
                                                End If
                                             End If
                                        
                                        End If
                                        
                                        If grd.TextMatrix(i, COL_C_MONTOICE) = 0 Then
                                            If (grd.TextMatrix(i, COL_C_CODTIPOCOMP) <> "4" Or grd.TextMatrix(i, COL_C_CODTIPOCOMP) = "5") Then
                                                If Len(grdRet.TextMatrix(j, COL_R_CODIGOSRI)) = 0 Then
                                                    msg = " Falta enlace Cat.Retenciones " & grdRet.TextMatrix(j, COL_R_CODIGORET)
                                                    grd.TextMatrix(i, grd.ColIndex("Resultado")) = " Error " & msg
                                                    grd.Cell(flexcpBackColor, i, 1, i, grd.ColIndex("Resultado")) = vbRed
                                                    grd.ShowCell i, grd.ColIndex("Resultado")
                                                    GeneraArchivoATSComprasXML = False
                                                    lblPasos(5).Caption = "Error"
                                                    GoTo SiguienteFila
                                                End If
                                            End If
                                            cadenaCPIR = cadenaCPIR & "<detalleAir>"
                                            cadenaCPIR = cadenaCPIR & "<codRetAir>" & grdRet.TextMatrix(j, COL_R_CODIGOSRI) & "</codRetAir>"
                                            cadenaCPIR = cadenaCPIR & "<baseImpAir>" & Format(grdRet.ValueMatrix(j, COL_R_BASE), "#0.00") & "</baseImpAir>"
                                            cadenaCPIR = cadenaCPIR & "<porcentajeAir>" & Format(grdRet.TextMatrix(j, COL_R_PORCEN), "#0.0") & "</porcentajeAir>"
                                            cadenaCPIR = cadenaCPIR & "<valRetAir>" & Format(grdRet.ValueMatrix(j, COL_R_VALOR), "#0.00") & "</valRetAir>"
                                            cadenaCPIR = cadenaCPIR & "</detalleAir>"
                                        End If
                                    
                                    End If
                                End If
                                If grd.TextMatrix(i, COL_C_MONTOICE) = 0 Then
                                    cadenaRET = "<estabRetencion1>" & grdRet.TextMatrix(j, COL_R_NUMEST) & "</estabRetencion1>"
                                    cadenaRET = cadenaRET & "<ptoEmiRetencion1>" & grdRet.TextMatrix(j, COL_R_NUMPTO) & "</ptoEmiRetencion1>"
                                    cadenaRET = cadenaRET & "<secRetencion1>" & grdRet.TextMatrix(j, COL_R_NUMRET) & "</secRetencion1>"
                                    cadenaRET = cadenaRET & "<autRetencion1>" & grdRet.TextMatrix(j, COL_R_NUMAUTO) & "</autRetencion1>"
                                    cadenaRET = cadenaRET & "<fechaEmiRet1>" & grdRet.TextMatrix(j, COL_R_FECHARET) & "</fechaEmiRet1>"
                                    If resp = mmsgSiTodo Then
                                        bandIgualaFechaCompra_Reten = True
                                    Else
                                        If CDate(grdRet.TextMatrix(j, COL_R_FECHARET)) < CDate(grd.TextMatrix(i, COL_C_FECHAREGISTRO)) Then
                                            msg = "La fecha de la Retenci�n " & grdRet.TextMatrix(j, COL_R_RETTRANS) & "-" & _
                                                        grdRet.TextMatrix(j, COL_R_RETNUMTRANS) & _
                                                        " no puede ser menor a la fecha de la Compra " & _
                                                        grd.TextMatrix(i, COL_C_TRANS) & "-" & _
                                                        grd.TextMatrix(i, COL_C_NUMTRANS) & Chr(13) & _
                                                        "Desea que para el anexo se igaule la fecha"
                                            resp = frmMiMsgBox.MiMsgBox(msg, "Fechas")
                                            If resp = 1 Then
                                                bandIgualaFechaCompra_Reten = True
                                            ElseIf resp = vbYes Then
                                                bandIgualaFechaCompra_Reten = True
                                            Else
                                                bandIgualaFechaCompra_Reten = False
                                            End If
                                        End If
                                    End If
                            
                                    If CDate(grdRet.TextMatrix(j, COL_R_FECHARET)) < CDate(grd.TextMatrix(i, COL_C_FECHAREGISTRO)) And bandIgualaFechaCompra_Reten = False Then
                                        msg = "La fecha de la Retenci�n " & grdRet.TextMatrix(j, COL_R_RETTRANS) & "-" & _
                                                    grdRet.TextMatrix(j, COL_R_RETNUMTRANS) & _
                                                    " no puede ser menor a la fecha de la Compra " & _
                                                    grd.TextMatrix(i, COL_C_TRANS) & "-" & _
                                                    grd.TextMatrix(i, COL_C_NUMTRANS)
                                                    
                                                    
                                        grd.TextMatrix(i, grd.ColIndex("Resultado")) = " Error " & msg
                                        grd.Cell(flexcpBackColor, i, 1, i, grd.ColIndex("Resultado")) = vbRed
                                        grd.ShowCell i, grd.ColIndex("Resultado")
                                        lblPasos(5).Caption = "Error"
                                        GeneraArchivoATSComprasXML = False
                                        GoTo SiguienteFila
                                    End If
                                End If
                                If CDate(grd.TextMatrix(i, COL_C_FECHAREGISTRO)) < CDate(grd.TextMatrix(i, COL_C_FECHATRANS)) Then
                                    msg = "La fecha de registro de la Transaccion " & _
                                    grd.TextMatrix(i, COL_C_TRANS) & "-" & _
                                    grd.TextMatrix(i, COL_C_NUMTRANS) _
                                    & " debe ser menor o igual a la fecha de registro "
                                    'MsgBox msg
                                    grd.TextMatrix(i, grd.ColIndex("Resultado")) = " Error " & msg
                                    grd.Cell(flexcpBackColor, i, 1, i, grd.ColIndex("Resultado")) = vbRed
                                    grd.ShowCell i, grd.ColIndex("Resultado")
                                    GeneraArchivoATSComprasXML = False
                                    lblPasos(5).Caption = "Error"
                                    GoTo SiguienteFila
                                End If
                                End If
                            Next j
                        Else
                            For j = grdRet.Rows - 1 To 1 Step -1
                                grdRet.RemoveItem (j)
                    Next j
                End If

                If grd.TextMatrix(i, COL_C_CODTIPOCOMP) = "4" Or grd.TextMatrix(i, COL_C_CODTIPOCOMP) = "5" Then
                    Set rsNC = gobjMain.EmpresaActual.ConsANNCCompras2008ParaXML(grd.ValueMatrix(i, COL_C_TRANSID))
                    If rsNC.RecordCount = 0 Then
                        cadenaNC = "<docModificado>0</docModificado>"
                        cadenaNC = cadenaNC & "<estabModificado>000</estabModificado>"
                        cadenaNC = cadenaNC & "<ptoEmiModificado>000</ptoEmiModificado>"
                        cadenaNC = cadenaNC & "<secModificado>0000000</secModificado>"
                        cadenaNC = cadenaNC & "<autModificado>0000000000</autModificado>"
                    Else
                        cadenaNC = "<docModificado>" & rsNC.Fields(0) & "</docModificado>"
                        cadenaNC = cadenaNC & "<estabModificado>" & rsNC.Fields(1) & "</estabModificado>"
                        cadenaNC = cadenaNC & "<ptoEmiModificado>" & rsNC.Fields(2) & "</ptoEmiModificado>"
                        cadenaNC = cadenaNC & "<secModificado>" & rsNC.Fields(3) & "</secModificado>"
                        cadenaNC = cadenaNC & "<autModificado>" & rsNC.Fields(4) & "</autModificado>"
                    End If
                Else
                    cadenaNC = "<docModificado>0</docModificado>"
                    cadenaNC = cadenaNC & "<estabModificado>000</estabModificado>"
                    cadenaNC = cadenaNC & "<ptoEmiModificado>000</ptoEmiModificado>"
                    cadenaNC = cadenaNC & "<secModificado>0000000</secModificado>"
                    cadenaNC = cadenaNC & "<autModificado>0000000000</autModificado>"
                End If
                cadenaCPIR = cadenaCPIR & "</air>"
                cadenaCP = cadenaCP & cadenaCPIVA30 & cadenaCPIVA70 & cadenaCPIVA100
                cadenaCP = cadenaCP & cadenaCPIR & cadenaRET
                cadenaCP = cadenaCP & cadenaNC
                cadenaCP = cadenaCP & "</detalleCompras>"
                grd.ShowCell i, grd.ColIndex("Resultado")
                grd.TextMatrix(i, grd.ColIndex("Resultado")) = " OK "
                grd.Cell(flexcpBackColor, i, 1, i, grd.ColIndex("Resultado")) = vbWhite
     '       End With
            GoTo SiguienteFila
            'Next i
        'End If
    'End With
    Exit Function
SiguienteFila:
    Next i
    grd.ColWidth(grd.ColIndex("Resultado")) = 5000
    prg.value = 0
    If Len(lblPasos(5).Caption) = 0 Then
        lblPasos(5).Caption = "OK."
        cadenaCP = cadenaCP & "</compras>"
    Else
        cadenaCP = ""
    End If
    cad = cadenaCP
    'GeneraArchivoATSComprasXML = True
Exit Function
cancelado:
    GeneraArchivoATSComprasXML = False
ErrTrap:
    grd.TextMatrix(grd.Rows - 1, 2) = Err.Description
    GeneraArchivoATSComprasXML = False
End Function

Private Function BuscarVentasATS()
    On Error GoTo ErrTrap
        With grd
        .Redraw = False
        .Rows = .FixedRows
        If Not frmB_Trans.Inicio(gobjMain, "IMPFC", dtpPeriodo.value) Then
            grd.SetFocus
        End If
        mObjCond.fecha1 = gobjMain.objCondicion.fecha1
        mObjCond.fecha2 = gobjMain.objCondicion.fecha2
        MiGetRowsRep gobjMain.EmpresaActual.ConsANVentas2008ParaXML(), grd
        MiGetRowsRep gobjMain.EmpresaActual.ConsANTotalRetencionVentas2008ParaXML, GrdRetVentas

        'GeneraArchivo

        ConfigCols "IMPFC"
        ConfigCols "IMPFCIR"
        AjustarAutoSize grd, -1, -1
        AjustarAutoSize grdRet, -1, -1
        grd.ColWidth(0) = "500"

        SubTotalizar (COL_V_TIPOCOMP)
        Totalizar

        GNPoneNumFila grd, False
        GNPoneNumFila grdRet, False

        .Redraw = True
   End With

    Exit Function
ErrTrap:
    grd.Redraw = True
    DispErr
    Exit Function
End Function

Private Function GenerarVentasATS(ByRef cad As String) As Boolean
    On Error GoTo ErrTrap
        GenerarVentasATS = False
        GenerarVentasATS = GeneraArchivoATSVentasXML(cad)
    Exit Function
ErrTrap:
    grd.Redraw = True
    DispErr
    Exit Function
End Function



Private Function GeneraArchivoATSVentasXML(ByRef cad As String) As Boolean
    Dim cadenaFC As String, cadenaFCIVA  As String
    Dim i As Long, j As Long
    Dim vIR As Variant, cadenaFCIR As String
    Dim FilasIR As Long, ColumnasIR As Long, iIR As Long, jIR As Long
    Dim rsRet As Recordset, cadenaFCIVA30 As String
    Dim cadenaFCIVA70 As String, cadenaFCIVA100 As String
    Dim rsNC As Recordset, cadenaNC As String
    Dim msg As String, pc As PCProvCli, bandCF As Boolean, filaCF As Integer
    Dim cadenaF As String, k As Integer
    
    On Error GoTo ErrTrap
    GeneraArchivoATSVentasXML = True
    bandCF = False
    filaCF = 1
    For j = 1 To grdCF.Rows - 1
        grdCF.RemoveItem 1
    Next j
    
    For j = 1 To GrdRetVentas.Rows - 1
        GrdRetVentas.TextMatrix(j, 8) = ""
    Next j
    
    
        grd.Refresh
        cadenaF = "<ventas>"

            If grd.Rows < 1 Then
                prg.value = 0
                cadenaF = cadenaFC & "</ventas>"
                cad = cadenaF
                GeneraArchivoATSVentasXML = True
                GoTo SiguienteFila
            End If


            prg.max = grd.Rows - 1
            For i = 1 To grd.Rows - 1
                If grd.IsSubtotal(i) Then GoTo SiguienteFila
'                i = 2802
                grd.ShowCell i, 1
                prg.value = i
                DoEvents
                cadenaFC = ""
'                chkConsFinal.value = vbChecked
                If chkConsFinal.value = vbChecked Then
                    If (grd.TextMatrix(i, COL_V_TIPODOC) = "F" Or grd.Cell(flexcpBackColor, i, 1, i, grd.ColIndex("Resultado")) = vbRed) Or grd.TextMatrix(i, COL_V_RUC) = "9999999999999" Then
                        bandCF = True
                        grdCF.AddItem ""
                        grdCF.TextMatrix(filaCF, 0) = i
                        grdCF.TextMatrix(filaCF, COL_V_TIPODOC) = grd.TextMatrix(i, COL_V_TIPODOC)

                        grdCF.TextMatrix(filaCF, COL_V_RUC) = grd.TextMatrix(i, COL_V_RUC)
                        grdCF.TextMatrix(filaCF, COL_V_TIPOCOMP) = grd.TextMatrix(i, COL_V_TIPOCOMP)
                        grdCF.TextMatrix(filaCF, COL_V_CLIENTE) = grd.TextMatrix(i, COL_V_TIPOCOMP)
                        grdCF.TextMatrix(filaCF, COL_V_CANTRANS) = grd.ValueMatrix(i, COL_V_CANTRANS)
                        grdCF.TextMatrix(filaCF, COL_V_BASE0) = grd.ValueMatrix(i, COL_V_BASE0)
                        grdCF.TextMatrix(filaCF, COL_V_BASEIVA) = grd.ValueMatrix(i, COL_V_BASEIVA)
                        grdCF.TextMatrix(filaCF, COL_V_BASENOIVA) = grd.ValueMatrix(i, COL_V_BASENOIVA)
                        filaCF = filaCF + 1
'                        If grd.TextMatrix(i, COL_V_TIPODOC) = "F" Then
                            'i = i + 1
                            GoTo SiguienteFila
 '                       End If
                        
                    End If
                    
                End If
                
                
                If Len(grd.TextMatrix(i, COL_V_TIPODOC)) = 0 Then
                    Set pc = gobjMain.EmpresaActual.RecuperaPCProvClixRUC(grd.TextMatrix(i, COL_V_RUC), True, False, False)
                    If Not pc Is Nothing Then
                        If Len(grd.TextMatrix(i, COL_V_RUC)) = 13 And grd.TextMatrix(i, COL_V_RUC) <> "9999999999999" Then
                            pc.codtipoDocumento = "R"
                            pc.TipoDocumento = "1"
                            grd.TextMatrix(i, COL_V_TIPODOC) = "R"
                        ElseIf Len(grd.TextMatrix(i, COL_V_RUC)) = 13 And grd.TextMatrix(i, COL_V_RUC) = "9999999999999" Then
                            pc.codtipoDocumento = "F"
                            pc.TipoDocumento = "7"
                            grd.TextMatrix(i, COL_V_TIPODOC) = "F"
                        ElseIf Len(grd.TextMatrix(i, COL_V_RUC)) = 10 Then
                            pc.TipoDocumento = "2"
                            grd.TextMatrix(i, COL_V_TIPODOC) = "C"
                            pc.codtipoDocumento = "C"
                        End If
                        pc.Grabar
                    End If
                Else
                

                    Set pc = gobjMain.EmpresaActual.RecuperaPCProvClixRUC(grd.TextMatrix(i, COL_V_RUC), True, False, False)
                    If Not pc.VerificaRUC(grd.TextMatrix(i, COL_V_RUC)) Then
                            msg = " El Cliente " & grd.TextMatrix(i, COL_V_CLIENTE) & " tiene RUC/CI Incorrecto"
                            grd.TextMatrix(i, grd.ColIndex("Resultado")) = " Error " & msg
                            grd.Cell(flexcpBackColor, i, 1, i, grd.ColIndex("Resultado")) = vbRed
                            grd.ShowCell i, grd.ColIndex("Resultado")
                            GeneraArchivoATSVentasXML = True
                            lblPasos(7).Caption = "Error"
                            chkConsFinal.Visible = True
                            GoTo SiguienteFila
                    End If
                    If Len(grd.TextMatrix(i, COL_V_RUC)) = 13 And grd.TextMatrix(i, COL_V_RUC) <> "9999999999999" Then
                        pc.codtipoDocumento = "R"
                        pc.TipoDocumento = "1"
                        grd.TextMatrix(i, COL_V_TIPODOC) = "R"
                    ElseIf Len(grd.TextMatrix(i, COL_V_RUC)) = 13 And grd.TextMatrix(i, COL_V_RUC) = "9999999999999" Then
                        pc.codtipoDocumento = "F"
                        pc.TipoDocumento = "7"
                        grd.TextMatrix(i, COL_V_TIPODOC) = "F"
                    ElseIf Len(grd.TextMatrix(i, COL_V_RUC)) = 10 Then
                        pc.TipoDocumento = "2"
                        grd.TextMatrix(i, COL_V_TIPODOC) = "C"
                        pc.codtipoDocumento = "C"
                    End If
'                    pc.Grabar
                    
                    Set pc = Nothing
                    
                    
                    
                End If
                'cadenaFC = cadenaFC & Chr(13)
'''                If grd.TextMatrix(i, COL_V_RUC) = "0990049459001" Then MsgBox "hola"
                cadenaFC = cadenaFC & "<detalleVentas>"
                Select Case grd.TextMatrix(i, COL_V_TIPODOC)
                    Case "R":                     cadenaFC = cadenaFC & "<tpIdCliente>" & "04" & "</tpIdCliente>"
                    Case "C":                     cadenaFC = cadenaFC & "<tpIdCliente>" & "05" & "</tpIdCliente>"
                    Case "P":                     cadenaFC = cadenaFC & "<tpIdCliente>" & "06" & "</tpIdCliente>"
                    Case "F":                     cadenaFC = cadenaFC & "<tpIdCliente>" & "07" & "</tpIdCliente>"
                    Case "T":
                            msg = " El Cliente " & grd.TextMatrix(i, COL_V_CLIENTE) & " el tipo de Documento selecciona do es Valido"
                            grd.TextMatrix(i, grd.ColIndex("Resultado")) = " Error " & msg
                            grd.Cell(flexcpBackColor, i, 1, i, grd.ColIndex("Resultado")) = vbRed
                            grd.ShowCell i, grd.ColIndex("Resultado")
                            GeneraArchivoATSVentasXML = True
                            lblPasos(7).Caption = "Error"
                            chkConsFinal.Visible = True
                            GoTo SiguienteFila

                    
                    Case Else
                            
                            'cadenaFC = Mid$(cadenaFC, 1, Len(cadenaFC) - Len("<detalleVentas>") + 1)
                            msg = " El Cliente " & grd.TextMatrix(i, COL_V_CLIENTE) & " No tiene seleccionado el tipo de Documento"
                            grd.TextMatrix(i, grd.ColIndex("Resultado")) = " Error " & msg
                            grd.Cell(flexcpBackColor, i, 1, i, grd.ColIndex("Resultado")) = vbRed
                            grd.ShowCell i, grd.ColIndex("Resultado")
                            GeneraArchivoATSVentasXML = True
                            lblPasos(7).Caption = "Error"
                            chkConsFinal.Visible = True
                            GoTo SiguienteFila
                        
                End Select
                
                cadenaFC = cadenaFC & "<idCliente>" & grd.TextMatrix(i, COL_V_RUC) & "</idCliente>"
                cadenaFC = cadenaFC & "<tipoComprobante>" & grd.TextMatrix(i, COL_V_TIPOCOMP) & "</tipoComprobante>"
                cadenaFC = cadenaFC & "<numeroComprobantes>" & grd.TextMatrix(i, COL_V_CANTRANS) & "</numeroComprobantes>"
                cadenaFC = cadenaFC & "<baseNoGraIva>" & Format(Abs(grd.ValueMatrix(i, COL_V_BASENOIVA)), "#0.00") & "</baseNoGraIva>"
                cadenaFC = cadenaFC & "<baseImponible>" & Format(Abs(grd.ValueMatrix(i, COL_V_BASE0)), "#0.00") & "</baseImponible>"
'                If grd.ValueMatrix(i, COL_V_BASEIVA) = 145.6 Then MsgBox "HOLA"
                cadenaFC = cadenaFC & "<baseImpGrav>" & Format(Abs(grd.ValueMatrix(i, COL_V_BASEIVA)), "#0.00") & "</baseImpGrav>"
                If grd.TextMatrix(i, COL_V_FECHA) >= gobjMain.EmpresaActual.GNOpcion.FechaIVA Then
                    cadenaFC = cadenaFC & "<montoIva>" & Format(IIf(Abs(grd.ValueMatrix(i, COL_V_BASEIVA)) = 0, "0.00", Abs(grd.ValueMatrix(i, COL_V_BASEIVA)) * gobjMain.EmpresaActual.GNOpcion.PorcentajeIVA), "#0.00") & "</montoIva>"
                Else
                    cadenaFC = cadenaFC & "<montoIva>" & Format(IIf(Abs(grd.ValueMatrix(i, COL_V_BASEIVA)) = 0, "0.00", Abs(grd.ValueMatrix(i, COL_V_BASEIVA)) * gobjMain.EmpresaActual.GNOpcion.PorcentajeIVAAnt), "#0.00") & "</montoIva>"
                End If
                cadenaFCIVA = "<valorRetIva> 0.00 </valorRetIva>"
                cadenaFCIR = "<valorRetRenta> 0.00 </valorRetRenta>"
                
'                If i = 38 Then MsgBox ""
                
                'retencion IVA
                If grd.ValueMatrix(i, COL_V_TIPOCOMP) = 18 Then
                    Set rsRet = gobjMain.EmpresaActual.ConsANRetencionVentas2008ParaXML(grd.TextMatrix(i, COL_V_RUC))
                    If rsRet.RecordCount > 0 Then
                        MiGetRowsRep rsRet, grdRet
                        
                            For j = 1 To grdRet.Rows - 1
                                If grd.TextMatrix(i, COL_V_RUC) = grdRet.TextMatrix(j, COL_RF_RUC) Then
                                    If grdRet.TextMatrix(j, COL_RF_TIPO) = -1 Then
                                        'valores iva
                                        cadenaFCIVA = "<valorRetIva>" & Format(grdRet.ValueMatrix(j, COL_RF_VALOR), "#0.00") & "</valorRetIva>"
                                    Else
                                        'valores renta
                                        cadenaFCIR = "<valorRetRenta>" & Format(grdRet.ValueMatrix(j, COL_RF_VALOR), "#0.00") & "</valorRetRenta>"
                                    End If
                                End If
                                'busca en tablas de retencion
                                For k = 1 To GrdRetVentas.Rows - 1
                                    If grdRet.TextMatrix(j, COL_RF_RUC) = GrdRetVentas.TextMatrix(k, COL_V_RUC) Then
                                        If grdRet.TextMatrix(j, COL_RF_TIPO) = GrdRetVentas.TextMatrix(k, 5) Then
                                            If grdRet.ValueMatrix(j, COL_RF_VALOR - 1) = GrdRetVentas.ValueMatrix(k, 6) Then
                                                GrdRetVentas.TextMatrix(k, 8) = "OK"
                                                GrdRetVentas.RemoveItem k
                                                GrdRetVentas.Refresh
                                                Exit For
                                            End If
                                        End If
                                    End If
                                Next k
                            Next j
                            
                            
                            
                    End If
                Else
                    For j = grdRet.Rows - 1 To 1 Step -1
                        grdRet.RemoveItem (j)
                    Next j
                End If
                cadenaFC = cadenaFC & cadenaFCIVA
                cadenaFC = cadenaFC & cadenaFCIR
                cadenaFC = cadenaFC & "</detalleVentas>"
                cadenaF = cadenaF & cadenaFC
                grd.ShowCell i, grd.ColIndex("Resultado")
                grd.TextMatrix(i, grd.ColIndex("Resultado")) = " OK "
        
SiguienteFila:
    Next i
    
        SubTotalizarCF (COL_V_TIPOCOMP)
        TotalizarCF

    
    grd.ColWidth(grd.ColIndex("Resultado")) = 5000
    prg.value = 0
    
    cadenaF = cadenaF & GeneraArchivoATSVentasXMLSoloRetencion
    
    If bandCF Then
        cadenaF = cadenaF & GeneraArchivoATSVentasXMLCF
        lblPasos(7).Caption = "OK."
        cadenaF = cadenaF & "</ventas>"

    Else
    If Len(lblPasos(7).Caption) = 0 Then
        lblPasos(7).Caption = "OK."
        cadenaF = cadenaF & "</ventas>"
    Else
        cadenaFC = ""
    End If
    End If
    cad = cadenaF
    Exit Function
cancelado:
    GeneraArchivoATSVentasXML = False
ErrTrap:
    grd.TextMatrix(grd.Rows - 1, 2) = Err.Description
    GeneraArchivoATSVentasXML = False
End Function


Private Function BuscarANuladosATS()
    On Error GoTo ErrTrap
        With grd
        .Redraw = False
        .Rows = .FixedRows
        If Not frmB_Trans.Inicio(gobjMain, "IMPAN", dtpPeriodo.value) Then
            grd.SetFocus
        End If
        mObjCond.fecha1 = gobjMain.objCondicion.fecha1
        mObjCond.fecha2 = gobjMain.objCondicion.fecha2
        MiGetRowsRep gobjMain.EmpresaActual.ConsANComprobantesAnulado2008ParaXML(), grd

        'GeneraArchivo

        ConfigCols "IMPCA"
        AjustarAutoSize grd, -1, -1
        grd.ColWidth(0) = "500"


        GNPoneNumFila grd, False
        GNPoneNumFila grdRet, False

        .Redraw = True
    End With

    Exit Function
ErrTrap:
    grd.Redraw = True
    DispErr
    Exit Function
End Function


Private Function GenerarANuladosATS(ByRef cad As String) As Boolean
    On Error GoTo ErrTrap
        GenerarANuladosATS = False
        GenerarANuladosATS = GeneraArchivoATSAnuladosXML(cad)
    Exit Function
ErrTrap:
    grd.Redraw = True
    DispErr
    Exit Function
End Function


Private Function GeneraArchivoATSAnuladosXML(ByRef cad As String) As Boolean
    Dim cadenaAN As String
    Dim i As Long, j As Long
    Dim msg As String
    On Error GoTo ErrTrap
    GeneraArchivoATSAnuladosXML = True
    grd.Refresh
        cadenaAN = "<anulados>"
        If grd.Rows < 1 Then
            prg.value = 0
            cadenaAN = cadenaAN & "</anulados>"
            cad = cadenaAN
            GeneraArchivoATSAnuladosXML = True
            GoTo SiguienteFila
        End If
            prg.max = grd.Rows - 1
            For i = 1 To grd.Rows - 1
                If grd.IsSubtotal(i) Then GoTo SiguienteFila
                prg.value = i
                DoEvents
                cadenaAN = cadenaAN & "<detalleAnulados>"
                If grd.ValueMatrix(i, COL_A_TIPODOC) <> 0 Then
                    cadenaAN = cadenaAN & "<tipoComprobante>" & grd.TextMatrix(i, COL_A_TIPODOC) & "</tipoComprobante>"
                Else
                        msg = " El Tipo de Comprobante " & grd.TextMatrix(i, COL_A_TIPODOC) & " Incorrecto"
                            'MsgBox msg
                            grd.TextMatrix(i, grd.ColIndex("Resultado")) = " Error " & msg
                            grd.Cell(flexcpBackColor, i, 1, i, grd.ColIndex("Resultado")) = vbRed
                            grd.ShowCell i, grd.ColIndex("Resultado")
                            GeneraArchivoATSAnuladosXML = False
                            lblPasos(8).Caption = "Error"
                            GoTo SiguienteFila
               End If
                cadenaAN = cadenaAN & "<establecimiento>" & grd.TextMatrix(i, COL_A_NUMESTA) & "</establecimiento>"
                cadenaAN = cadenaAN & "<puntoEmision>" & grd.TextMatrix(i, COL_A_NUMPUNTO) & "</puntoEmision>"
                cadenaAN = cadenaAN & "<secuencialInicio>" & grd.TextMatrix(i, COL_A_NUMSECUE) & "</secuencialInicio>"
                cadenaAN = cadenaAN & "<secuencialFin>" & grd.TextMatrix(i, COL_A_NUMSECUE) & "</secuencialFin>"
                If Len(grd.TextMatrix(i, COL_A_NUMAUTO)) <> 10 Or grd.ValueMatrix(i, COL_A_NUMAUTO) < 1 Then
                            msg = " El Numero de Autorizaci�n SRI " & grd.TextMatrix(i, COL_A_NUMAUTO) & " Incorrecto"
                            'MsgBox msg
                            grd.TextMatrix(i, grd.ColIndex("Resultado")) = " Error " & msg
                            grd.Cell(flexcpBackColor, i, 1, i, grd.ColIndex("Resultado")) = vbRed
                            grd.ShowCell i, grd.ColIndex("Resultado")
                            GeneraArchivoATSAnuladosXML = False
                            lblPasos(8).Caption = "Error"
                            GoTo SiguienteFila
                Else
                    cadenaAN = cadenaAN & "<autorizacion>" & grd.TextMatrix(i, COL_A_NUMAUTO) & "</autorizacion>"
                End If
                
                cadenaAN = cadenaAN & "</detalleAnulados>"
                grd.ShowCell i, grd.ColIndex("Resultado")
                grd.TextMatrix(i, grd.ColIndex("Resultado")) = " OK "

SiguienteFila:
    Next i
    grd.ColWidth(grd.ColIndex("Resultado")) = 5000
    prg.value = 0
    If Len(lblPasos(11).Caption) = 0 Then
        lblPasos(11).Caption = "OK."
        cadenaAN = cadenaAN & "</anulados>"
    Else
        cadenaAN = ""
    End If
    cad = cadenaAN
    Exit Function
    
cancelado:
    GeneraArchivoATSAnuladosXML = False
ErrTrap:
    grd.TextMatrix(grd.Rows - 1, 2) = Err.Description
    GeneraArchivoATSAnuladosXML = False
End Function

Private Function BuscarComprasREOC()
    
    On Error GoTo ErrTrap
        With grd
        .Redraw = False
        .Rows = .FixedRows
        If Not frmB_Trans.Inicio(gobjMain, "IMPCPI", dtpPeriodo.value) Then
            grd.SetFocus
        End If
        mObjCond.fecha1 = gobjMain.objCondicion.fecha1
        mObjCond.fecha2 = gobjMain.objCondicion.fecha2
        MiGetRowsRep gobjMain.EmpresaActual.ConsANCompras2008ParaXML(), grd
        
        'GeneraArchivo
        
        ConfigCols "IMPCPI"
        ConfigCols "IMPCPIR"
        AjustarAutoSize grd, -1, -1
        AjustarAutoSize grdRet, -1, -1
        grd.ColWidth(0) = "500"
        grdRet.ColFormat(COL_R_BASE) = "#,#0.00"
        grdRet.ColFormat(COL_R_VALOR) = "#,#0.00"
        
        
        GNPoneNumFila grd, False
        GNPoneNumFila grdRet, False
        
        .Redraw = True
    End With
    Exit Function
ErrTrap:
    grd.Redraw = True
    DispErr
    Exit Function
End Function
    
Private Function GenerarComprasREOC(ByRef cad As String) As Boolean
    
    On Error GoTo ErrTrap
        GenerarComprasREOC = False
        GenerarComprasREOC = GeneraArchivoREOCComprasXML(cad)
    
    Exit Function
ErrTrap:
    DispErr
    Exit Function
End Function

Private Function GeneraArchivoEncabezadoREOCXML() As String
    Dim obj As GNOpcion, cad As String
    cad = "<?xml version=" & """1.0""" & " encoding=" & """ISO-8859-1""" & "" & " standalone=" & """yes""" & "?>"
    cad = cad & "<!--  Generado por Ishida Asociados   -->"
    cad = cad & "<!--  Dir: Av. Espana  y Elia Liut Aeropuerto Mariscal Lamar Segundo Piso -->"
    cad = cad & "<!--  Telf: 098499003, 072870346      -->"
    cad = cad & "<!--  email: ishidacue@hotmail.com    -->"
    cad = cad & "<!--  Cuenca - Ecuador                -->"
    cad = cad & "<!--  SISTEMAS DE GESTION EMPRESASRIAL-->"
        
    cad = cad & "<reoc>"
        
    cad = cad & "<numeroRuc>" & Format(gobjMain.EmpresaActual.GNOpcion.ruc, "0000000000000") & "</numeroRuc>"
    cad = cad & "<anio>" & Year(mObjCond.fecha1) & "</anio>"
    cad = cad & "<mes>" & IIf(Len(Month(mObjCond.fecha1)) = 1, "0" & Month(mObjCond.fecha1), Month(mObjCond.fecha1)) & "</mes>"
    GeneraArchivoEncabezadoREOCXML = cad
End Function



'''''Private Function GeneraArchivoREOCComprasXML(ByRef cad As String) As Boolean
'''''    Dim cadenaCP As String
'''''    Dim i As Long, j As Long
'''''    Dim vIR As Variant, cadenaCPIR As String
'''''    Dim FilasIR As Long, ColumnasIR As Long, iIR As Long, jIR As Long
'''''    Dim rsRet As Recordset, cadenaCPIVA30 As String
'''''    Dim cadenaCPIVA70 As String, cadenaCPIVA100 As String, cadenaRET As String
'''''    Dim rsNC As Recordset, cadenaNC As String
'''''
'''''    On Error GoTo ErrTrap
'''''    GeneraArchivoREOCComprasXML = False
'''''    grd.Refresh
'''''    With grd
'''''        cadenaCP = "<compras>"
'''''        If grd.Rows > 1 Then
'''''            prg.max = .Rows - 1
'''''            For i = 1 To grd.Rows - 1
'''''                prg.value = i
'''''                DoEvents
'''''                Set rsRet = gobjMain.EmpresaActual.ConsANRetencionCompras2008ParaXML(.ValueMatrix(i, COL_C_TRANSID))
'''''                 cadenaRET = ""
'''''                If rsRet.RecordCount > 0 Then
'''''                    MiGetRowsRep rsRet, grdRet
'''''                    cadenaCPIR = "<air>"
'''''                    For j = 1 To grdRet.Rows - 1
'''''                        If (.TextMatrix(i, COL_C_TRANS) = grdRet.TextMatrix(j, COL_R_TRANS)) And (.TextMatrix(i, COL_C_NUMTRANS) = grdRet.TextMatrix(j, COL_R_NUMTRANS)) And (.TextMatrix(i, COL_C_RUC) = grdRet.TextMatrix(j, COL_R_RUC)) Then
'''''
'''''                            If grdRet.TextMatrix(j, COL_R_TIPO) <> -1 Then
'''''                                If j = 1 Then
'''''                                    cadenaCP = cadenaCP & "<detalleCompras>"
'''''                                    Select Case .TextMatrix(i, COL_C_TIPODOC)
'''''                                        Case "R":                     cadenaCP = cadenaCP & "<tpIdProv>" & "01" & "</tpIdProv>"
'''''                                        Case "C":                     cadenaCP = cadenaCP & "<tpIdProv>" & "02" & "</tpIdProv>"
'''''                                        Case "P":                     cadenaCP = cadenaCP & "<tpIdProv>" & "03" & "</tpIdProv>"
'''''                                        Case Else
'''''                                                MsgBox " El Proveedor " & .TextMatrix(i, COL_C_NOMBRE) & " No tiene seleccionado el tipo de Documento"
'''''                                                .TextMatrix(i, grd.ColIndex("Resultado")) = " Error "
'''''                                                grd.ShowCell i, grd.ColIndex("Resultado")
''''''                                                GoTo cancelado
'''''                                    End Select
'''''                                    cadenaCP = cadenaCP & "<idProv>" & .TextMatrix(i, COL_C_RUC) & "</idProv>"
'''''                                    If Mid$(.TextMatrix(i, COL_C_CODTIPOCOMP), 1, 1) = "0" Then
'''''                                        cadenaCP = cadenaCP & "<tipoComp>" & Mid$(.TextMatrix(i, COL_C_CODTIPOCOMP), 2, 1) & "</tipoComp>"
'''''                                    Else
'''''                                        cadenaCP = cadenaCP & "<tipoComp>" & .TextMatrix(i, COL_C_CODTIPOCOMP) & "</tipoComp>"
'''''                                    End If
'''''                                    cadenaCP = cadenaCP & "<aut>" & .TextMatrix(i, COL_C_NUMAUTOSRI) & "</aut>"
'''''                                    cadenaCP = cadenaCP & "<estab>" & .TextMatrix(i, COL_C_NUMSERESTA) & "</estab>"
'''''                                    cadenaCP = cadenaCP & "<ptoEmi>" & .TextMatrix(i, COL_C_NUMSERPUNTO) & "</ptoEmi>"
'''''                                    cadenaCP = cadenaCP & "<sec>" & .TextMatrix(i, COL_C_NUMSECUENCIAL) & "</sec>"
'''''                                    cadenaCP = cadenaCP & "<fechaEmiCom>" & .TextMatrix(i, COL_C_FECHATRANS) & "</fechaEmiCom>"
'''''
'''''                                    cadenaCPIR = "<air>"
'''''                                End If
'''''                                'valores renta
'''''                                cadenaCPIR = cadenaCPIR & "<detalleAir>"
'''''                                cadenaCPIR = cadenaCPIR & "<codRetAir>" & grdRet.TextMatrix(j, COL_R_CODIGOSRI) & "</codRetAir>"
'''''                                cadenaCPIR = cadenaCPIR & "<porcentaje>" & grdRet.ValueMatrix(j, COL_R_PORCEN) & "</porcentaje>"
'''''                                cadenaCPIR = cadenaCPIR & "<base0>" & Format(.ValueMatrix(i, COL_C_BASE0), "#0.00") & "</base0>"
'''''                                cadenaCPIR = cadenaCPIR & "<baseGrav>" & Format(grdRet.ValueMatrix(j, COL_R_BASE), "#0.00") & "</baseGrav>"
'''''                                cadenaCPIR = cadenaCPIR & "<baseNoGrav>" & Format(.ValueMatrix(i, COL_C_BASENO12), "#0.00") & "</baseNoGrav>"
'''''                                cadenaCPIR = cadenaCPIR & "<valRetAir>" & Format(grdRet.ValueMatrix(j, COL_R_VALOR), "#0.00") & "</valRetAir>"
'''''                                cadenaCPIR = cadenaCPIR & "</detalleAir>"
'''''                                cadenaRET = cadenaRET & "<autRet>" & grdRet.TextMatrix(j, COL_R_NUMAUTO) & "</autRet>"
'''''                                cadenaRET = cadenaRET & "<estabRet>" & grdRet.TextMatrix(j, COL_R_NUMEST) & "</estabRet>"
'''''                                cadenaRET = cadenaRET & "<ptoEmiRet>" & grdRet.TextMatrix(j, COL_R_NUMPTO) & "</ptoEmiRet>"
'''''                                cadenaRET = cadenaRET & "<secRet>" & grdRet.TextMatrix(j, COL_R_NUMRET) & "</secRet>"
'''''                                cadenaRET = cadenaRET & "<fechaEmiRet>" & grdRet.TextMatrix(j, COL_R_FECHARET) & "</fechaEmiRet>"
'''''
'''''                            End If
'''''                        End If
'''''                    Next j
'''''                Else
'''''                    For j = grdRet.Rows - 1 To 1 Step -1
'''''                        grdRet.RemoveItem (j)
'''''                    Next j
'''''                End If
'''''                If rsRet.RecordCount > 0 Then
'''''                    cadenaCPIR = cadenaCPIR & "</air>"
'''''                    cadenaCP = cadenaCP & cadenaCPIR & cadenaRET
'''''                    cadenaCP = cadenaCP & "</detalleCompras>"
'''''                End If
'''''                grd.ShowCell i, grd.ColIndex("Resultado")
'''''                .TextMatrix(i, grd.ColIndex("Resultado")) = " OK "
'''''            Next i
'''''        End If
'''''    End With
'''''    prg.value = 0
'''''    cadenaCP = cadenaCP & "</compras>"
'''''    cad = cadenaCP
'''''    GeneraArchivoREOCComprasXML = True
'''''    Exit Function
'''''cancelado:
'''''    GeneraArchivoREOCComprasXML = False
'''''ErrTrap:
'''''    grd.TextMatrix(grd.Rows - 1, 2) = Err.Description
'''''    GeneraArchivoREOCComprasXML = False
'''''End Function

Private Function GeneraArchivoREOCComprasXML(ByRef cad As String) As Boolean
    Dim cadenaCP As String
    Dim i As Long, j As Long
    Dim vIR As Variant, cadenaCPIR As String
    Dim FilasIR As Long, ColumnasIR As Long, iIR As Long, jIR As Long
    Dim rsRet As Recordset, cadenaCPIVA30 As String
    Dim cadenaCPIVA70 As String, cadenaCPIVA100 As String, cadenaRET As String
    Dim rsNC As Recordset, cadenaNC As String
    Dim msg As String
    
    On Error GoTo ErrTrap
    GeneraArchivoREOCComprasXML = True
    grd.Refresh
    'With grd
        cadenaCP = "<compras>"
            If grd.Rows < 1 Then
                prg.value = 0
                cadenaCP = cadenaCP & "</compras>"
                cad = cadenaCP
                GeneraArchivoREOCComprasXML = True
                GoTo SiguienteFila
            End If
            prg.max = grd.Rows - 1
            For i = 1 To grd.Rows - 1
                If grd.IsSubtotal(i) Then GoTo SiguienteFila
                prg.value = i
                DoEvents
                cadenaCP = cadenaCP & "<detalleCompras>"
                Select Case grd.TextMatrix(i, COL_C_TIPODOC)
                    Case "R":                     cadenaCP = cadenaCP & "<tpIdProv>" & "01" & "</tpIdProv>"
                    Case "C":                     cadenaCP = cadenaCP & "<tpIdProv>" & "02" & "</tpIdProv>"
                    Case "P":                     cadenaCP = cadenaCP & "<tpIdProv>" & "03" & "</tpIdProv>"
                    Case Else
                            msg = " El Proveedor " & grd.TextMatrix(i, COL_C_NOMBRE) & " Tipo de Documento Incorrecto"
                            grd.TextMatrix(i, grd.ColIndex("Resultado")) = " Error " & msg
                            grd.ShowCell i, grd.ColIndex("Resultado")
                            grd.Cell(flexcpBackColor, i, 1, i, grd.ColIndex("Resultado")) = vbRed
                            GeneraArchivoREOCComprasXML = False
                            lblPasos(5).Caption = "Error"
                            GoTo SiguienteFila
                End Select
                
                
                
                cadenaCP = cadenaCP & "<idProv>" & grd.TextMatrix(i, COL_C_RUC) & "</idProv>"
                If Mid$(grd.TextMatrix(i, COL_C_CODTIPOCOMP), 1, 1) = "0" Then
                    cadenaCP = cadenaCP & "<tipoComprobante>" & Mid$(grd.TextMatrix(i, COL_C_CODTIPOCOMP), 2, 1) & "</tipoComprobante>"
                Else
                    cadenaCP = cadenaCP & "<tipoComp>" & grd.TextMatrix(i, COL_C_CODTIPOCOMP) & "</tipoComp>"
                End If
                If Len(grd.TextMatrix(i, COL_C_NUMAUTOSRI)) <> 10 Or grd.ValueMatrix(i, COL_C_NUMAUTOSRI) < 1 Then
                            msg = " El Numero de Autorizaci�n SRI " & grd.TextMatrix(i, COL_C_NUMAUTOSRI) & " Incorrecto"
                            'MsgBox msg
                            grd.TextMatrix(i, grd.ColIndex("Resultado")) = " Error " & msg
                            grd.Cell(flexcpBackColor, i, 1, i, grd.ColIndex("Resultado")) = vbRed
                            grd.ShowCell i, grd.ColIndex("Resultado")
                            GeneraArchivoREOCComprasXML = False
                            lblPasos(5).Caption = "Error"
                            GoTo SiguienteFila
                Else
                    cadenaCP = cadenaCP & "<aut>" & grd.TextMatrix(i, COL_C_NUMAUTOSRI) & "</aut>"
                End If
                
                
                If Len(grd.TextMatrix(i, COL_C_NUMSERESTA)) <> 3 Or grd.ValueMatrix(i, COL_C_NUMSERESTA) = 0 Then
                            msg = " El Numero de Serie Establecimiento " & grd.TextMatrix(i, COL_C_NUMSERESTA) & " Incorrecto"
                            grd.TextMatrix(i, grd.ColIndex("Resultado")) = " Error " & msg
                            grd.Cell(flexcpBackColor, i, 1, i, grd.ColIndex("Resultado")) = vbRed
                            grd.ShowCell i, grd.ColIndex("Resultado")
                            GeneraArchivoREOCComprasXML = False
                            lblPasos(5).Caption = "Error"
                            GoTo SiguienteFila
                Else
                    cadenaCP = cadenaCP & "<estab>" & grd.TextMatrix(i, COL_C_NUMSERESTA) & "</estab>"
                End If
                If Len(grd.TextMatrix(i, COL_C_NUMSERPUNTO)) <> 3 Or grd.ValueMatrix(i, COL_C_NUMSERPUNTO) = 0 Then
                            msg = " El Numero de Serie Punto " & grd.TextMatrix(i, COL_C_NUMSERPUNTO) & " Incorrecto"
                            grd.TextMatrix(i, grd.ColIndex("Resultado")) = " Error " & msg
                            grd.Cell(flexcpBackColor, i, 1, i, grd.ColIndex("Resultado")) = vbRed
                            grd.ShowCell i, grd.ColIndex("Resultado")
                            GeneraArchivoREOCComprasXML = False
                            lblPasos(5).Caption = "Error"
                            GoTo SiguienteFila
                Else
                    cadenaCP = cadenaCP & "<ptoEmi>" & grd.TextMatrix(i, COL_C_NUMSERPUNTO) & "</ptoEmi>"
                End If
'                If grd.ValueMatrix(i, COL_C_NUMSECUENCIAL) = 7925 Then MsgBox "hola"
                cadenaCP = cadenaCP & "<sec>" & grd.TextMatrix(i, COL_C_NUMSECUENCIAL) & "</sec>"
                cadenaCP = cadenaCP & "<fechaEmiCom>" & grd.TextMatrix(i, COL_C_FECHATRANS) & "</fechaEmiCom>"
                
                Set rsRet = gobjMain.EmpresaActual.ConsANRetencionCompras2008ParaXML(grd.ValueMatrix(i, COL_C_TRANSID))
                If rsRet.RecordCount = 0 And grd.TextMatrix(i, COL_C_CODTIPOCOMP) <> "4" Then
                    Set rsRet = gobjMain.EmpresaActual.ConsANRetencionCompras2008ParaXMLSinRetencion(grd.ValueMatrix(i, COL_C_TRANSID))
                End If
                
                cadenaCPIR = "<air>"
                 cadenaRET = ""
                If rsRet.RecordCount > 0 Then
                    MiGetRowsRep rsRet, grdRet
                    
                    For j = 1 To grdRet.Rows - 1
                        If (grd.TextMatrix(i, COL_C_TRANS) = grdRet.TextMatrix(j, COL_R_TRANS)) And (grd.TextMatrix(i, COL_C_NUMTRANS) = grdRet.TextMatrix(j, COL_R_NUMTRANS)) And (grd.TextMatrix(i, COL_C_RUC) = grdRet.TextMatrix(j, COL_R_RUC)) Then
                            
                            If grdRet.TextMatrix(j, COL_R_TIPO) <> -1 Then
                                'valores renta
                                cadenaCPIR = cadenaCPIR & "<detalleAir>"
                                cadenaCPIR = cadenaCPIR & "<codRetAir>" & grdRet.TextMatrix(j, COL_R_CODIGOSRI) & "</codRetAir>"
                                cadenaCPIR = cadenaCPIR & "<porcentaje>" & Format(grdRet.ValueMatrix(j, COL_R_PORCEN), "#0.0") & "</porcentaje>"
                                cadenaCPIR = cadenaCPIR & "<base0>" & Format(grd.ValueMatrix(i, COL_C_BASE0), "#0.00") & "</base0>"
                                cadenaCPIR = cadenaCPIR & "<baseGrav>" & Format(grdRet.ValueMatrix(j, COL_R_BASE), "#0.00") & "</baseGrav>"
                                cadenaCPIR = cadenaCPIR & "<baseNoGrav>" & Format(grd.ValueMatrix(i, COL_C_BASENO12), "#0.00") & "</baseNoGrav>"
                                cadenaCPIR = cadenaCPIR & "<valRetAir>" & Format(grdRet.ValueMatrix(j, COL_R_VALOR), "#0.00") & "</valRetAir>"
                                cadenaCPIR = cadenaCPIR & "</detalleAir>"
                                If grdRet.ValueMatrix(j, COL_R_PORCEN) = "0" Then
'                                    cadenaRET = cadenaRET & "<autRet></autRet>"
'                                    cadenaRET = cadenaRET & "<estabRet></estabRet>"
'                                    cadenaRET = cadenaRET & "<ptoEmiRet></ptoEmiRet>"
'                                    cadenaRET = cadenaRET & "<secRet></secRet>"
'                                    cadenaRET = cadenaRET & "<fechaEmiRet></fechaEmiRet>"
                                
                                Else
                                    cadenaRET = cadenaRET & "<autRet>" & grdRet.TextMatrix(j, COL_R_NUMAUTO) & "</autRet>"
                                    cadenaRET = cadenaRET & "<estabRet>" & grdRet.TextMatrix(j, COL_R_NUMEST) & "</estabRet>"
                                    cadenaRET = cadenaRET & "<ptoEmiRet>" & grdRet.TextMatrix(j, COL_R_NUMPTO) & "</ptoEmiRet>"
                                    cadenaRET = cadenaRET & "<secRet>" & grdRet.TextMatrix(j, COL_R_NUMRET) & "</secRet>"
                                    cadenaRET = cadenaRET & "<fechaEmiRet>" & grdRet.TextMatrix(j, COL_R_FECHARET) & "</fechaEmiRet>"
                                End If
                            
                            
                            End If
                        End If
                    
                        If CDate(grdRet.TextMatrix(j, COL_R_FECHARET)) < CDate(grd.TextMatrix(i, COL_C_FECHAREGISTRO)) Then
                            msg = "La fecha de la Retenci�n " & grdRet.TextMatrix(j, COL_R_RETTRANS) & "-" & _
                                        grdRet.TextMatrix(j, COL_R_RETNUMTRANS) & _
                                        " no puede ser menor a la fecha de la Compra " & _
                                        grd.TextMatrix(i, COL_C_TRANS) & "-" & _
                                        grd.TextMatrix(i, COL_C_NUMTRANS)
                            'MsgBox msg
                            grd.TextMatrix(i, grd.ColIndex("Resultado")) = " Error " & msg
                            grd.Cell(flexcpBackColor, i, 1, i, grd.ColIndex("Resultado")) = vbRed
                            grd.ShowCell i, grd.ColIndex("Resultado")
                            lblPasos(5).Caption = "Error"
                            GeneraArchivoREOCComprasXML = False
                            GoTo SiguienteFila
                        End If
                        If CDate(grd.TextMatrix(i, COL_C_FECHAREGISTRO)) < CDate(grd.TextMatrix(i, COL_C_FECHATRANS)) Then
                            msg = "La fecha de registro de la Transaccion " & _
                            grd.TextMatrix(i, COL_C_TRANS) & "-" & _
                            grd.TextMatrix(i, COL_C_NUMTRANS) _
                            & " debe ser menor o igual a la fecha de registro "
                            grd.TextMatrix(i, grd.ColIndex("Resultado")) = " Error " & msg
                            grd.Cell(flexcpBackColor, i, 1, i, grd.ColIndex("Resultado")) = vbRed
                            grd.ShowCell i, grd.ColIndex("Resultado")
                            GeneraArchivoREOCComprasXML = False
                            lblPasos(5).Caption = "Error"
                            GoTo SiguienteFila
                            
                        End If
                    Next j
                Else
                    For j = grdRet.Rows - 1 To 1 Step -1
                        grdRet.RemoveItem (j)
                    Next j
                End If

                cadenaCP = cadenaCP & cadenaCPIR & "</air>" & cadenaRET
                cadenaCP = cadenaCP & "</detalleCompras>"
                grd.ShowCell i, grd.ColIndex("Resultado")
                grd.TextMatrix(i, grd.ColIndex("Resultado")) = " OK "
                grd.Cell(flexcpBackColor, i, 1, i, grd.ColIndex("Resultado")) = vbWhite
            GoTo SiguienteFila
    Exit Function
SiguienteFila:
    Next i
    grd.ColWidth(grd.ColIndex("Resultado")) = 5000
    prg.value = 0
    If Len(lblPasos(5).Caption) = 0 Then
        lblPasos(5).Caption = "OK."
        cadenaCP = cadenaCP & "</compras>"
    Else
        cadenaCP = ""
    End If
    cad = cadenaCP
Exit Function
cancelado:
    GeneraArchivoREOCComprasXML = False
ErrTrap:
    grd.TextMatrix(grd.Rows - 1, 2) = Err.Description
    GeneraArchivoREOCComprasXML = False
End Function

Public Sub Exportar(tag As String)
    Dim file As String, NumFile As Integer, Cadena As String
    Dim Filas As Long, Columnas As Long, i As Long, j As Long
    Dim pos As Integer
'    If grd.Rows = grd.FixedRows Then Exit Sub
    On Error GoTo ErrTrap
    
        With dlg1
          .CancelError = True
          '.Filter = "Texto (Separado por coma)|*.txt|Excel 97(XLS)|*.xls"
          .Filter = "Texto (Separado por coma)|*.csv"
          .ShowSave
          
          file = .filename
        End With
        
    
    If ExisteArchivo(file) Then
        If MsgBox("El nombre del archivo " & file & " ya existe desea sobreescribirlo?", vbYesNo) = vbNo Then
            Exit Sub
        End If
    End If
    
    NumFile = FreeFile
    
    Open file For Output Access Write As #NumFile
    
    Cadena = ""
    For i = 0 To grd.Rows - 1
        For j = 2 To grd.Cols - 1
            Select Case tag          ' jeaa 04/11/03 para que se no se guarden las columnas ocultas
                Case "IMPCP"
                        If j = COL_C_NOMBRE Then j = j + 1  'columna nombre
            End Select
                If pos = 0 Then
                    Cadena = Cadena & grd.TextMatrix(i, j) & ","
                Else
                    Cadena = Cadena & Mid$(grd.TextMatrix(i, j), 1, pos - 1) & Mid$(grd.TextMatrix(i, j), pos + 1, Len(grd.TextMatrix(i, j)) - 1) & ","
                End If


        Next j
        Cadena = Mid(Cadena, 1, Len(Cadena) - 1)
        Print #NumFile, Cadena
        Cadena = ""
    Next i

    
    Close NumFile
    MsgBox "El archivo se ha exportado con �xito"
    Exit Sub
ErrTrap:
    If Err.Number <> 32755 Then
        MsgBox Err.Description
    End If
    Close NumFile
End Sub

Private Sub AbrirArchivo(cad As String)
    Dim i As Long
    On Error GoTo ErrTrap
    With dlg1
        .CancelError = True
'        .Filter = "Texto (Separado por coma)|*.txt|Excel 97(XLS)|*.xls"
        .Filter = "Texto (Separado por coma *.csv)|*.csv|Texto (Separado por tabuladores *.txt)|*.txt|Todos *.*|*.*"
        .flags = cdlOFNFileMustExist
        If Len(.filename) = 0 Then          'Solo por primera vez, ubica a la carpeta de la aplicaci�n
            .filename = App.Path & "\*.csv"
        End If
        
        ConfigCols cad
        .ShowOpen
        
        Select Case UCase$(Right$(dlg1.filename, 4))
        Case ".TXT", ".CSV"
            VisualizarTexto dlg1.filename, cad
        Case Else
        End Select
    End With
    Exit Sub
ErrTrap:
    If Err.Number <> 32755 Then DispErr
    Exit Sub
End Sub

Private Sub VisualizarTexto(ByVal archi As String, cad As String)
    Dim f As Integer, s As String, i As Integer
    Dim Cadena
   On Error GoTo ErrTrap
    ReDim rec(0, 1)
    MensajeStatus "Est� leyendo el archivo " & archi & " ...", vbHourglass
    grd.Rows = grd.FixedRows    'Limpia la grilla
    grd.Redraw = flexRDNone
    f = FreeFile                'Obtiene n�mero disponible de archivo
    
    'Abre el archivo para lectura
    Open archi For Input As #f
        Do Until EOF(f)
            Line Input #f, s
            s = vbTab & Replace(s, ",", vbTab)      'Convierte ',' a TAB
            Select Case cad          ' jeaa 31-10-03 para aumentar las columnas ocultas
                Case "IMPCPI"
                    s = vbTab & s    '1,2' ' jeaa 31-10-03 para aumentar las columnas TRANSID
            
            End Select
           grd.AddItem s
        Loop
    Close #f
    RemueveSpace
    Select Case cad
        Case "IMPCPI"
            grd.Select 1, 1, 1, 1
    End Select
    grd.Sort = flexSortUseColSort
' poner numero
    GNPoneNumFila grd, False
    grd.Redraw = flexRDDirect
    AjustarAutoSize grd, -1, -1
    grd.ColWidth(grd.Cols - 1) = 4000
    grd.SetFocus
    MensajeStatus
    Exit Sub
ErrTrap:
    grd.Redraw = flexRDDirect
    MensajeStatus
    DispErr
    Close       'Cierra todo
    grd.SetFocus
    Exit Sub
End Sub

Private Sub RemueveSpace()
    Dim i As Long, j As Long
    
    With grd
        .Redraw = flexRDNone
        For i = .FixedRows To .Rows - 1
            For j = .FixedCols To .Cols - 1
                .TextMatrix(i, j) = Trim$(.TextMatrix(i, j))
            Next j
        Next i
        .Redraw = flexRDDirect
    End With
End Sub

Private Sub grd_KeyDown(KeyCode As Integer, Shift As Integer)
    If grd.IsSubtotal(grd.Row) Then Exit Sub
    Select Case KeyCode
    Case vbKeyInsert
        AgregarFila
    Case vbKeyDelete
        EliminarFila
    End Select
End Sub

Private Sub AgregarFila()
    On Error GoTo ErrTrap
    With grd
        .AddItem "", .Row + 1
        GNPoneNumFila grd, False
        .Row = .Row + 1
        .col = .FixedCols
    End With
    
    AjustarAutoSize grd, -1, -1
    grd.SetFocus
    Exit Sub
ErrTrap:
    MsgBox Err.Description
    grd.SetFocus
    Exit Sub
End Sub

Private Sub EliminarFila()
    On Error GoTo ErrTrap
    If grd.Row <> grd.FixedRows - 1 And Not grd.IsSubtotal(grd.Row) Then
        grd.RemoveItem grd.Row
        GNPoneNumFila grd, False
    End If
    grd.SetFocus
    Exit Sub
ErrTrap:
    MsgBox Err.Description
    grd.SetFocus
    Exit Sub
End Sub

Private Sub SubTotalizar(col As Long)
    Dim i As Long
    With grd
        For i = 1 To .Cols - 1
            If i = COL_C_CODTIPOCOMP Then i = i + 1
            If grd.ColData(i) = "SubTotal" Then
                    .subtotal flexSTSum, col, i, , grd.GridColor, vbBlack, , "Subtotal", col, True
            End If
        Next i
        .subtotal flexSTCount, col, col, , grd.GridColor, vbBlack, , "Subtotal", col, True
'        .subtotal flexSTSum, Col, Col, , grd.GridColor, vbBlack, , "Subtotal", Col, True
    End With
End Sub

Private Sub Totalizar()
    Dim i As Long
    With grd
        For i = 1 To .Cols - 1
            If i = COL_C_CODTIPOCOMP Then i = i + 1
            If grd.ColData(i) = "SubTotal" Then
                
                .subtotal flexSTSum, -1, i, "#,#0.00", .BackColorSel, vbYellow, vbBlack, "Total"
            End If
        Next i
'        .subtotal flexSTCount, -1, COL_C_CODTIPOCOMP, "#,#0", .BackColorSel, vbYellow, vbBlack, "Total"
    End With
End Sub


Private Sub SubTotalizarCF(col As Long)
    Dim i As Long
    col = 6
    With grdCF
        For i = 5 To .Cols - 1
'            If i = COL_V_CANTRANS Then i = i + 1
'            If grdCF.ColData(i) = "SubTotal" Then
                If i = COL_V_TIPOCOMP Then
                    .subtotal flexSTMax, 6, i, , grdCF.GridColor, vbBlack, , "Subtotal", col, True
                Else
                    .subtotal flexSTSum, 6, i, , grdCF.GridColor, vbBlack, , "Subtotal", col, True
                End If
'            End If
        Next i
        
        '.subtotal flexSTCount, col, col, , grdCF.GridColor, vbBlack, , "Subtotal", col, True
'        .subtotal flexSTMax, 6, 6, , grdCF.GridColor, vbBlack, , "Subtotal", 5, True
        '.subtotal flexSTCount, col, col, , grdCF.GridColor, vbBlack, , "Subtotal", col, True

    End With
End Sub

Private Sub TotalizarCF()
    Dim i As Long
    With grdCF
        For i = COL_V_TIPOCOMP To .Cols - 1
'            If i = COL_V_CANTRANS Then i = i + 1
'            If grdCF.ColData(i) = "SubTotal" Then
                If i = COL_V_TIPOCOMP Then

                    .subtotal flexSTMax, -1, i, "#,#0.00", .BackColorSel, vbYellow, vbBlack, "Total"
                Else
                    .subtotal flexSTSum, -1, i, "#,#0.00", .BackColorSel, vbYellow, vbBlack, "Total"
                End If
 '           End If
        Next i
'        .subtotal flexSTMax, COL_V_TIPOCOMP, COL_V_TIPOCOMP, , .BackColorSel, vbYellow, vbBlack, "Total"

    End With
End Sub


Private Function GeneraArchivoATSVentasXMLCF() As String
    Dim cadenaFC As String, cadenaFCIVA  As String
    Dim i As Long, j As Long
    Dim vIR As Variant, cadenaFCIR As String
    Dim FilasIR As Long, ColumnasIR As Long, iIR As Long, jIR As Long
    Dim rsRet As Recordset, cadenaFCIVA30 As String
    Dim cadenaFCIVA70 As String, cadenaFCIVA100 As String
    Dim rsNC As Recordset, cadenaNC As String
    Dim msg As String, pc As PCProvCli, bandCF As Boolean, filaCF As Integer
    Dim BandFact As Boolean
    
    On Error GoTo ErrTrap
    GeneraArchivoATSVentasXMLCF = ""
            BandFact = False
            For i = 1 To grdCF.Rows - 2
               If grdCF.IsSubtotal(i) Then
                    cadenaFC = cadenaFC & "<detalleVentas>"
                    cadenaFC = cadenaFC & "<tpIdCliente>07</tpIdCliente>"
                    cadenaFC = cadenaFC & "<idCliente>9999999999999</idCliente>"
                    If BandFact = False Then
                        cadenaFC = cadenaFC & "<tipoComprobante>18</tipoComprobante>"
                        BandFact = True
                    Else
                        cadenaFC = cadenaFC & "<tipoComprobante>4</tipoComprobante>"
                    End If
                    cadenaFC = cadenaFC & "<numeroComprobantes>" & Format(grdCF.TextMatrix(i, COL_V_CANTRANS), "#0") & "</numeroComprobantes>"
                    cadenaFC = cadenaFC & "<baseNoGraIva>" & Format(Abs(grdCF.ValueMatrix(i, COL_V_BASENOIVA)), "#0.00") & "</baseNoGraIva>"
                    cadenaFC = cadenaFC & "<baseImponible>" & Format(Abs(grdCF.ValueMatrix(i, COL_V_BASE0)), "#0.00") & "</baseImponible>"
                    cadenaFC = cadenaFC & "<baseImpGrav>" & Format(Abs(grdCF.ValueMatrix(i, COL_V_BASEIVA)), "#0.00") & "</baseImpGrav>"
                    'cadenaFC = cadenaFC & "<montoIva>" & Format(IIf(Abs(grdCF.ValueMatrix(i, COL_V_BASEIVA)) = 0, "0.00", Abs(grdCF.ValueMatrix(i, COL_V_BASEIVA)) * 0.12), "#0.00") & "</montoIva>"
                    If grd.TextMatrix(i, COL_V_FECHA) >= gobjMain.EmpresaActual.GNOpcion.FechaIVA Then
                        cadenaFC = cadenaFC & "<montoIva>" & Format(IIf(Abs(grdCF.ValueMatrix(i, COL_V_BASEIVA)) = 0, "0.00", Abs(grdCF.ValueMatrix(i, COL_V_BASEIVA)) * gobjMain.EmpresaActual.GNOpcion.PorcentajeIVA), "#0.00") & "</montoIva>"
                    Else
                        cadenaFC = cadenaFC & "<montoIva>" & Format(IIf(Abs(grdCF.ValueMatrix(i, COL_V_BASEIVA)) = 0, "0.00", Abs(grdCF.ValueMatrix(i, COL_V_BASEIVA)) * gobjMain.EmpresaActual.GNOpcion.PorcentajeIVAAnt), "#0.00") & "</montoIva>"
                    End If
                    
                    cadenaFCIVA = "<valorRetIva> 0.00 </valorRetIva>"
                    cadenaFCIR = "<valorRetRenta> 0.00 </valorRetRenta>"
                     cadenaFC = cadenaFC & cadenaFCIVA
                    cadenaFC = cadenaFC & cadenaFCIR
                    cadenaFC = cadenaFC & "</detalleVentas>"
                    
                End If
                grdCF.ShowCell i, grdCF.ColIndex("Resultado")
                grdCF.TextMatrix(i, grdCF.ColIndex("Resultado")) = " OK "
        
        Next i
    
    
    grdCF.ColWidth(grd.ColIndex("Resultado")) = 5000
    prg.value = 0
    GeneraArchivoATSVentasXMLCF = cadenaFC
    Exit Function
cancelado:
    GeneraArchivoATSVentasXMLCF = ""
ErrTrap:
    grdCF.TextMatrix(grd.Rows - 1, 2) = Err.Description
    GeneraArchivoATSVentasXMLCF = ""
End Function

Private Function GeneraArchivoATSVentasXMLSoloRetencion() As String
    Dim cadenaFC As String, cadenaFCIVA  As String
    Dim i As Long, j As Long
    Dim vIR As Variant, cadenaFCIR As String
    Dim FilasIR As Long, ColumnasIR As Long, iIR As Long, jIR As Long
    Dim rsRet As Recordset, cadenaFCIVA30 As String
    Dim cadenaFCIVA70 As String, cadenaFCIVA100 As String
    Dim rsNC As Recordset, cadenaNC As String
    Dim msg As String, pc As PCProvCli, bandCF As Boolean, filaCF As Integer
    Dim BandFact As Boolean
    
    On Error GoTo ErrTrap
        GeneraArchivoATSVentasXMLSoloRetencion = ""
            BandFact = False
            For i = 1 To GrdRetVentas.Rows - 1
               If GrdRetVentas.TextMatrix(i, 8) <> "OK" Then
                    cadenaFC = cadenaFC & "<detalleVentas>"
                Select Case GrdRetVentas.TextMatrix(i, COL_V_TIPODOC)
                    Case "R":                     cadenaFC = cadenaFC & "<tpIdCliente>" & "04" & "</tpIdCliente>"
                    Case "C":                     cadenaFC = cadenaFC & "<tpIdCliente>" & "05" & "</tpIdCliente>"
                    Case "P":                     cadenaFC = cadenaFC & "<tpIdCliente>" & "06" & "</tpIdCliente>"
                    Case "F":                     cadenaFC = cadenaFC & "<tpIdCliente>" & "07" & "</tpIdCliente>"
                End Select
                    
                  
                    cadenaFC = cadenaFC & "<idCliente>" & GrdRetVentas.TextMatrix(i, COL_V_RUC) & "</idCliente>"
                    cadenaFC = cadenaFC & "<tipoComprobante>18</tipoComprobante>"
                    cadenaFC = cadenaFC & "<numeroComprobantes>0</numeroComprobantes>"
                    cadenaFC = cadenaFC & "<baseNoGraIva>0.00</baseNoGraIva>"
                    cadenaFC = cadenaFC & "<baseImponible>0.00</baseImponible>"
                    cadenaFC = cadenaFC & "<baseImpGrav>0.00</baseImpGrav>"
                    cadenaFC = cadenaFC & "<montoIva>0.00</montoIva>"
                    cadenaFCIVA = "<valorRetIva> 0.00 </valorRetIva>"
                    cadenaFCIR = "<valorRetRenta> 0.00 </valorRetRenta>"
                    
                    If GrdRetVentas.TextMatrix(i, 5) = -1 Then
                        'valores iva
                        cadenaFCIVA = "<valorRetIva>" & Format(GrdRetVentas.ValueMatrix(i, 7), "#0.00") & "</valorRetIva>"
                        If i + 1 < GrdRetVentas.Rows - 1 Then
                            If GrdRetVentas.TextMatrix(i, COL_V_RUC) = GrdRetVentas.TextMatrix(i + 1, COL_V_RUC) And GrdRetVentas.TextMatrix(i + 1, 5) = 0 Then
                                cadenaFCIR = "<valorRetRenta>" & Format(GrdRetVentas.ValueMatrix(i + 1, 7), "#0.00") & "</valorRetRenta>"
                                GrdRetVentas.TextMatrix(i + 1, 8) = "OK"
                            End If
                        End If
                        
                    Else
                        'valores renta
                        cadenaFCIR = "<valorRetRenta>" & Format(GrdRetVentas.ValueMatrix(i, 7), "#0.00") & "</valorRetRenta>"
                        If i + 1 <= GrdRetVentas.Rows - 1 Then
                            If GrdRetVentas.TextMatrix(i, COL_V_RUC) = GrdRetVentas.TextMatrix(i + 1, COL_V_RUC) And GrdRetVentas.TextMatrix(i + 1, 5) = -1 Then
                                cadenaFCIVA = "<valorRetIva>" & Format(GrdRetVentas.ValueMatrix(i + 1, 7), "#0.00") & "</valorRetIva>"
                                GrdRetVentas.TextMatrix(i + 1, 8) = "OK"
                            End If
                        End If
                        
                        
                        
                    End If
                    
                    
                     cadenaFC = cadenaFC & cadenaFCIVA
                    cadenaFC = cadenaFC & cadenaFCIR
                    cadenaFC = cadenaFC & "</detalleVentas>"
                    
                End If
                GrdRetVentas.ShowCell i, 8
                GrdRetVentas.TextMatrix(i, 8) = " OK "
        
        Next i
    
    
    GrdRetVentas.ColWidth(8) = 5000
    prg.value = 0
    GeneraArchivoATSVentasXMLSoloRetencion = cadenaFC
    Exit Function
cancelado:
    GeneraArchivoATSVentasXMLSoloRetencion = ""
ErrTrap:
    grdCF.TextMatrix(grd.Rows - 1, 2) = Err.Description
    GeneraArchivoATSVentasXMLSoloRetencion = ""
End Function

