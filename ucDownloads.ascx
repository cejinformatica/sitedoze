<%@ Control Language="VB" AutoEventWireup="false" CodeFile="ucDownloads.ascx.vb" Inherits="ucDownloads" %>
<%@ Register Assembly="RadAjax.Net2" Namespace="Telerik.WebControls" TagPrefix="radA" %>
<link href="layout/mundialline/css/estilos.css" rel="stylesheet" type="text/css" />
<radA:RadAjaxPanel ID="rapDownloads" runat="server" Width="100%">
<center>
<table cellpadding="0"  cellspacing="0" width="956" >
    <tr>
        <td style="line-height:30px; padding-left:5px;" class=TxtTituloNoticia align="left"  >
           CENTRAL DE DOWNLOAD</td>
    </tr>
    <tr>
        <td>
            &nbsp;</td>
    </tr>
    <tr>
        <td  align="left" >
              Selecione a categoria:
            <asp:DropDownList ID="cmbCategorias" runat="server" Width="200px" AutoPostBack="True">
            </asp:DropDownList></td>
    </tr>
  
    <tr>
        <td  valign=top>
            <asp:GridView ID="gvDownloads" runat="server" AllowPaging="True" AutoGenerateColumns="False" Width="100%" BorderWidth="0">
                <Columns>
                    <asp:TemplateField>
                        <ItemTemplate>
                            <asp:Label ID="lblDownload" runat="server" Text='<% # DataBinder.Eval(Container.DataItem, "tDownload") %>'></asp:Label>
                        </ItemTemplate>
                    </asp:TemplateField>
                </Columns>
            </asp:GridView>
        </td>
    </tr>
</table>
</center>
</radA:RadAjaxPanel>
