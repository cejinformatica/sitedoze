<%@ Control Language="VB" AutoEventWireup="false" CodeFile="ucDetalhesDestaques.ascx.vb" Inherits="ucDetalhesDestaques" %>
<table   class="texto" width="100%">
    <tr valign="top">
        <td valign="top" class=TxtTituloNoticia>
            <asp:Label ID="lblTitulo" runat="server" ></asp:Label></td>
    </tr>
     <tr valign="top">
        <td valign="top" >
        <img  height="5" src="../img/dot.gif" width="1" /></td>
    </tr>
    <tr valign="top">
        <td class="texto" valign="top">
            <div align="justify">
                <p>
                    &nbsp;<asp:Image ID="imgImagem" runat="server" CssClass=ImagemDestaque /><p class=texto > <asp:Label ID="lblTexto" runat="server" ></a></asp:Label></p>
            </div>
        </td>
    </tr>
    </table>
