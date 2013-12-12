<%@ Control Language="VB" AutoEventWireup="false" CodeFile="ucDestaques.ascx.vb" Inherits="ucDestaques" %>
<table>
    <tr>
        <td class="tituloHome">Dicas</td>
    </tr>
    <tr>
        <td style="padding-left: 5px; padding-right: 5px;">
            <asp:DataList ID="dlDestaques" RepeatColumns="1" RepeatDirection="Horizontal" runat="server" Width="100%">
                <ItemTemplate>
                    <table width="100%">
                        <tr>
                            <td style="height: 20px; line-height: 20px;"><a href='<%# "DetalhesDestaques.aspx?cDestaque=" & DataBinder.Eval(Container.DataItem,"cDestaque") %>' class="DestaqueT">&#187; <%#fQuebraTextoTitulo(DataBinder.Eval(Container.DataItem, "tTitulo"))%></a> </td>
                        </tr>
                        <tr>
                            <td>
                                <img src="imagens/linhaDicas.jpg" /></td>
                        </tr>
                    </table>
                </ItemTemplate>
                <ItemStyle VerticalAlign="top" />
            </asp:DataList></td>
    </tr>
    <tr>
    </tr>
</table>
<br/>
