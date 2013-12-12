Imports System.Data
Partial Class ucVideosPesquisa
    Inherits System.Web.UI.UserControl

    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load

        Call sCarregarVideos()

    End Sub

    Sub sCarregarVideos()

        Dim ds As DataSet
        Dim wPortal As New wsCash.wPortal
        Dim ws As New wsCash.wsCash

        ds = Session("dsPesquisa")

        With dlVideos
            .DataSource = ds
            .DataBind()
        End With

    End Sub

End Class
