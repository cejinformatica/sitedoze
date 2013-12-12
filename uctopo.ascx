<%@ Control Language="VB" AutoEventWireup="false" CodeFile="uctopo.ascx.vb" Inherits="uctopo" %>
<link href="layout/mundialline/css/estilos.css" rel="stylesheet" type="text/css" />
<table width="100%" id="Topo" bgcolor="#ffffff">
    <tr>
        <td align="right" class="linha_3">
            <table align="right" id="HeaderMenu">
                <tr>
                    <td style="width: 18px">
                        <img src="layout/mundialline/images/menuheader_01.png" /></td>
                    <td class="espande" align="left">
                        <asp:HyperLink ID="hplQuemSomos" CssClass="link" runat="server">[hplQuemSomos]</asp:HyperLink>
                        |&nbsp;
    <asp:HyperLink ID="hplSejaParceiro" CssClass="link" runat="server">[hplSejaParceiro]</asp:HyperLink>
                        |&nbsp;
    <asp:HyperLink ID="hplFaleConosco" CssClass="link" runat="server" Target="_parent">[hplFaleConosco]</asp:HyperLink>
                    </td>
                </tr>
            </table>
        </td>
    </tr>
    <tr>
        <td align="right"></td>
    </tr>
</table>




