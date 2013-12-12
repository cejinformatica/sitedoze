Imports System.Data
Imports System.IO

Partial Class ucRedesSociais
    Inherits System.Web.UI.UserControl

    Dim func As New clsAcessos

    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load

        If Not IsPostBack Then

            Call sCarregarLinks()
        End If

    End Sub

    Sub sCarregarLinks()

        Dim wSQL As String
        Dim ds As DataSet
        Dim func As New clsAcessos
        Dim wPortal As New wsCash.wPortal
        Dim ws As New wsCash.wsCash
        ws = func.fRetornaWS()
        wPortal = ws.fCarregarPortal(func.fPortal())

        ds = ws.fRetornaRedesSociais(func.fPortal(), func.fGrupo())

        With dlLinks

            .DataSource = ds
            .DataBind()
            If .Items.Count = 0 Then
                .Visible = False
            Else
                .Visible = True
            End If

        End With

    End Sub

    Public Function fRetornaCaminhoImagem(ByVal tImagem As String) As String

        Dim wCorpo As String = ""
        Dim ws As New wsCash.wsCash
        ws = func.fRetornaWS()
        wCorpo = "<IMG src='---caminhoimagem---'  />"

        If tImagem <> "" Then
            wCorpo = Replace(wCorpo, "---caminhoimagem---", ws.fRetornaURLImagem(ConfigurationManager.AppSettings("URLIMAGENS"), "redessociais", tImagem))
        Else
            wCorpo = ""
        End If

        Return wCorpo

    End Function

End Class
