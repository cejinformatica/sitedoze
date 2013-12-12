<%@ Control Language="VB" AutoEventWireup="false" CodeFile="ucForm_FaleConosco.ascx.vb" Inherits="ucForm_FaleConosco" %>
<asp:Panel ID="pnlFormulario" runat="server">

    <table   width=100%>
        <tr>
                      <td>
             <table   
                    style="border: 1px solid #cccccc; background: #eeeeee" width="100%">
                    <tr>
                        <td align="left" 
                            style="padding-left:15px; padding-top:8px;font-family:Arial; font-size:12px; background-image:url(imagens/contato.jpg); background-position:right; background-repeat:no-repeat;">
                            <table cellpadding="1" cellspacing="2" >
                                <tr>
                                    <td width="220">
                                        *Nome</td>
                                    <td width="230px">
                                        Email</td>
                                    <td style="width: 100px">
                                        Telefone</td>
                                </tr>
                                <tr>
                                    <td style="width: 100px">
                                        <asp:TextBox ID="Nome" runat="server" Width="263px"></asp:TextBox>
                                    </td>
                                    <td style="width: 100px">
                                        <asp:TextBox ID="Email" runat="server" Width="276px"></asp:TextBox>
                                    </td>
                                    <td style="width: 100px">
                                        <asp:TextBox ID="Telefone" runat="server" Width="120px"></asp:TextBox>
                                    </td>
                                </tr>
                            </table>
                            <table >
                                <tr>
                                    <td style="width: 100px">
                                        Mensagem</td>
                                </tr>
                                <tr>
                                    <td style="width: 100px; margin-left: 40px;">
                                        <asp:TextBox ID="Mensagem" runat="server" Height="150px" Width="679px" TextMode="MultiLine"></asp:TextBox>
                                    </td>
                                </tr>
                                <tr>
                                    <td align=right style="padding-top:10px;"  >
                                        <asp:Button ID="cmdEnviar" runat="server" CssClass="btComum" Text="Enviar" />
                                    </td>
                                </tr>
                            </table>
                            <br />
                            <table   style="width: 100%">
                                <tr>
                                    <td align="right">
                                        &nbsp;</td>
                                </tr>
                            </table>
                            <br />
                        </td>
                    </tr>
                </table>
            </td>
        </tr>
    </table>
</p>
</asp:Panel>