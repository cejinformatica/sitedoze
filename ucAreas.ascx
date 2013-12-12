<%@ Control Language="VB" AutoEventWireup="false" CodeFile="ucAreas.ascx.vb" Inherits="ucAreas" %>

<table  cellpadding="0px" cellspacing="0px" width=717px class=atividades>
<tr><td class=tituloHome>
Atividades
</td></tr>
<tr><td align=center valign=middle>
    <table width=717px >
        <tr>
            <td align=center>
<asp:DataList ID="dlAreas" runat="server" RepeatColumns="6" RepeatDirection="Horizontal" >
    <ItemTemplate>
        <asp:Label ID="lblArea" runat="server" 
        Text='<% # fRetornaArea(DataBinder.Eval(Container.DataItem, "cArea"), DataBinder.Eval(Container.DataItem, "tArea"), DataBinder.Eval(Container.DataItem, "tImagem"), DataBinder.Eval(Container.DataItem, "tPagina"), DataBinder.Eval(Container.DataItem, "cPagina") ) %>'></asp:Label>
    </ItemTemplate>
</asp:DataList></td>
        </tr>
    </table>
</td></tr>
</table>