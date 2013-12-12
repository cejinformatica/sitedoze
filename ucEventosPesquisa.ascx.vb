Imports System.Data

Partial Class ucEventosPesquisa
    Inherits System.Web.UI.UserControl

    Dim wCoount As Integer = -1

    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load

        Call sCarregarFotos()

    End Sub

    Sub sCarregarFotos()

        Dim ds As DataSet
        Dim wPortal As New wsCash.wPortal
        Dim ws As New wsCash.wsCash
        wCoount = -1
        ds = Session("dsPesquisa")

        With PEventos
            .DataSource = ds
            .DataBind()
        End With

    End Sub

    Public Function fRetornaBG() As String

        wCoount += 1

        If wCoount Mod 2 = 0 Then
            Return "#efefef"
        Else
            Return "#ffffff"
        End If

    End Function

End Class
