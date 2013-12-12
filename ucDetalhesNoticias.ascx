<%@ Control Language="VB" AutoEventWireup="false" CodeFile="ucDetalhesNoticias.ascx.vb" Inherits="ucDetalhesNoticias" %>
<center>
<table   width="946"  bgcolor=#ffffff height=100% style=" height:100%">
 
    
  <tr >
    <td  class=TxtTituloNoticia align=left>
<asp:Label ID="lblTitulo" runat="server"  > </asp:Label>
          
      </td>
  </tr>
    <td  align=left style="height:5px;">
      </td>
  </tr>
  <tr >
    <td  valign="top"  style="padding:0px 0px 0px 0px"><table    align="left">
      <tr>
        <td valign=top height=100% style=" height:100%" ><table  >
          <tr>
            <td valign="top" height=100% style=" height:100%">
                <asp:Image ID="imgImagem" Width="228" Height="300" runat="server" />     
            </td>
          </tr>
        </table>
            
            </td>
        <td rowspan="2" >&nbsp;</td>
      </tr>
      <tr>
        <td>&nbsp;</td>
      </tr>
    </table>
      <div align="justify" >
        <p class=texto >
<asp:Label ID="lblTexto" runat="server"></asp:Label></p>
      </div>
      
      </td>
  </tr>
  <tr>
    <td height="25px" class="TxtNoticia" align=left ><br><b>Fonte:</b> 
        <asp:Label ID="lblFonte" runat="server" CssClass="TxtNoticia"></asp:Label></td>
  </tr>
</table>
</center>