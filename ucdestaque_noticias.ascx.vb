Imports System.Data

Partial Class ucdestaque_noticias
    Inherits System.Web.UI.UserControl

    Dim func As New clsAcessos

    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load
        'Dim t(3) As String

        'dlResultados.DataSource = t
        'dlResultados.DataBind()

        If Not IsPostBack Then

            func.fCarregaCategoriasNoticias(cmbCategorias)
            Call sCarregarDestaques()

        End If

    End Sub

    Sub sCarregarDestaques()

        Dim ds As DataSet
        Dim wPortal As New wsCash.wPortal
        Dim ws As New wsCash.wsCash
        Dim CLSACESSO As New clsAcessos

        ws = func.fRetornaWS()
        wPortal = ws.fCarregarPortal(func.fPortal())

        If Not IsNumeric(cmbCategorias.SelectedValue) Then
            ds = func.fNoticiasDestaques("0")
        Else
            ds = func.fNoticiasDestaques(cmbCategorias.SelectedValue)
        End If

        With dlResultados

            .RepeatColumns = wPortal.qDestaquesColunas
            .DataSource = ds
            .DataBind()
        End With

    End Sub

    Function fQuebraTextoResenha(ByVal wTexto As String) As String
        Return wTexto

    End Function

    Function fQuebraTextoTitulo(ByVal wTexto As String) As String
        Return Left(wTexto, 70)

    End Function

    Function fRetornaImagemNoticia(ByVal wCodigoNoticia As Integer) As String

        Dim wURL As String = ""
        Dim ws As New wsCash.wsCash
        Dim wNoticia As wsCash.wNoticia

        ws.Url = ConfigurationManager.AppSettings("wsURL")
        wNoticia = ws.fRetornaNoticia(wCodigoNoticia)

        If wNoticia.tImagemPequena.Trim.Length > 0 Then
            wURL = ws.fRetornaURLImagem(ConfigurationManager.AppSettings("URLIMAGENS"), "IMAGEMPEQUENA", wNoticia.tImagemPequena)
        Else
            wURL = ws.fRetornaURLImagem(ConfigurationManager.AppSettings("URLIMAGENS"), "IMAGEMPEQUENA", "Padrao.gif")
        End If

        Return wURL

    End Function

    Protected Sub cmbCategorias_SelectedIndexChanged(ByVal sender As Object, ByVal e As System.EventArgs) Handles cmbCategorias.SelectedIndexChanged
        Call sCarregarDestaques()
    End Sub
End Class
