<%@ Page Language="VB" AutoEventWireup="false" CodeFile="Membros.aspx.vb" Inherits="Membros" %>
<%@ Register Src="ucRodape.ascx" TagName="ucRodape" TagPrefix="uc14" %>
<%@ Register Src="ucMenus.ascx" TagName="ucMenus" TagPrefix="uc12" %>
<%@ Register Src="uctopo.ascx" TagName="uctopo" TagPrefix="uc1" %>
<%@ Register Src="ucMembros.ascx" TagName="ucMembros" TagPrefix="uc15" %>
<%@ Register Src="uclogotipo.ascx" TagName="uclogotipo" TagPrefix="uc2" %>
<%@ Register Src="Ucbig_banner.ascx" TagName="Ucbig_banner" TagPrefix="uc3" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml" >
<head id="Head1" runat="server">
<link href="layout/mundialline/css/estilos.css" rel="stylesheet" type="text/css" />
<link href="css/slider.css" media="screen" rel="stylesheet" type="text/css" />
<link href="css/page.css" media="screen" rel="stylesheet" type="text/css" />
<link href="membros/static_files/help.css" rel="stylesheet" type="text/css" media="all" />
 <script type="text/javascript">
     var GB_ROOT_DIR = "./membros/greybox/";
    </script>
    <script type="text/javascript" src="membros/greybox/AJS.js"></script>
    <script type="text/javascript" src="membros/greybox/AJS_fx.js"></script>
    <script type="text/javascript" src="membros/greybox/gb_scripts.js"></script>
    <link href="membros/greybox/gb_styles.css" rel="stylesheet" type="text/css" media="all" />
    <script type="text/javascript" src="membros/static_files/help.js"></script>
    
</head>
<body>
    <form id="form1" runat="server"><center>
    <div></div>
    <table  align="center"  class="tabela_principal" bgcolor="#ffffff" width="910">
<tr>
<td valign="top" >
    <uc1:uctopo ID="Uctopo2" runat="server" />
</td>
</tr>

<tr>
<td valign="top" style="height: 228px" class="Topo_Geral">
    <table  >
        <tr>
            <td>
                <img src="layout/mundialline/images/espaco.gif" width="11" /></td>
            <td>
                <uc2:uclogotipo ID="Uclogotipo1" runat="server" />
            </td>
            <td >
                <img src="layout/mundialline/images/espaco.gif" width="9" /></td>
            <td class="ajustetdbig" valign="top"><uc3:ucbig_banner ID="Ucbig_banner1" runat="server" />
                &nbsp;</td>
        </tr>
    </table>
</td>
</tr>
<tr>
<td valign="top" height="10">
</td>
</tr>
<tr>
<td align="left" valign="top" >
<table align="center"  >
<tr>
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
</td>
<td valign="top" width="850">
    <table cellpadding="0"  cellspacing="0"   width="100%">
        <tr>
            <td>
                <uc15:ucMembros ID="ucMembros1" runat="server" />
            </td>
        </tr>
        <tr>
            <td>
                &nbsp;</td>
        </tr>
    </table>
        
    
</td>
</tr>
</table>
</td>
</tr>
<tr>
<td><uc14:ucRodape ID="UcRodape1" runat="server" />
</td>
</tr>
</table>
    </center></form>
</body>
</html>