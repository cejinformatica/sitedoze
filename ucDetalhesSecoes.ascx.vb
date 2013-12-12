Partial Class ucDetalhesSecoes
    Inherits System.Web.UI.UserControl

    Dim func As New clsAcessos

    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load

        'If Not IsPostBack Then

        Dim wCodigoPagina As String
        Dim wCodigoSecao As String

        wCodigoPagina = Request.Params("cPagina")
        wCodigoSecao = Request.Params("cSecao")

        If wCodigoPagina Is Nothing Then
            Response.Redirect("Default.aspx")
        End If

        If wCodigoPagina.Trim.Length > 0 Then

            Call sCarregarPagina(wCodigoPagina, wCodigoSecao)

        End If

        'End If

    End Sub

    Sub sCarregarPagina(ByVal wCodigoPagina As Integer, ByVal wCodigoSecao As Integer)

        Dim wPagina As New wsCash.wPagina
        Dim wSecao As New wsCash.wSecao
        Dim wFormulario As New wsCash.wFormulario
        Dim ws As New wsCash.wsCash

        ws = func.fRetornaWS()
        wPagina = ws.fRetornaPagina(wCodigoPagina)
        wSecao = ws.fRetornaSecao(wCodigoSecao)
        wFormulario = ws.fRetornaFormulario(wPagina.cFormulario)

        With wPagina
            lblTitulo.Text = .tPagina

            Dim wPastaImgEditor As String = ""
            If ConfigurationManager.AppSettings("URLIMAGENS").Contains("http") Then
                wPastaImgEditor = ConfigurationManager.AppSettings("URLIMAGENS") & "Grupos/"
            Else
                wPastaImgEditor = "http://" & ConfigurationManager.AppSettings("URLIMAGENS") & "Grupos/"
            End If
            lblTexto.Text = .tDescPagina.Replace("src=""Grupos", "src=""" & wPastaImgEditor)
            lblTexto.Text = lblTexto.Text.Replace("src=""/Grupos", "src=""" & wPastaImgEditor)

            'lblCabecalho.CssClass = wSecao.tCSS.Trim & "TituloMain"

            If .tImagemGrande.Trim.Length = 0 Then
                imgImagem.Visible = False
            Else
                imgImagem.Visible = True
                imgImagem.ImageUrl = ws.fRetornaURLImagem(ConfigurationManager.AppSettings("URLIMAGENS"), "IMAGEMPAGINAGRANDE", .tImagemGrande)
            End If

        End With

        With wFormulario

            If .cFormulario <> 0 Then

                Session("wFormularioEmail") = .tEmail
                Session("wFormularioTitulo") = .tFormulario

                Dim wControl As New Control
                wControl = Page.LoadControl(.tUserControl)
                phFormulario.Controls.Add(wControl)

            End If

        End With
    End Sub

End Class
