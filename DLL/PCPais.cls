VERSION 1.0 CLASS
BEGIN
  MultiUse = -1  'True
  Persistable = 0  'NotPersistable
  DataBindingBehavior = 0  'vbNone
  DataSourceBehavior  = 0  'vbNone
  MTSTransactionMode  = 0  'NotAnMTSObject
END
Attribute VB_Name = "PCPais"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = True
Attribute VB_PredeclaredId = False
Attribute VB_Exposed = True
Option Explicit

Private Type T_PROPS
    IdPais As Long
    CodPais As String
    Descripcion As String
    BandValida As Boolean
    fechagrabado As Date
    objEmpresa As Empresa       'Referencia al objeto padre
    
End Type

Private mProps As T_PROPS
Private mbooEsNuevo As Boolean
Private mbooModificado As Boolean


Public Sub Grabar()
    Dim sql As String, rs As Recordset
    
    'Si no est� modificado no hace nada
    If Not mbooModificado Then Exit Sub
  
    sql = "SELECT CodPais FROM PCPais " & _
          "WHERE (CodPais='" & mProps.CodPais & "') AND " & _
                "(IdPais<>" & mProps.IdPais & ")"
    Set rs = mProps.objEmpresa.OpenRecordset(sql)
    If Not rs.EOF Then      'Si ya existe el codigo
        Err.Raise ERR_REPITECODIGO, "PCPais", MSGERR_REPITECODIGO
    End If
    rs.Close
    
    'Si es nuevo
    If mbooEsNuevo Then
        sql = "SELECT * FROM PCPAIS WHERE 1=0"
        Set rs = mProps.objEmpresa.OpenRecordsetParaEdit(sql)
        rs.AddNew
    
    'Si es modificada
    Else
        'Recupera el registro correspondiente para modificar
        sql = "SELECT * FROM PCPais WHERE IDPais=" & mProps.IdPais
        Set rs = mProps.objEmpresa.OpenRecordsetParaEdit(sql)
#If DAOLIB Then
        rs.Edit
#End If
        
        'Verifica la FechaGrabado para asegurar que otros usuarios no ha modificado el mismo registro
        If rs!fechagrabado <> mProps.fechagrabado Then
            Err.Raise ERR_MODIFICADO, "PCPais.Grabar", MSGERR_MODIFICADO
        End If
    End If

    'Graba el registro
    With rs
        If Not !CodPais = mProps.CodPais Then
            mProps.objEmpresa.GrabaAccionModulo !CodPais, mProps.CodPais, "Codigo Pais", "MOD_SUC", "GN"
        End If
        !CodPais = mProps.CodPais
        If Not !Descripcion = mProps.Descripcion Then
            mProps.objEmpresa.GrabaAccionModulo !Descripcion, mProps.Descripcion, "Descripcion Pais", "MOD_SUC", "GN"
        End If
        !Descripcion = mProps.Descripcion
        !BandValida = mProps.BandValida
        
        !fechagrabado = Now
        .Update
#If DAOLIB Then
        rs.Bookmark = rs.LastModified
#End If
        .Move 0             'Para actualizar
        mProps.fechagrabado = !fechagrabado
        mProps.IdPais = !IdPais
        .Close
    End With
    
    'Graba un registro para auditoria   *** ANGEL 20/mar/02
    If mbooEsNuevo Then
        mProps.objEmpresa.GrabaGNLogAccion "NUE_PCPAIS", "Provincia Nuevo: " & _
                                                         mProps.CodPais, "GN"
    Else
        mProps.objEmpresa.GrabaGNLogAccion "MOD_PCPAIS", "Provincia Modificado: " & _
                                                         mProps.CodPais, "GN"
    End If
    
    Set rs = Nothing
    mbooEsNuevo = False
    mbooModificado = False
    'Genera evento Refresh del objeto Empresa
    mProps.objEmpresa.RaiseRefreshEvent REFRESH_PCPAIS
End Sub

Friend Sub Recuperar(key As Variant)
    Dim sql As String, rs As Recordset
    
    If VarType(key) = vbString Then
        sql = "SELECT * FROM PCPAIS WHERE CodPAIS='" & key & "'"
    Else
        sql = "SELECT * FROM PCPAIS WHERE IdPais=" & key
    End If

    Set rs = mProps.objEmpresa.OpenRecordset(sql)
    rs.MoveFirst   'para que se coloque al inicio jeaa
    'Recupera los datos
    With rs
        mProps.IdPais = !IdPais
        mProps.CodPais = !CodPais
        If Not IsNull(!Descripcion) Then mProps.Descripcion = !Descripcion
        If Not IsNull(!BandValida) Then mProps.BandValida = !BandValida
        
        mProps.fechagrabado = !fechagrabado
        .Close
    End With
    
    Set rs = Nothing
    mbooEsNuevo = False
    mbooModificado = False
End Sub

Public Sub Eliminar()
    Dim sql As String, rs As Recordset
    
    'Verifica si ya existe una transacci�n usando el mismo
    sql = "SELECT IDPais FROM PCPAIS WHERE IdPais=" & mProps.IdPais
    Set rs = mProps.objEmpresa.OpenRecordset(sql)
    If Not rs.EOF Then
        Err.Raise ERR_NOELIMINABLE, "PCPais.Eliminar", MSGERR_NOELIMINABLE
    End If
    rs.Close

    'Elimina el registro
    sql = "DELETE FROM PCPaisWHERE IdPais=" & mProps.IdPais
    mProps.objEmpresa.Execute sql, True
    
    'Graba un registro para auditoria   *** ANGEL 20/mar/02
    mProps.objEmpresa.GrabaGNLogAccion "ELI_PCPAIS", "Pais Eliminado: " & _
                                                         mProps.CodPais, "GN"

    mbooEsNuevo = True
    mbooModificado = True
    
    'Genera evento Refresh del objeto Empresa
    mProps.objEmpresa.RaiseRefreshEvent REFRESH_PCPAIS
End Sub

Friend Function Clone() As PCPais
    Dim nuevo As PCPais

    'Copia las propiedades al nuevo objeto
    Set nuevo = New PCPais
    nuevo.Props = mProps

    Set Clone = nuevo
    Set nuevo = Nothing
End Function

Friend Property Let Props(value As T_PROPS)         'Para el m�todo Clone
    mProps = value
    mProps.IdPais = 0
    mbooModificado = True
End Property

Friend Property Set Empresa(objEmpresa As Empresa)
    Set mProps.objEmpresa = objEmpresa
End Property

Public Property Get Empresa() As Empresa
    Set Empresa = mProps.objEmpresa
End Property





Public Property Let CodPais(ByVal value As String)
    If Len(value) > 10 Then
        Err.Raise ERR_INVALIDO, "PCPais_CodPais", MSGERR_INVALIDO
    End If
    ValidaCodigo value      'Valida si contiene caracteres no validos
    
    mProps.CodPais = value
    mbooModificado = True
End Property

Public Property Get CodPais() As String
    CodPais = Trim$(mProps.CodPais)
End Property

Public Property Let Descripcion(ByVal value As String)
    If Len(value) > 40 Then
        Err.Raise ERR_INVALIDO, "Pais_Descripcion", MSGERR_INVALIDO
    End If
    
    mProps.Descripcion = value
    mbooModificado = True
End Property

Public Property Get Descripcion() As String
    Descripcion = Trim$(mProps.Descripcion)
End Property

Public Property Let BandValida(ByVal value As Boolean)
    mProps.BandValida = value
    mbooModificado = True
End Property

Public Property Get BandValida() As Boolean
    BandValida = mProps.BandValida
End Property




Public Property Get fechagrabado() As Date
    fechagrabado = mProps.fechagrabado
End Property

Public Property Get EsNuevo() As Boolean
    EsNuevo = mbooEsNuevo
End Property

Public Property Get Modificado() As Boolean
    Modificado = mbooModificado
End Property


Private Sub Class_Initialize()
    'Valores iniciales
    mProps.BandValida = True
    
    mbooEsNuevo = True
    mbooModificado = False
    
End Sub

Private Sub Class_Terminate()
    Set mProps.objEmpresa = Nothing
End Sub





