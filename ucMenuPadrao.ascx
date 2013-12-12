<%@ Control Language="VB" AutoEventWireup="false" CodeFile="ucMenuPadrao.ascx.vb" Inherits="ucMenuPadrao" %>
<%@ Register Assembly="RadPanelbar.Net2" Namespace="Telerik.WebControls" TagPrefix="radP" %>
<%@ Register assembly="RadMenu.Net2" namespace="Telerik.WebControls" tagprefix="radM" %>
<div style="float:left">
<radM:RadMenu ID="rpbPadrao" runat="server" BorderWidth="0" BorderStyle="None" 
    CollapseDelay="200" Skin="Default" SkinID="Default" 
    SkinsPath="RadControls/Menu/Skins">
    <CollapseAnimation Duration="100" />
</radM:RadMenu>
</div>

        


