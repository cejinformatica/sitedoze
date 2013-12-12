Imports System.Data
Imports System.IO

Partial Class ucLinks
    Inherits System.Web.UI.UserControl

    Dim func As New clsAcessos

    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load

        If Not IsPostBack Then

            Call sCarregarLinks()
        End If

    End Sub

    Public Function fRetornaCaminhoImagem(ByVal wImagem As String) As String

        Dim wCorpo As String = ""
        Dim ws As New wsCash.wsCash

        wCorpo = "<IMG src='---caminhoimagem---' width=110  />"

        If wImagem <> "" Then
            wCorpo = Replace(wCorpo, "---caminhoimagem---", ws.fRetornaURLImagem(ConfigurationManager.AppSettings("URLIMAGENS"), "IMAGEMDESTAQUE", wImagem))

        Else
            wCorpo = ""
        End If

        Return wCorpo

    End Function

    Sub sCarregarLinks()

        Dim wSQL As String
        Dim ds As DataSet
        Dim func As New clsAcessos
        Dim wPortal As New wsCash.wPortal
        Dim ws As New wsCash.wsCash

        wSQL = " Select * "
        wSQL += " from tbLinks A "
        wSQL += " where (cPortal = " & func.fPortal() & " or cPortal = 0 ) "
        wSQL += " and cGrupo = " & func.fGrupo()
        wSQL += " order by qAcessos DESC, tLink"

        ws = func.fRetornaWS()
        wPortal = ws.fCarregarPortal(func.fPortal())
        ds = ws.fRetornaDataSet(wSQL)

        With dlLinks

            .DataSource = ds
            .DataBind()

        End With

    End Sub

    Function fRetornaLink(ByVal wCodigoLink As Integer, ByVal wLink As String, ByVal wImagem As String, ByVal wPagina As String, ByVal wCodigoPagina As String) As String

        Dim wLinkFormatada As String = ""
        Dim wTemplate As String
        wTemplate = File.ReadAllText(Server.MapPath("~") & "/TemplateLinks.htm")

        Dim func As New clsAcessos
        Dim wPortal As New wsCash.wPortal
        Dim ws As New wsCash.wsCash

        Dim wURLPagina As String

        ws = func.fRetornaWS()
        wPortal = ws.fCarregarPortal(func.fPortal())

        wImagem = ws.fRetornaURLImagem(ConfigurationManager.AppSettings("URLIMAGENS"), "LinksIMAGENS", wImagem)

        wLinkFormatada = wTemplate
        wLinkFormatada = wLinkFormatada.Replace("---Link---", wLink)
        wLinkFormatada = wLinkFormatada.Replace("---IMAGEM---", wImagem)
        wLinkFormatada = wLinkFormatada.Replace("---CODIGOLink---", wCodigoLink)
        wLinkFormatada = wLinkFormatada.Replace("---CODIGO---", wCodigoLink)
        wLinkFormatada = wLinkFormatada.Replace("---CODIGOPAGINA---", wCodigoPagina)

        wURLPagina = wPagina & "?cPagina=" & wCodigoPagina.Trim & "&cLink=" & wCodigoLink.ToString.Trim
        wLinkFormatada = wLinkFormatada.Replace("---URL---", wURLPagina)

        Return wLinkFormatada

    End Function

End Class