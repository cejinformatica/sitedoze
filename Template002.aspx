<%@ Page Language="VB" AutoEventWireup="false" CodeFile="Template002.aspx.vb" Inherits="Template002" %>
<%@ Register Src="ucdestaque_banner.ascx" TagName="ucdestaque_banner" TagPrefix="uc15" %>
<%@ Register Src="ucRodape.ascx" TagName="ucRodape" TagPrefix="uc14" %>
<%@ Register Src="ucMenus.ascx" TagName="ucMenus" TagPrefix="uc12" %>
<%@ Register Src="ucDetalhesSecoes.ascx" TagName="ucDetalhesSecoes" TagPrefix="uc13" %>
<%@ Register Src="ucNoticias.ascx" TagName="ucNoticias" TagPrefix="uc10" %>
<%@ Register Src="ucultimas_noticias.ascx" TagName="ucultimas_noticias" TagPrefix="uc11" %>
<%@ Register Src="ucRedeDescontos.ascx" TagName="ucRedeDescontos" TagPrefix="uc8" %>
<%@ Register Src="ucHomeRedeDescontos.ascx" TagName="ucHomeRedeDescontos" TagPrefix="uc9" %>
<%@ Register Src="ucRedeCredenciada.ascx" TagName="ucRedeCredenciada" TagPrefix="uc7" %>
<%@ Register Src="uctopo.ascx" TagName="uctopo" TagPrefix="uc1" %>
<%@ Register Src="uclogotipo.ascx" TagName="uclogotipo" TagPrefix="uc2" %>
<%@ Register Src="ucbig_banner.ascx" TagName="ucbig_banner" TagPrefix="uc3" %>
<%@ Register Src="ucMenuRedeDescontos.ascx" TagName="ucMenuRedeDescontos" TagPrefix="uc4" %>
<%@ Register Src="ucMenuSaude.ascx" TagName="ucMenuSaude" TagPrefix="uc5" %>
<%@ Register Src="ucpublicidade.ascx" TagName="ucpublicidade" TagPrefix="uc6" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml" >
<head id="Head1" runat="server">
    <title>Home Cash - Clube de Beneficios</title>
<link href="layout/mundialline/css/estilos.css" rel="stylesheet" type="text/css" />
<link href="css/slider.css" media="screen" rel="stylesheet" type="text/css" />
<link href="css/page.css" media="screen" rel="stylesheet" type="text/css" />
    <link href="layout/mundialline/css/estilos.css" rel="stylesheet" type="text/css" />
    <link href="layout/mundialline/css/estilos.css" rel="stylesheet" type="text/css" />
    <link href="css/slider.css" media="screen" rel="stylesheet" type="text/css" />
    <link href="layout/mundialline/css/estilos.css" rel="stylesheet" type="text/css" />
    <link href="layout/mundialline/css/estilos.css" rel="stylesheet" type="text/css" />
    <link href="layout/mundialline/css/estilos.css" rel="stylesheet" type="text/css" />
</head>
<body>
    <form id="form1" runat="server"><center>
    <div></div>
    <table  align="center"  class="tabela_principal" >
<tr>
<td valign="top"  class="Topo_Geral">
    <uc2:uclogotipo ID="Uclogotipo2" runat="server" />
</td>
</tr>

<tr>
<td align="left" valign="top" >
<table align="center"  >
<tr>
<td valign="top">
<img src="layout/mundialline/images/espaco.gif" /></td>
<td valign="top">
    <table  >
        <tr>
            <td style="width: 100px">
                <uc12:ucMenus ID="UcMenus1" runat="server" />
            </td>
        </tr>
        <tr>
            <td style="width: 100px">
                &nbsp;
            </td>
        </tr>
    </table>
    <br />
    &nbsp;</td>
<td valign="top">
<img src="layout/mundialline/images/espaco.gif" width="5px"/></td>
<td  valign="top">
    &nbsp;</td>
<td valign="top" width="850">
    <table cellpadding="0"  cellspacing="0"   width="100%">
        <tr>
            <td >
                <uc15:ucdestaque_banner ID="Ucdestaque_banner1" runat="server" />
            </td>
        </tr>
        <tr>
            <td><uc13:ucDetalhesSecoes ID="UcDetalhesSecoes1" runat="server" /></td>
        </tr>
    </table>
        
    
</td>
<td >
    &nbsp;</td>
<td valign="top">
<table  >
    <tr>
        <td valign="top" style="height: 10px">
            <uc6:ucpublicidade ID="Ucpublicidade1" runat="server" />
        </td>
    </tr>
</table>
</td>
</tr>
</table>
</td>
</tr>
<tr>
<td>&nbsp;</td>
</tr>
</table>

    </center></form>
</body>
</html>