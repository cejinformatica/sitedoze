<%@ Control Language="VB" AutoEventWireup="false" CodeFile="ucLinks.ascx.vb" Inherits="ucLinks" %>
<asp:Panel ID="pnlUltimasNoticias" runat="server">
    <table> <tr>
        <td class="ItensMenuPrincipalSaude51" >Links Úteis</td>
      </tr></table>
    <table width="210px"   id="Links" >
      
      <tr>
        <td height="5px"></td>
      </tr>
      <tr>
        <td class="Main" >
            <asp:DataList ID="dlLinks" runat="server" Width="171px">
                <ItemTemplate>
               <table >
                        <tr>
                            
                            <td class="LinhaLink"  align=right>
                                <a class="Links" target="_blank" href="LinkContador.aspx?cLink=<%#DataBinder.Eval(Container.DataItem, "cLink")%>">
                                        <%#DataBinder.Eval(Container.DataItem, "tLink")%> (<%#DataBinder.Eval(Container.DataItem, "qAcessos")%>)
                                </a>
                            </td>
                        </tr>
                    </table>
                </ItemTemplate>
            </asp:DataList></td>
      </tr>
    </table>
</asp:Panel>