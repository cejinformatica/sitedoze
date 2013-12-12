<%@ Control Language="VB" AutoEventWireup="false" CodeFile="ucultimas_noticias.ascx.vb" Inherits="ucultimas_noticias" %>
<link href="layout/mundialline/css/estilos.css" rel="stylesheet" type="text/css" />
<asp:Panel ID="pnlUltimasNoticias" runat="server">
    <center>
    <table width="946" >
      <tr>
        <td class="TxtTituloNoticia" align="left">
             NOTÍCIAS
            </td>
      </tr>
      <tr>
        <td height="10px"></td>
      </tr>
      <tr>
        <td class="bgright"  align=left>
            <asp:DataList ID="dlResultados" runat="server" Width="171px">
                <ItemTemplate>
               <table style="width: 200px">
                        <tr>
                            <td width="10" >
                                <img src="layout/mundialline/images/aponta.gif" /></td>
                            <td style="width: 190px" >
                                <a class="texto" href="DetalhesNoticias.aspx?cNoticia=<%#DataBinder.Eval(Container.DataItem, "cNoticia")%>">
                                    <%#DataBinder.Eval(Container.DataItem, "tTitulo")%></a></td>
                        </tr>
                    </table>
                </ItemTemplate>
            </asp:DataList></td>
      </tr>
        </table>
    </center>
</asp:Panel>
