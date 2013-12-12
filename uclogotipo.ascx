<%@ Control Language="VB" AutoEventWireup="false" CodeFile="uclogotipo.ascx.vb" Inherits="uclogotipo" %>
<%@ Register Src="ucPesquisaTopo.ascx" TagName="ucPesquisaTopo" TagPrefix="uc1" %>
<%@ Register Src="ucMenuPadrao.ascx" TagName="ucMenuPadrao" TagPrefix="uc3" %>
<link href="layout/mundialline/css/estilos.css" rel="stylesheet" type="text/css" />
<link rel="stylesheet" type="text/css" href="msdropdown/dd.css" />
<style type="text/css">
    .style1 { width: 100%; }
</style>
<center>
<table width="976px"   >
    <tr>
        <td  valign="top" align=left  style="padding-left:20px;">
<a href=Home.aspx><asp:Image ID="imgLogo" runat="server"  /></a>
        </td>
        <td align="right" valign="top" >&nbsp;</td>
    </tr>
    <tr>
        <td  valign="top" align=left colspan="2"  style="padding-left:20px;" >
            <table  class="style1">
                <tr>
                    <td>
            <uc3:ucMenuPadrao ID="ucMenuPadrao1" runat="server" />
    
                    </td>
                    <td>
                        <uc1:ucPesquisaTopo ID="ucPesquisaTopo1" runat="server" />
                    </td>
                </tr>
            </table>
    </td>
    </tr>
</table>
</center>
