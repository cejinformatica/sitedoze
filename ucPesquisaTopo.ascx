<%@ Control Language="VB" AutoEventWireup="false" CodeFile="ucPesquisaTopo.ascx.vb" Inherits="ucPesquisaTopo" %>
<link href="layout/mundialline/css/estilos.css" rel="stylesheet" type="text/css" />
<script type="text/javascript" src="msdropdown/js/jquery-1.3.2.min.js"></script>
<table id="PesquisaTopo">
    <tr>
        <td width="100%" height="30px">
            <td>
                <span style="color: #ffffff">Categoria:</span></td>
            <td>
                <asp:DropDownList ID="cmbCategorias" runat="server" Width="100" CssClass="pesquisainputS">
                </asp:DropDownList>

            </td>
            <td>
                <asp:TextBox ID="txtPesquisa" runat="server" CssClass="pesquisainput" Text="Pesquisa" onclick="this.value='';"> </asp:TextBox>
            </td>
            <td nowrap>
                <asp:Button runat="server" ID="cmdPesquisar" Text=" "
                    CssClass="btComum2" />
                <asp:Label ID="lblMensagem" runat="server"></asp:Label>
            </td>
    </tr>
    <tr>
        <td colspan="4" align="center"></td>
        <td></td>
    </tr>
    <tr>
        <td colspan="4">
            <asp:Panel ID="pnlPesquisa" runat="server">
                <asp:GridView ID="gvQuantidade" runat="server" AllowPaging="True"
                    AutoGenerateColumns="False" Width="100%" BorderWidth="0px">
                    <Columns>
                        <asp:TemplateField HeaderText="Categoria" ShowHeader="False">
                            <ItemTemplate>
                                <asp:LinkButton ID="lnkCategoria" runat="server" CausesValidation="False"
                                    CommandName="Select" Text='<%# DataBinder.Eval(Container.DataItem,"tCategoria") %>'></asp:LinkButton>
                                <asp:Label ID="lblTipoPesquisa" Visible="false" runat="server" Text='<%# DataBinder.Eval(Container.DataItem,"cTipo") %>'></asp:Label>
                            </ItemTemplate>
                        </asp:TemplateField>
                        <asp:TemplateField HeaderText="Qtd" ShowHeader="False">
                            <ItemTemplate>
                                <asp:LinkButton ID="lnkQtd" runat="server" CausesValidation="False"
                                    CommandName="Select" Text='<%# DataBinder.Eval(Container.DataItem,"nQtd") %>'></asp:LinkButton>
                            </ItemTemplate>
                        </asp:TemplateField>
                    </Columns>
                </asp:GridView>
            </asp:Panel>
        </td>
        <td></td>
    </tr>
</table>


