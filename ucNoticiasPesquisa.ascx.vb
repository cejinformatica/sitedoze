Imports System.Data

Partial Class ucNoticiasPesquisa
    Inherits System.Web.UI.UserControl

    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load

        Call sCarregarNoticias()

    End Sub

    Sub sCarregarNoticias()

        Dim ds As DataSet
        Dim wPortal As New wsCash.wPortal
        Dim ws As New wsCash.wsCash

        ds = Session("dsPesquisa")

        With gvResultados
            .DataSource = ds
            .DataBind()
        End With

    End Sub

    Protected Sub gvResultados_SelectedIndexChanging(ByVal sender As Object, ByVal e As System.Web.UI.WebControls.GridViewSelectEventArgs) Handles gvResultados.SelectedIndexChanging

        Dim wCodigoTipo As Integer
        wCodigoTipo = CType(gvResultados.Rows(e.NewSelectedIndex).FindControl("lnkCodigo"), LinkButton).Text
        Response.Redirect("DetalhesNoticias.aspx?cNoticia=" & wCodigoTipo)
    End Sub
End Class
