<%@ Control Language="VB" AutoEventWireup="false" CodeFile="ucMenuSegurosFinancas.ascx.vb" Inherits="ucMenuSegurosFinancas" %>
<%@ Register Assembly="RadPanelbar.Net2" Namespace="Telerik.WebControls" TagPrefix="radP" %>
<table   width=180px>

<tr>
<td style="width: 100px; padding-left:2PX;"   >
<%--<radP:RadPanelbar 
ID="rpbSegurosFinancas" 
runat="server"
ItemCollapsedCssClass="panelbarItemSegurosFinancas"
ItemSelectedCssClass="ItensMenuSegurosFinancas"
ImagesBaseDir="~/App_Themes/SegurosFinancas/RadPanelbar/Img/" 
CssFile="~/App_Themes/SegurosFinancas/RadPanelbar/Styles/SegurosFinancas.css" 
Width="161px" 
ItemTextCollapsedCssClass="ItensMenuSegurosFinancas" 
ItemTextDisabledCssClass="ItensMenuSegurosFinancas"
>
<PanelItems>
<radP:PanelItem  
runat="server"
 Expanded="True"
  Text="Rede" 
  ItemTextExpandedCssClass="ItensMenuPrincipalSegurosFinancas"
  >
<radP:PanelItem  runat="server" Text="New Item">
</radP:PanelItem>
<radP:PanelItem  runat="server" Text="New Item">
</radP:PanelItem>
</radP:PanelItem>
</PanelItems>
</radP:RadPanelbar>--%>



<radP:RadPanelbar 
ID="rpbSegurosFinancas" 
runat="server"

ItemCollapsedCssClass="panelbarItemSegurosFinancas"
ItemSelectedCssClass="ItensMenuSegurosFinancas"
ImagesBaseDir="~/App_Themes/SegurosFinancas/RadPanelbar/Img/" 
CssFile="~/App_Themes/SegurosFinancas/RadPanelbar/Styles/SegurosFinancas.css" 
Width="180px" 
ItemTextCollapsedCssClass="ItensMenuSegurosFinancas" 
ItemTextDisabledCssClass="ItensMenuSegurosFinancas"
ItemTextExpandedCssClass="ItensMenuSegurosFinancas" 
FullExpandedPanels="True"
HeaderCollapsedCssClass="ItensMenuPrincipalSegurosFinancas" 
HeaderDisabledCssClass="ItensMenuPrincipalSegurosFinancas"
HeaderExpandedCssClass="ItensMenuPrincipalSegurosFinancas" 
HeaderHoverCollapsedCssClass="ItensMenuPrincipalSegurosFinancas" 
HeaderHoverExpandedCssClass="ItensMenuPrincipalSegurosFinancas" 
HeaderSelectedCssClass="ItensMenuPrincipalSegurosFinancas" 
HeaderTextCollapsedCssClass="ItensMenuPrincipalSegurosFinancas" 
HeaderTextDisabledCssClass="ItensMenuPrincipalSegurosFinancas" 
HeaderTextExpandedCssClass="ItensMenuPrincipalSegurosFinancas" 
HeaderTextHoverCollapsedCssClass="ItensMenuPrincipalSegurosFinancas"
OnPanelItemDataBound="rpbSegurosFinancas_OnPanelItemDataBound"
>
</radP:RadPanelbar>
</td>
</tr>
</table>
