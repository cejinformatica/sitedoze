<%@ Control Language="VB" AutoEventWireup="false" CodeFile="ucPublicidadeLeft.ascx.vb" Inherits="ucPublicidadeLeft" %>
<%@ Register Assembly="RadAjax.Net2" Namespace="Telerik.WebControls" TagPrefix="radA" %>
<table  >
    <tr>
     
        <td>
            <asp:Image ID="imgPublicidade" runat="server" Visible="true" ImageUrl="layout/mundialline/images/tit_box_coligadas.gif" />
        </td>
    </tr>           <tr>
        <td>
        <radA:RadAjaxPanel ID="rapPublicidadesLeft" runat="server">
        <asp:DataList ID="dlPublicidadesLeft" runat="server">
            <ItemTemplate>
                <asp:Label ID="lblPublicidadeLeft" Text='<%# DataBinder.Eval(Container.DataItem, "tPublicidade") %>' runat="server"></asp:Label>
            </ItemTemplate>
        </asp:DataList>
            <radA:RadAjaxTimer ID="ratPublicidadesLeft" runat="server" Interval="3000" />
        </radA:RadAjaxPanel>
        </td>
    </tr>
</table>