<%@ Page Language="VB" AutoEventWireup="false" CodeFile="Default.aspx.vb" Inherits="_Default" %>

<%@ Register Src="ucRodape.ascx" TagName="ucRodape" TagPrefix="uc12" %>
<%@ Register Src="ucnewsletter.ascx" TagName="ucnewsletter" TagPrefix="uc10" %>
<%@ Register Src="uclogotipo.ascx" TagName="uclogotipo" TagPrefix="uc7" %>
<%@ Register Src="ucpublicidade.ascx" TagName="ucpublicidade" TagPrefix="uc6" %>
<%@ Register Src="ucdestaque_noticias.ascx" TagName="ucdestaque_noticias" TagPrefix="uc3" %>
<%@ Register Src="ucdestaque_banner.ascx" TagName="ucdestaque_banner" TagPrefix="uc4" %>
<%@ Register Assembly="RadInput.Net2" Namespace="Telerik.WebControls" TagPrefix="radI" %>
<%@ Register Assembly="RadAjax.Net2" Namespace="Telerik.WebControls" TagPrefix="radA" %>
<%@ Register Assembly="RadPanelbar.Net2" Namespace="Telerik.WebControls" TagPrefix="radP" %>
<%@ Register Src="ucBannerSlider.ascx" TagName="ucBannerSlider" TagPrefix="uc29" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <link href="css/slider.css" media="screen" rel="stylesheet" type="text/css" />
    <link href="css/page.css" media="screen" rel="stylesheet" type="text/css" />
    <link href="layout/mundialline/css/estilos.css" rel="stylesheet" type="text/css" />
    <style type="text/css">
        .lateral { width: 200px; border: 1px solid #d1d1d1; padding: 5px 5px 5px 5px; border-radius: 10px; margin-right: 5px; height: 560px; }
        .lateral2 { width: 180px; border: 1px solid #d1d1d1; padding: 5px 5px 5px 5px; border-radius: 10px; margin-right: 5px; height: 560px; }
        .centro { width: 510px; border: 1px solid #d1d1d1; padding: 5px 5px 5px 15px; border-radius: 10px; margin-right: 5px; height: 560px; }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <center>
    <table width="100%"  height="100%" >
        <tr>
            <td height="20px">
                <uc7:uclogotipo ID="uclogotipo1" runat="server" />
            </td>
        </tr>
        <tr>
            <td align="left"  style="height:524px;" valign=top >
                  <uc29:ucBannerSlider ID="ucBannerSlider1" runat="server" />
            </td>
        </tr>
        <tr>
            <td>
            <div style=" width:100%; margin-top:-120px;  position:absolute; z-index:1000; background-image:url(imagens/fundo-conteudo.png); background-repeat:no-repeat; background-position:top center; padding:25px 0px 0px 0px;">
                <center>
                <table width=100%  >
                  <tr>
                  <td>
                  <center>
                  <table  width="946">
                    <tr>
                        <td width=184px style="width:184px"  valign="top">
                            <div class="lateral">
                            <img src="imagens/redessociais.jpg" /><br/>
                            <img alt="" src="images/linhas.jpg" /><br/>
                            <img src="images/news.jpg" /><br/>
                            <uc10:ucnewsletter ID="ucnewsletter1" runat="server" /><br/>
                            <img alt="" src="images/linhas.jpg" /><br/>
                            <uc4:ucdestaque_banner ID="ucdestaque_banner1" runat="server" /><br/></div>
                        </td>
                        <td valign="top"  >
                            <div class="centro">
                            <uc3:ucdestaque_noticias ID="ucdestaque_noticias1" runat="server" />
                                    </div>
                        </td>
                        <td style="width:184px" valign=top>
                            <div class="lateral2">
                            <uc6:ucpublicidade ID="ucpublicidade1" runat="server" />
                              </div>   
                            </td>
                    </tr>
               </table>
                  </center>
                  </td>
                  <tr>
                      <td ><br/>
                            <uc12:ucRodape ID="ucRodape1" runat="server" />
                        </td>
                    </tr>
                </table>
                </center>
                </div>
            </td>
        </tr>
       <tr>
          <td >
          </td>
          </tr>
    </table>
    </center>
    </form>
</body>
</html>
