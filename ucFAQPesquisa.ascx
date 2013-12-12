<%@ Control Language="VB" AutoEventWireup="false" CodeFile="ucFAQPesquisa.ascx.vb" Inherits="ucFAQPesquisa" %>
<link href="layout/mundialline/css/estilos.css" rel="stylesheet" type="text/css" />
<link href="css/slider.css" media="screen" rel="stylesheet" type="text/css" />
 <link href="layout/mundialline/SpryAssets/SpryCollapsiblePanel.css" rel="stylesheet" type="text/css" />
<script src="layout/mundialline/SpryAssets/SpryCollapsiblePanel.js" type="text/javascript"></script>
<table  width="100%" >
    <tr>
        <td class="TDPesquisaDois">
            <h2 class="TDPesquisaDois" >Faq - Perguntas Frequentes</h2>
            <hr>
            </td>
    </tr>
    <tr>
        <td >
            <asp:GridView ID="gvFaq" runat="server" AllowPaging="True" AutoGenerateColumns="False" Width="100%" BorderWidth="0">
                <Columns>
                    <asp:TemplateField>
                        <ItemTemplate>
                            <asp:Label ID="lblFaq" runat="server" Text='<% # DataBinder.Eval(Container.DataItem, "tFaq") %>'></asp:Label>
                        </ItemTemplate>
                    </asp:TemplateField>
                </Columns>
            </asp:GridView>
      
            </td>
    </tr>
</table>