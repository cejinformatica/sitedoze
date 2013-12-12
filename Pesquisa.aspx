<%@ Page Language="VB" AutoEventWireup="false" CodeFile="Pesquisa.aspx.vb" Inherits="Pesquisa" %>

<%@ Register Src="uclogotipo.ascx" TagName="uclogotipo" TagPrefix="uc7" %>
<%@ Register Src="ucRodape.ascx" TagName="ucRodape" TagPrefix="uc12" %>
<%@ Register Src="ucPesquisar.ascx" TagName="ucPesquisar" TagPrefix="uc13" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head id="Head1" runat="server">
    <title></title>
    <link href="css/slider.css" media="screen" rel="stylesheet" type="text/css" />
    <link href="css/page.css" media="screen" rel="stylesheet" type="text/css" />
    <link href="layout/mundialline/css/estilos.css" rel="stylesheet" type="text/css" />
</head>
<body>
    <form id="form1" runat="server" style="height: 100%;">
        <div class="geral">
            <div class="header">
                <uc7:uclogotipo ID="uclogotipo1" runat="server" />
            </div>
            <div class="content">
                <center>
         <uc13:ucPesquisar ID="ucPesquisar1" runat="server" />
    </center>
            </div>
            <div class="footer">
                <uc12:ucRodape ID="ucRodape1" runat="server" />
            </div>
        </div>

    </form>
</body>
</html>



