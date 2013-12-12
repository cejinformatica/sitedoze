<%@ Control Language="VB" AutoEventWireup="false" CodeFile="ucdestaque_eventos.ascx.vb" Inherits="uceventos" %>
<fieldset><legend >Calendário</legend>
<asp:DataList ID="dlEventos" runat="server" Width="100%">
        <ItemTemplate>
            <table    width="100%">
                <tr>
                <td class="tituloeventohome" nowrap="nowrap">
                <a href='DetalhesEventos.aspx?id=<%# DataBinder.Eval(Container.DataItem, "cEvento") %>' class="tituloeventohome" >
                <%# DataBinder.Eval(Container.DataItem, "dEventoInicio", "{0:dd/MM/yyyy}") %> - <%# DataBinder.Eval(Container.DataItem, "dEventoFim", "{0:dd/MM/yyyy}") %>
                   --  <%# DataBinder.Eval(Container.DataItem, "tEvento") %></a> </td>
              </tr>
              <tr>
                <td class="Resenha"  align=left><%#DataBinder.Eval(Container.DataItem, "tInformacoes")%></td>
              </tr>
                <tr>
                <td class="Resenha"  align=left><hr></td>
              </tr>
      </table>
        </ItemTemplate>
    </asp:DataList>
</fieldset> 
    