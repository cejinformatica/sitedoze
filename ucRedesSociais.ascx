<%@ Control Language="VB" AutoEventWireup="false" CodeFile="ucRedesSociais.ascx.vb" Inherits="ucRedesSociais" %>
<asp:Panel ID="pnlUltimasNoticias" runat="server">
    <table width="100%"  >
      <tr>
        <td bordercolor="#ffffff" align=right >
            <asp:DataList ID="dlLinks" runat="server" RepeatDirection="Horizontal">
                <ItemTemplate>
                    <table>
                        <tr>
                            <td>
                                <a target="_blank" href="LinkContadorRedeSocial.aspx?cRedeSocial=<%#DataBinder.Eval(Container.DataItem, "cRedeSocial")%>">
                                    <%#fRetornaCaminhoImagem(DataBinder.Eval(Container.DataItem, "tImagem"))%>
                                </a>
                            </td>
                        </tr>
                    </table>
                </ItemTemplate>
            </asp:DataList></td>
      </tr>
    </table>
</asp:Panel>
