<%@ Control Language="VB" AutoEventWireup="false" CodeFile="ucEventosDetalhes.ascx.vb" Inherits="ucEventosDetalhes" %>
        <table   width="98%">
            <tr>
                <td class="TxtTituloNoticia" align=left><asp:Label ID="lblEvento" runat="server"></asp:Label></td>
            </tr>
       <tr>
                <td class="Resenha"> 
                    Período de <asp:Label ID="lblDataInicio" runat="server"></asp:Label>
                    -<asp:Label ID="lblDataFim" runat="server"></asp:Label>
                </td>
                    
       </tr>
       <tr>
                <td class="Resenha"> 
                    &nbsp;</td>
                    
       </tr>
   <tr>
                                                            <td style="padding-left:5px" class="Resenha"  >
                                                                
                                                                <asp:Label ID="lblDescricao" runat="server"></asp:Label>
                                                                
                                                            </td>
                                                        </tr>
   <tr>
                                                            <td style="padding-left:5px" class="Resenha"  > &nbsp;</td>
                                                        </tr>
   <tr>
                                                            <td class="Resenha" >
                                                                <b>&nbsp;Telefone:</b>
                                                                <asp:Label ID="lblTelefone" runat="server"></asp:Label>
                                                            </td>
                                                        </tr>
   <tr>
                                                            <td class="Resenha">
                                                                <b>&nbsp;E-mail:</b>
                                                                <asp:Label ID="lblEmail" runat="server"></asp:Label>
                                                            </td>
                                                        </tr>
                                                    <tr>
                                                            <td class="Resenha">
                                                                <b>&nbsp;Local:</b>
                                                                <asp:Label ID="lblLocal" runat="server"></asp:Label>
                                                            </td>
                                                        </tr>
            <tr>
                                                            <td class="Resenha">
                                                                &nbsp;</td>
                                                        </tr>

                                                    </table>
                                                