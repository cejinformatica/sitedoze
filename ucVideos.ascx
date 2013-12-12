<%@ Control Language="VB" AutoEventWireup="false" CodeFile="ucVideos.ascx.vb" Inherits="ucVideos" %>
<%@ Register Assembly="RadAjax.Net2" Namespace="Telerik.WebControls" TagPrefix="radA" %>
<center>
<radA:RadAjaxPanel ID="rapVideo" runat="server" Width="100%">
       <table width="946"  id="RelacaoPlayVideo"  >
       <tr>
               <td width=100% align=left class=TxtTituloNoticia  >
                   VÍDEOS
               </td>
           </tr>
           <tr>
               <td width=100% >
                   <asp:Label ID="lblVideo" runat="server"></asp:Label>
                   <asp:Label ID="lblCodigoVideo" runat="server" Visible="False"></asp:Label>
                   <asp:Label ID="lblCodigoVideoPrimeiro" runat="server" Visible="False"></asp:Label>
                   <asp:Label ID="lblCodigoVideoUltimo" runat="server" Visible="False"></asp:Label>
               </td>
           </tr>
           <tr>
               <td>
                   <table    width=946>
                       <tr>
                           <td width="25px">
                               <asp:ImageButton ID="cmdVideosAnteriores" runat="server" CssClass="botaoLeft" 
                            ImageUrl="~/imagens/1.jpg" />
                           </td>
                           <td class="RelacaoVideos"  width=100% >
                               <asp:DataList ID="dlVideos" runat="server" RepeatColumns="5">
                                   <ItemTemplate>
                                       <table width=130PX >
                                           <tr>
                                               <td align=center>
                                                   <a href='Videos.aspx?cVideo=<%# DataBinder.Eval(Container.DataItem, "cVideo") %>'>
                                                   <img src='http://i4.ytimg.com/vi/<%# DataBinder.Eval(Container.DataItem, "tCodigoVideo") %>/default.jpg'  />
                                                   </a> 
                                               </td>
                                           </tr>
                                           <tr>
                                               <th align=center >
                                                   <%#DataBinder.Eval(Container.DataItem, "tVideo")%></th>
                                           </tr>
                                       </table>
                                   </ItemTemplate>
                               </asp:DataList>
                           </td>
                           <td width="25px">
                               <asp:ImageButton ID="cmdProximosVideos" runat="server" 
                                   ImageUrl="~/imagens/2.jpg" />
                           </td>
                       </tr>
                   </table>
               </td>
           </tr>
       </table>
</radA:RadAjaxPanel>
</center>
