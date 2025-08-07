Public Sub BtnSupport()
    ' Abre o link de suporte/documentação no navegador padrão do usuário
    Dim supportUrl As String
    supportUrl = "https://github.com/chrmsantos"

    On Error Resume Next

    If supportUrl = "" Then
        MsgBox "URL de suporte não definida.", vbExclamation, "Atenção"
        Exit Sub
    End If

    ' Abrir pelo método nativo do Word
    Err.Clear
    ActiveDocument.FollowHyperlink Address:=supportUrl, NewWindow:=True
    If Err.Number = 0 Then Exit Sub

    ' Mensagem de erro detalhada
    MsgBox "Não foi possível abrir o link de suporte no navegador padrão." & vbCrLf & _
           "Erro " & Err.Number & ": " & Err.description, vbCritical, "Erro ao Abrir Link"
End Sub

