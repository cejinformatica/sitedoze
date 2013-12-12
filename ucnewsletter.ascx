<%@ Control Language="VB" AutoEventWireup="false" CodeFile="ucnewsletter.ascx.vb" Inherits="ucnewsletter" %>
<%@ Register Assembly="RadAjax.Net2" Namespace="Telerik.WebControls" TagPrefix="radA" %>
<link href="layout/mundialline/css/estilos.css" rel="stylesheet" type="text/css" />
<radA:RadAjaxPanel ID="RadAjaxPanel1" runat="server">
    <table   >
    <tr>
        <td valign=bottom>
<table  >
    
    <tr>
        <td align=center  >
        <asp:TextBox ID="txtEmail" runat="server" CssClass="NewsletterInput" 
                onBlur="if(this.value=='')this.value='Digite seu e-mail...';" 
                onFocus="this.value=='Digite seu e-mail...'?this.value='':void(0)" 
                value="Digite seu e-mail..." ></asp:TextBox>
                </tr>
    <tr>
        <td align="center" >
            <asp:ImageButton ID="cmdGravar" runat="server" ImageUrl="images/enviar.jpg"  Width=192 />
        </td>
    </tr>
    <tr>
        <td align="left">
            <asp:Label ID="lblMensagem2" runat="server"></asp:Label>
        </td>
    </tr>
</table>
</td>
    </tr>
</table>
</radA:RadAjaxPanel>
