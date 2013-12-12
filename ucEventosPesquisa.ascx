<%@ Control Language="VB" AutoEventWireup="false" CodeFile="ucEventosPesquisa.ascx.vb" Inherits="ucEventosPesquisa" %>
<asp:DataList ID="PEventos" runat="server" Width="100%">
    <ItemTemplate>
        <table  cellpadding="5" cellspacing="5" width="100%" id="tbEventos" bgcolor='<%# fRetornaBG() %>'>
            <tr>
                <td class="Resenha" align="left">
                    <a href='<%# "DetalhesEventos.aspx?id=" & DataBinder.Eval(Container.DataItem, "cEvento")%>' >
                    <%# DataBinder.Eval(Container.DataItem, "tEvento") %> </a> 
                    <span> - </span> 
                    <span class="dataevento">
                    <%# DataBinder.Eval(Container.DataItem, "dEventoInicio", "{0:dd/MM/yyyy}") %> - 
                    <%# DataBinder.Eval(Container.DataItem, "dEventoFim", "{0:dd/MM/yyyy}") %>
                    </span> 
                    </td>
            </tr>
            <tr>
                <td class="Resenha">
                    <%#DataBinder.Eval(Container.DataItem, "tInformacoes")%><br>
                   <span class="dataevento"> Local: <%# DataBinder.Eval(Container.DataItem, "tLocal") %> </span>
                </td>
            </tr>
        </table>
    </ItemTemplate>
</asp:DataList>