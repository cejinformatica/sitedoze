<%@ Control Language="VB" AutoEventWireup="false" CodeFile="ucPesquisar.ascx.vb" Inherits="ucPesquisar" %>
<table  width="946" id="">
    <tr>
        <td colspan="3" class="TxtTituloNoticia" style="text-align:left">Pesquisa</td>
    </tr>
    <tr>
        <td colspan="3">
            <table class="style1">
                <tr>
                    <td style="padding-bottom: 5px;">
                        <table width="400">
                            <tr>
                                <td>&nbsp;&nbsp;Categoria:&nbsp;&nbsp;</td>
                                <td width="115px">

                                    <asp:DropDownList ID="cmbCategorias" runat="server" Width="100px" CssClass="pesquisainputS">
                                    </asp:DropDownList>
                                </td>
                                <td align="right">
                                    <asp:TextBox ID="txtPesquisa" runat="server" Width="214px" class="pesquisainput"
                                        onclick="this.value='';" value="Pesquisa"></asp:TextBox>
                                </td>
                                <td align="left" valign="top" style="padding-top: 0px;">
                                    <asp:Button runat="server" ID="cmdPesquisar" Text=" " CssClass="btComum2" />
                                </td>
                                <td align="right" valign="top" style="padding-top: 0px; line-height: 27px;" height="27px;">&nbsp;</td>
                            </tr>
                        </table>
                    </td>
                    <td align="right">
                        <asp:Label ID="lblMensagem" runat="server" CssClass="txtPesquisaErro"></asp:Label>
                    </td>
                </tr>
            </table>
        </td>
    </tr>

    <tr>
        <td style="height: 19px" colspan="3" valign="top" align="LEFT">
            <asp:Panel ID="pnlPesquisa" runat="server" CssClass="fonttexto">
                <asp:GridView ID="gvQuantidade" runat="server" AllowPaging="True"
                    AutoGenerateColumns="False" Width="100%" CellPadding="4"
                    ForeColor="#333333" GridLines="None" Style="margin-right: 0px"
                    HorizontalAlign="Left" EnableModelValidation="True">
                    <RowStyle BackColor="#f1f1f1" ForeColor="#333333" Height="30px" />
                    <Columns>
                        <asp:TemplateField HeaderText=" Categoria" ShowHeader="False" ItemStyle-HorizontalAlign="Left" FooterStyle-HorizontalAlign="Left">
                            <ItemTemplate>
                                <asp:LinkButton ID="lnkCategoria" runat="server" CausesValidation="False"
                                    CommandName="Select"
                                    Text='<%# DataBinder.Eval(Container.DataItem,"tCategoria") %>'></asp:LinkButton>
                                <asp:Label ID="lblTipoPesquisa" Visible="false" runat="server"
                                    Text='<%# DataBinder.Eval(Container.DataItem,"cTipo") %>'></asp:Label>
                            </ItemTemplate>
                            <FooterStyle HorizontalAlign="Left" />
                            <HeaderStyle HorizontalAlign="Left" />
                            <ItemStyle HorizontalAlign="Left" />
                        </asp:TemplateField>
                        <asp:TemplateField HeaderText="Qtd" ShowHeader="False">
                            <ItemTemplate>
                                <asp:LinkButton ID="lnkQtd" runat="server" CausesValidation="False"
                                    CommandName="Select"
                                    Text='<%# DataBinder.Eval(Container.DataItem,"nQtd") %>'></asp:LinkButton>
                            </ItemTemplate>
                            <ControlStyle Width="50px" />
                            <FooterStyle Width="50px" />
                            <HeaderStyle Width="50px" />
                            <ItemStyle Width="50px" />
                        </asp:TemplateField>
                    </Columns>
                    <FooterStyle BackColor="#838383" Font-Bold="True" ForeColor="White" Height="30px" />
                    <PagerStyle BackColor="#5a5a5a" ForeColor="#333333"
                        Height="30px" />
                    <SelectedRowStyle BackColor="#5a5a5a" Font-Bold="True" ForeColor="#000000"
                        Height="30px" />
                    <HeaderStyle BackColor="#838383" Font-Bold="True"
                        Height="30px" ForeColor="White" />
                    <AlternatingRowStyle BackColor="White" />
                </asp:GridView>
            </asp:Panel>
        </td>
    </tr>
    <tr>
        <td style="height: 19px" colspan="3">
            <asp:Panel ID="pnlPesquisaInformacao" runat="server">
                <asp:PlaceHolder ID="phTemplates" runat="server"></asp:PlaceHolder>
            </asp:Panel>
        </td>
    </tr>
</table>

