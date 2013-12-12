Imports System.Data
Partial Class ucPesquisar
    Inherits System.Web.UI.UserControl

    Dim func As New clsAcessos

    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load
        If Not IsPostBack Then
            Call sCarregaComboCategorias()
            If Request.Params("id") <> "" Then
                cmbCategorias.SelectedValue = Request.Params("id")
                txtPesquisa.Text = Session("txtPesquisa")
                Call sCarregaPesquisa(Request.Params("id"))
            End If
        End If
    End Sub

    Public Sub sCarregaComboCategorias()

        cmbCategorias.Items.Clear()
        cmbCategorias.Items.Add(New ListItem("Todos", "0"))
        cmbCategorias.Items.Add(New ListItem("Álbuns", "1"))
        cmbCategorias.Items.Add(New ListItem("Notícias", "2"))
        cmbCategorias.Items.Add(New ListItem("Eventos", "3"))
        cmbCategorias.Items.Add(New ListItem("Vídeos", "4"))
        cmbCategorias.Items.Add(New ListItem("FAQ", "5"))

    End Sub

    Protected Sub cmdPesquisar_Click(ByVal sender As Object, ByVal e As System.EventArgs) Handles cmdPesquisar.Click
        Call sCarregaPesquisa(cmbCategorias.SelectedValue)
    End Sub

    Sub sConfiguraPaineis(ByVal wTipo As String)

        pnlPesquisaInformacao.Visible = False
        pnlPesquisa.Visible = False

        Select Case wTipo.ToUpper

            Case "P"
                pnlPesquisa.Visible = True

            Case "I"
                pnlPesquisaInformacao.Visible = True

        End Select

    End Sub

    Public Sub sCarregaPesquisa(ByVal wCodigoCategoria As Integer)

        If txtPesquisa.Text.Trim.Length = 0 Then
            lblMensagem.Text = "Informe alguma informação para pesquisar"
            Exit Sub
        End If

        If txtPesquisa.Text.Trim.ToLower().Contains("--") Then
            lblMensagem.Text = "Informe alguma informação para pesquisar"
            Exit Sub
        End If

        Dim ds As New DataSet

        Select Case wCodigoCategoria

            Case "0"
                Call sCarregaGridTodos()
                Call sConfiguraPaineis("P")
            Case "1"

                ds = func.fCarregaInformacoesEventos(txtPesquisa.Text, "I")
                If ds.Tables(0).Rows.Count = 0 Then
                    lblMensagem.Text = "Sem Resultados"
                Else
                    Session("dsPesquisa") = func.fCarregaInformacoesAlbuns(txtPesquisa.Text, "I")
                    Call sConfiguraPaineis("I")
                    phTemplates.Controls.Add(LoadControl("ucGaleriaAlbunsPesquisa.ascx"))
                End If

            Case "2"

                ds = func.fCarregaInformacoesNoticias(txtPesquisa.Text, "I")
                If ds.Tables(0).Rows.Count = 0 Then
                    lblMensagem.Text = "Sem Resultados"
                Else
                    Session("dsPesquisa") = func.fCarregaInformacoesNoticias(txtPesquisa.Text, "I")
                    Call sConfiguraPaineis("I")
                    phTemplates.Controls.Add(LoadControl("ucNoticiasPesquisa.ascx"))
                End If

            Case "3"

                ds = func.fCarregaInformacoesEventos(txtPesquisa.Text, "I")
                If ds.Tables(0).Rows.Count = 0 Then
                    lblMensagem.Text = "Sem Resultados"
                Else
                    Session("dsPesquisa") = func.fCarregaInformacoesEventos(txtPesquisa.Text, "I")
                    Call sConfiguraPaineis("I")
                    phTemplates.Controls.Add(LoadControl("ucEventosPesquisa.ascx"))
                End If

            Case "4"

                ds = func.fCarregaInformacoesVideos(txtPesquisa.Text, "I")
                If ds.Tables(0).Rows.Count = 0 Then
                    lblMensagem.Text = "Sem Resultados"
                Else
                    Session("dsPesquisa") = func.fCarregaInformacoesVideos(txtPesquisa.Text, "I")
                    Call sConfiguraPaineis("I")
                    phTemplates.Controls.Add(LoadControl("ucVideosPesquisa.ascx"))
                End If

            Case "5"

                ds = func.fCarregaInformacoesFAQ(txtPesquisa.Text, "I")
                If ds.Tables(0).Rows.Count = 0 Then
                    lblMensagem.Text = "Sem Resultados"
                Else
                    Session("dsPesquisa") = func.fCarregaInformacoesFAQ(txtPesquisa.Text, "I")
                    Call sConfiguraPaineis("I")
                    phTemplates.Controls.Add(LoadControl("ucFAQPesquisa.ascx"))
                End If

        End Select

    End Sub

    Public Sub sCarregaGridTodos()

        Dim dt As New DataTable("Carrinho")

        dt.Columns.Add("tCategoria")
        dt.Columns.Add("nQtd")
        dt.Columns.Add("cTipo")

        Dim ds As New DataSet
        Dim dr As DataRow

        ds = func.fCarregaInformacoesAlbuns(txtPesquisa.Text, "C")

        If ds.Tables(0).Rows(0).Item("nQtd") > 0 Then
            dr = dt.NewRow
            dr("tCategoria") = ds.Tables(0).Rows(0).Item("tCategoria")
            dr("nQtd") = ds.Tables(0).Rows(0).Item("nQtd")
            dr("cTipo") = "1"
            dt.Rows.Add(dr)
        End If

        ds = func.fCarregaInformacoesNoticias(txtPesquisa.Text, "C")

        If ds.Tables(0).Rows(0).Item("nQtd") > 0 Then
            dr = dt.NewRow
            dr("tCategoria") = ds.Tables(0).Rows(0).Item("tCategoria")
            dr("nQtd") = ds.Tables(0).Rows(0).Item("nQtd")
            dr("cTipo") = "2"
            dt.Rows.Add(dr)
        End If

        ds = func.fCarregaInformacoesEventos(txtPesquisa.Text, "C")

        If ds.Tables(0).Rows(0).Item("nQtd") > 0 Then
            dr = dt.NewRow
            dr("tCategoria") = ds.Tables(0).Rows(0).Item("tCategoria")
            dr("nQtd") = ds.Tables(0).Rows(0).Item("nQtd")
            dr("cTipo") = "3"
            dt.Rows.Add(dr)
        End If

        ds = func.fCarregaInformacoesVideos(txtPesquisa.Text, "C")

        If ds.Tables(0).Rows(0).Item("nQtd") > 0 Then
            dr = dt.NewRow
            dr("tCategoria") = ds.Tables(0).Rows(0).Item("tCategoria")
            dr("nQtd") = ds.Tables(0).Rows(0).Item("nQtd")
            dr("cTipo") = "4"
            dt.Rows.Add(dr)
        End If

        ds = func.fCarregaInformacoesFAQ(txtPesquisa.Text, "C")

        If ds.Tables(0).Rows(0).Item("nQtd") > 0 Then
            dr = dt.NewRow
            dr("tCategoria") = ds.Tables(0).Rows(0).Item("tCategoria")
            dr("nQtd") = ds.Tables(0).Rows(0).Item("nQtd")
            dr("cTipo") = "5"
            dt.Rows.Add(dr)
        End If

        With gvQuantidade
            .DataSource = dt
            .DataBind()
        End With

    End Sub

    Protected Sub gvQuantidade_SelectedIndexChanging(ByVal sender As Object, ByVal e As System.Web.UI.WebControls.GridViewSelectEventArgs) Handles gvQuantidade.SelectedIndexChanging

        Dim wCodigoTipo As Integer
        wCodigoTipo = CType(gvQuantidade.Rows(e.NewSelectedIndex).FindControl("lblTipoPesquisa"), Label).Text
        Call sCarregaPesquisa(wCodigoTipo)

    End Sub

    Protected Sub gvQuantidade_SelectedIndexChanged(ByVal sender As Object, ByVal e As System.EventArgs) Handles gvQuantidade.SelectedIndexChanged

    End Sub
End Class
