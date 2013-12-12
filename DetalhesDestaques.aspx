<%@ Page Language="VB" AutoEventWireup="false" CodeFile="DetalhesDestaques.aspx.vb" Inherits="DetalhesDestaques" %>
<%@ Register Src="ucDetalhesDestaques.ascx" TagName="ucDetalhesDestaques" TagPrefix="uc17" %>
<%@ Register Src="ucRelacaoDetalhesLateral.ascx" TagName="ucRelacaoDetalhesLateral"    TagPrefix="uc16" %>
<%@ Register Src="ucPublicidade.ascx" TagName="ucPublicidade" TagPrefix="uc15" %>
<%@ Register Src="ucRodape.ascx" TagName="ucRodape" TagPrefix="uc14" %>
<%@ Register Src="ucMenus.ascx" TagName="ucMenus" TagPrefix="uc13" %>
<%@ Register Src="ucDetalhesNoticias.ascx" TagName="ucDetalhesNoticias" TagPrefix="uc12" %>
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
<%@ Register Src="ucpublicidadel.ascx" TagName="ucpublicidadel" TagPrefix="uc6" %>
<%@ Register src="ucDetalhesNoticias.ascx" tagname="ucDetalhesNoticias" tagprefix="uc3" %>
<%@ Register src="ucMenuPadrao.ascx" tagname="ucMenuPadrao" tagprefix="uc21" %>
<%@ Register src="ucMenuSegurosFinancas.ascx" tagname="ucMenuSegurosFinancas" tagprefix="uc20" %>
<%@ Register src="uclogotipo.ascx" tagname="uclogotipo" tagprefix="uc7" %>
<%@ Register src="ucRodape.ascx" tagname="ucRodape" tagprefix="uc12" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml" >
<head id="Head1" runat="server">
<title>Inshape Fitness</title>
<link href="layout/mundialline/css/estilos.css" rel="stylesheet" type="text/css" />
<link href="css/slider.css" media="screen" rel="stylesheet" type="text/css" />
<link href="css/page.css" media="screen" rel="stylesheet" type="text/css" />
<link href="layout/mundialline/css/estilos.css" rel="stylesheet" type="text/css" />
</head>
<body>
<form id="form1" runat="server">

<center>


    <table   width=715px height="100%"  >
        <tr>
            <td height=83px style="height:83px">
                <uc7:uclogotipo ID="uclogotipo1" runat="server" />
            </td>
        </tr>
          <tr>
             <td class="" align=left>
                           </td>
        </tr>
       
        <tr>
            <td valign=top height=80% style="height:80%"  >
                <uc17:ucDetalhesDestaques ID="ucDetalhesDestaques1" runat="server" />
                <br>
             
                    <br>
            </td>
        </tr>
        <tr>
            <td height=52px>
                <uc12:ucRodape ID="ucRodape1" runat="server" />
            </td>
        </tr>
    </table>


</center>
</form>
</body>
</html>



