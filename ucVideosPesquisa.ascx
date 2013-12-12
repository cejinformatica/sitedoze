<%@ Control Language="VB" AutoEventWireup="false" CodeFile="ucVideosPesquisa.ascx.vb" Inherits="ucVideosPesquisa" %>
<asp:DataList ID="dlVideos" runat="server" RepeatColumns="5">
   <ItemTemplate>
       <table class="style1">
           <tr>
               <td>
                   <a href='Videos.aspx?cVideo=<%# DataBinder.Eval(Container.DataItem, "cVideo") %>'>
                   <img src='http://i4.ytimg.com/vi/<%# DataBinder.Eval(Container.DataItem, "tCodigoVideo") %>/default.jpg' />
                   </a> 
               </td>
           </tr>
           <tr>
               <td class="Subtitulo2">
                   <%#DataBinder.Eval(Container.DataItem, "tVideo")%></td>
           </tr>
       </table>
   </ItemTemplate>
</asp:DataList>