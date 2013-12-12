<%@ Control Language="VB" AutoEventWireup="false" CodeFile="ucDetalhesSecoes.ascx.vb" Inherits="ucDetalhesSecoes" %>
<center>
<table width=946 >
    <tr >
        <td valign=top>
          </td>
        <td>
<table   width="100%" class="texto">


    <tr valign="top">
        <td valign="top" height="15" style="line-height:30px; padding-left:5px;" class=TxtTituloNoticia >
              <asp:Label ID="lblTitulo" runat="server" ></asp:Label></td>
    </tr>


    <tr valign="top">
        <td valign="top" height="5" style="line-height:5px; padding-left:5px;" >
              </td>
    </tr>


    <tr valign="top">
        <td valign="top"  >
    <asp:Image ID="imgImagem"  runat="server" />
   
              </td>
    </tr>
  <tr valign="top">
    <td  class="texto" valign="top">
        &nbsp;</td>
  </tr>
    </table>
            <p class="texto">
                <asp:Label ID="lblTexto" runat="server"></asp:Label>
            </p>
            <table   width="100%" class="texto">


    <tr valign="top">
        <td class="texto" valign="top" align=left><br>
            <asp:PlaceHolder ID="phFormulario" runat="server"></asp:PlaceHolder>
        </td>
    </tr>
</table>
        </td>
         <td valign=top>
         </td>
    </tr>
</table>
</center>
