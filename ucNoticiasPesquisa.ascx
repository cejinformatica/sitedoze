<%@ Control Language="VB" AutoEventWireup="false" CodeFile="ucNoticiasPesquisa.ascx.vb" Inherits="ucNoticiasPesquisa" %>
<table width="100%">
    <tr>
        <td>
            <asp:GridView ID="gvResultados" runat="server" AllowPaging="True"
                AutoGenerateColumns="False" BackColor="White" BorderStyle="None"
                BorderWidth="0px" CellPadding="2" GridLines="Horizontal" PageSize="25"
                Width="100%" Height="30px">
                <RowStyle BackColor="#EAEAEC" Font-Size="12px" ForeColor="#838383" Height="30px" />
                <PagerStyle BackColor="#EAEAEC" ForeColor="#838383" HorizontalAlign="Right" Height="30px" />
                <SelectedRowStyle BackColor="#CCCCCC" Font-Italic="True" ForeColor="#F7F7F7" Height="30px" />
                <HeaderStyle BackColor="#838383" Font-Bold="False" Font-Size="13px"
                    ForeColor="#F7F7F7" Height="30px" />
                <AlternatingRowStyle BackColor="#F7F7F7" />
                <Columns>
                    <asp:TemplateField HeaderText="  Data" ShowHeader="False">
                        <ItemTemplate>
                            <asp:HyperLink ID="lnkData" runat="server" NavigateUrl='<%# "DetalhesNoticias.aspx?cNoticia=" & DataBinder.Eval(Container.Dataitem, "cNoticia") %>' CausesValidation="False"
                                Text='<% # DataBinder.Eval(Container.DataItem, "dNoticia", "{0:dd/MM/yyyy}")%>'></asp:HyperLink>
                        </ItemTemplate>
                        <ItemStyle HorizontalAlign="Left" />
                        <HeaderStyle HorizontalAlign="Left" Width="100px" />
                    </asp:TemplateField>
                    <asp:TemplateField HeaderText="Notícia" ShowHeader="False">
                        <ItemTemplate>
                            <asp:HyperLink ID="lnkPortal" runat="server" NavigateUrl='<%# "DetalhesNoticias.aspx?cNoticia=" & DataBinder.Eval(Container.Dataitem, "cNoticia") %>' CausesValidation="False"
                                Text='<% # DataBinder.Eval(Container.DataItem, "tTitulo")%>'></asp:HyperLink>
                        </ItemTemplate>
                        <ItemStyle HorizontalAlign="Left" />
                        <HeaderStyle HorizontalAlign="Left" />
                    </asp:TemplateField>
                    <asp:TemplateField HeaderText="Código" ShowHeader="False" Visible="False">
                        <ItemTemplate>
                            <asp:HyperLink ID="lnkCodigo" runat="server" NavigateUrl='<%# "DetalhesNoticias.aspx?cNoticia=" & DataBinder.Eval(Container.Dataitem, "cNoticia") %>' CausesValidation="False"
                                Text='<% # DataBinder.Eval(Container.DataItem, "cNoticia")%>'></asp:HyperLink>
                        </ItemTemplate>
                        <ItemStyle HorizontalAlign="Center" />
                        <HeaderStyle HorizontalAlign="Center" Width="100px" />
                    </asp:TemplateField>
                </Columns>
            </asp:GridView>
        </td>
    </tr>
</table>
