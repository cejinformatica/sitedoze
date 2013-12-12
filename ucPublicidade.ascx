<%@ Control Language="VB" AutoEventWireup="false" CodeFile="ucPublicidade.ascx.vb" Inherits="ucPublicidade" %>
<%@ Register Assembly="RadAjax.Net2" Namespace="Telerik.WebControls" TagPrefix="radA" %>
<table  >
    <tr>
        <td>
            <asp:Image ID="imgPublicidade" runat="server"  ImageUrl="images/publicidade.jpg"  />
        </td></tr>
          <tr>
        <td height="10px"></td>
    </tr>
    <tr>
        <td>
        <radA:RadAjaxPanel ID="rapPublicidades" runat="server">
        <asp:DataList ID="dlPublicidades" runat="server">
            <ItemTemplate>
                <asp:Label ID="lblPublicidade" Text='<%# DataBinder.Eval(Container.DataItem, "tPublicidade") %>' runat="server"></asp:Label>
            </ItemTemplate>
        </asp:DataList>
            <radA:RadAjaxTimer ID="ratPublicidades" runat="server" Interval="3000" />
        </radA:RadAjaxPanel>
        </td>
    </tr>
</table>