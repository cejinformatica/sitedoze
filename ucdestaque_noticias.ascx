<%@ Control Language="VB" AutoEventWireup="false" CodeFile="ucdestaque_noticias.ascx.vb" Inherits="ucdestaque_noticias" %>
<%@ Register Assembly="RadAjax.Net2" Namespace="Telerik.WebControls" TagPrefix="radA" %>
<table width="100%" class="destaqueTBnoticias2">
    <tr>
        <td class="Titulo" align="left" valign="top">
            <radA:RadAjaxManager ID="RadAjaxManager1" runat="server">
                <AjaxSettings>
                    <radA:AjaxSetting AjaxControlID="cmbCategorias">
                        <UpdatedControls>
                            <radA:AjaxUpdatedControl ControlID="RadAjaxPanel1" />
                        </UpdatedControls>
                    </radA:AjaxSetting>
                </AjaxSettings>
            </radA:RadAjaxManager>
            <table width="100%" height="10px">
                <tr>
                    <td>
                        <h3>Notícias</h3>
                    </td>
                    <td align="right">
                        <asp:DropDownList ID="cmbCategorias" runat="server"
                            AutoPostBack="True" Visible="False">
                        </asp:DropDownList>
                    </td>
                </tr>
            </table>
        </td>
    </tr>
    <tr>
        <td valign="top">
            <radA:RadAjaxPanel ID="RadAjaxPanel1" LoadingPanelID="AjaxLoadingPanel1"
                runat="server" Height="100%" Width="100%" HorizontalAlign="Left" CssClass="vtop">
                <table width="100%">
                    <tr>
                        <td width="100%" valign="top" style="padding: 5px 5px 5px 5px">
                            <table width="100%;" height="316" bgcolor="#FFFFFF">
                                <tr>
                                    <td valign="top">
                                        <asp:DataList ID="dlResultados" runat="server" CssClass="vtop"
                                            RepeatColumns="1" Width="100%">
                                            <FooterStyle VerticalAlign="Top" />
                                            <EditItemStyle VerticalAlign="Top" />
                                            <ItemTemplate>
                                                <table width="100%">
                                                    <tr>
                                                        <td valign="top" style="padding: 5px 0 5px 0;">
                                                            <table>
                                                                <tr>
                                                                    <td rowspan="2">
                                                                        <img alt='<%#fQuebraTextoTitulo(DataBinder.Eval(Container.DataItem, "tTitulo"))%>'
                                                                            height="60" hspace="5"
                                                                            src='<%#fRetornaImagemNoticia(DataBinder.Eval(Container.DataItem, "cNoticia"))%>'
                                                                            style="margin: 5px 5px 5px 5px" vspace="5" width="60" /></td>
                                                                    <td style="vertical-align:top;">
                                                                        <span class="SubtituloNoticiasHome"><%#fQuebraTextoTitulo(DataBinder.Eval(Container.DataItem, "tTitulo"))%></span>
                                                                        <br />
                                                                        <a class="Links" href='DetalhesNoticias.aspx?cNoticia=<%# DataBinder.Eval(Container.DataItem, "cNoticia")%>'>
                                                                            <%#fQuebraTextoResenha(DataBinder.Eval(Container.DataItem, "tChamada"))%> </a>
                                                                    </td>
                                                                </tr>
                                                            </table>
                                                        </td>
                                                    </tr>
                                                </table>
                                                <hr class="hrLinha"></hr>
                                            </ItemTemplate>
                                            <AlternatingItemStyle VerticalAlign="Top" />
                                            <ItemStyle VerticalAlign="Top" />
                                            <SeparatorStyle VerticalAlign="Top" />
                                            <SelectedItemStyle VerticalAlign="Top" />
                                            <HeaderStyle VerticalAlign="Top" />
                                        </asp:DataList>
                                    </td>
                                </tr>
                            </table>
                        </td>
                    </tr>
                </table>
                <radA:AjaxLoadingPanel ID="AjaxLoadingPanel1" runat="server" Height="75px"
                    Width="75px">
                    <img alt="loading..." src="RadControls/Ajax/Skins/Default/Loading.gif" />
                </radA:AjaxLoadingPanel>
            </radA:RadAjaxPanel>
        </td>
    </tr>
</table>
