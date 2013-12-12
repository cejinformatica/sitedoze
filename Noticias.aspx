<%@ Page Language="VB" AutoEventWireup="false" CodeFile="Noticias.aspx.vb" Inherits="Noticias" %>

<%@ Register src="ucMenus.ascx" tagname="ucMenus" tagprefix="uc1" %>
<%@ Register src="uclogotipo.ascx" tagname="uclogotipo" tagprefix="uc2" %>
<%@ Register src="ucDetalhesNoticias.ascx" tagname="ucDetalhesNoticias" tagprefix="uc3" %>
<%@ Register src="ucDestaques.ascx" tagname="ucDestaques" tagprefix="uc22" %>
<%@ Register src="ucMenuPadrao.ascx" tagname="ucMenuPadrao" tagprefix="uc21" %>
<%@ Register src="ucMenuSegurosFinancas.ascx" tagname="ucMenuSegurosFinancas" tagprefix="uc20" %>
<%@ Register src="ucdestaque_banner.ascx" tagname="ucdestaque_banner" tagprefix="uc4" %>
<%@ Register src="ucdestaque_noticias.ascx" tagname="ucdestaque_noticias" tagprefix="uc3" %>
<%@ Register src="uclogotipo.ascx" tagname="uclogotipo" tagprefix="uc7" %>
<%@ Register src="ucpublicidade_main.ascx" tagname="ucpublicidade_main" tagprefix="uc9" %>
<%@ Register src="ucRodape.ascx" tagname="ucRodape" tagprefix="uc12" %>
<%@ Register src="ucbig_banner.ascx" tagname="ucbig_banner" tagprefix="uc5" %>
<%@ Register src="ucEventos.ascx" tagname="ucEventos" tagprefix="uc16" %>
<%@ Register src="ucbig_banner.ascx" tagname="ucbig_banner" tagprefix="uc11" %>
<%@ Register src="ucpublicidade.ascx" tagname="ucpublicidade" tagprefix="uc6" %>
<%@ Register src="ucnewsletter.ascx" tagname="ucnewsletter" tagprefix="uc10" %>
<%@ Register src="ucultimas_noticias.ascx" tagname="ucultimas_noticias" tagprefix="uc8" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml" >
<head id="Head1" runat="server">
    <title>Home Cash - Clube de Beneficios</title>
<link href="css/slider.css" media="screen" rel="stylesheet" type="text/css" />
<link href="css/page.css" media="screen" rel="stylesheet" type="text/css" />
<link href="css/slider.css" media="screen" rel="stylesheet" type="text/css" />
<link href="layout/mundialline/css/estilos.css" rel="stylesheet" type="text/css" />
</head>
<body >
<form id="form1" runat="server" style="height:100%;">

<div class="geral">
     <div class="header">
         
         <uc7:uclogotipo ID="uclogotipo1" runat="server" />
     </div>
     
     <div class="content">
  
         <uc8:ucultimas_noticias ID="ucultimas_noticias1" runat="server" />

  
      
     </div>
         <div class="rodapefake"></div>
     <div class="footer">
      
      
         <uc12:ucRodape ID="ucRodape1" runat="server" />
     </div>
 </div>
 
</form>
</body>
</html>



