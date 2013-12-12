Imports System.Data

Partial Class ucPesquisaTopo
    Inherits System.Web.UI.UserControl

    Dim func As New clsAcessos

    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load
        If Not IsPostBack Then
            Call sCarregaComboCategorias()
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

    Public Sub sCarregaPesquisa(ByVal wCodigoCategoria As Integer)

        If txtPesquisa.Text.Trim.Length = 0 Then
            lblMensagem.Text = "Necessario um termo para pesquisa*"
            Exit Sub
        End If

        Dim ds As New DataSet

        Select Case wCodigoCategoria

            Case "0"
                Call sCarregaGridTodos()
                If gvQuantidade.Rows.Count = 0 Then
                    lblMensagem.Text = "Sem Resultados*"
                Else
                    Session("txtPesquisa") = txtPesquisa.Text
                    Response.Redirect("Pesquisa.aspx?id=" & cmbCategorias.SelectedValue)
                End If
            Case "1"
                ds = func.fCarregaInformacoesAlbuns(txtPesquisa.Text, "I")
                If ds.Tables(0).Rows.Count = 0 Then
                    lblMensagem.Text = "Sem Resultados*"
                Else
                    Session("txtPesquisa") = txtPesquisa.Text
                    Response.Redirect("Pesquisa.aspx?id=" & cmbCategorias.SelectedValue)
                End If
            Case "2"
                ds = func.fCarregaInformacoesNoticias(txtPesquisa.Text, "I")
                If ds.Tables(0).Rows.Count = 0 Then
                    lblMensagem.Text = "Sem Resultados*"
                Else
                    Session("txtPesquisa") = txtPesquisa.Text
                    Response.Redirect("Pesquisa.aspx?id=" & cmbCategorias.SelectedValue)
                End If
            Case "3"
                ds = func.fCarregaInformacoesEventos(txtPesquisa.Text, "I")
                If ds.Tables(0).Rows.Count = 0 Then
                    lblMensagem.Text = "Sem Resultados*"
                Else
                    Session("txtPesquisa") = txtPesquisa.Text
                    Response.Redirect("Pesquisa.aspx?id=" & cmbCategorias.SelectedValue)
                End If
            Case "4"
                ds = func.fCarregaInformacoesVideos(txtPesquisa.Text, "I")
                If ds.Tables(0).Rows.Count = 0 Then
                    lblMensagem.Text = "Sem Resultados*"
                Else
                    Session("txtPesquisa") = txtPesquisa.Text
                    Response.Redirect("Pesquisa.aspx?id=" & cmbCategorias.SelectedValue)
                End If
            Case "5"
                ds = func.fCarregaInformacoesFAQ(txtPesquisa.Text, "I")
                If ds.Tables(0).Rows.Count = 0 Then
                    lblMensagem.Text = "Sem Resultados*"
                Else
                    Session("txtPesquisa") = txtPesquisa.Text
                    Response.Redirect("Pesquisa.aspx?id=" & cmbCategorias.SelectedValue)
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

End Class
