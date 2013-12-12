<%@ Control Language="VB" AutoEventWireup="false" CodeFile="ucGaleriaPesquisa.ascx.vb" Inherits="ucGaleriaPesquisa" %>
<%@ Register assembly="RadAjax.Net2" namespace="Telerik.WebControls" tagprefix="radA" %>
<meta http-equiv="Content-Type" content="text/html; charset=windows-1250" />
<link href="css_pirobox/css.css" media="screen" rel="stylesheet" type="text/css" />
<link href="css_pirobox/demo5/style.css" class="piro_style" media="screen" title="white" rel="stylesheet" type="text/css" />

<script type="text/javascript" src="msdropdown/js/jquery-1.3.2.min.js"></script>
<script type="text/javascript" src="msdropdown/js/jquery.dd.js"></script>

<script type="text/javascript" src="js/pirobox.js"></script>
<script type="text/javascript">
    $(document).ready(function () {
        $().piroBox({
            my_speed: 400, //animation speed
            bg_alpha: 0.3, //background opacity
            slideShow: true, // true == slideshow on, false == slideshow off
            slideSpeed: 4, //slideshow duration in seconds(3 to 6 Recommended)
            close_all: '.piro_close,.piro_overlay'// add class .piro_overlay(with comma)if you want overlay click close piroBox
        });
    });
</script>

<center>
       <table id="GaleriaImagem"  width=946 >
        <tr>
            <td>
                <table  width="100%" height=50>
                    <tr >
                        <td class="TxtTituloNoticia" align=left>
                            Estrutura</td>
                    </tr>
                    <tr>
                        <td class="CampoPesquisaImagens" align=left ><br>
<table   bgcolor=#d77103 width=100%  >
<tr><td style="padding-top:6px; padding-left:5px;" width=170px style="width:170px;" >
    <asp:DropDownList ID="cmbRelacaoCategorias" runat="server" CssClass="Cselect" Height=24px >
    </asp:DropDownList>
</td>
<td align=left >
<asp:TextBox ID="txtPesquisar" runat="server" CssClass="Cinput" ></asp:TextBox>
    &nbsp;<asp:Button ID="cmdPesquisar" runat="server" Text="Pesquisar" 
        CssClass="btComum" />
    <asp:Button ID="cmdTop10" runat="server" Text="Top 10 Álbuns" 
        CssClass="btComum" />
  </td>
</table>
                        </td>
                    </tr>
                    <tr>
                        <td class="navegacaoGaleria" align=left >
                            <span class="spancaminho">Voc&ecirc; esta em:                             <asp:Label ID="lblCategoria" runat="server" Visible="true"></asp:Label>
&nbsp;-
                            <asp:Label ID="lblAlbum" runat="server"></asp:Label></span>
                        </td>
                    </tr>
                </table>
                <asp:Panel ID="pnlAlbuns" runat="server"><br>
<asp:GridView runat=server ID="gvAlbuns" AllowPaging="True" 
    AutoGenerateColumns="False" BorderWidth="1px" Width="946px" BackColor="White" 
                        BorderColor="#f1f1f1" BorderStyle="None" CellPadding="3" 
                        GridLines="Horizontal">
      <RowStyle BackColor="#f1f1f1" ForeColor="#838383" />
      <Columns>
      
               <asp:TemplateField HeaderText="  1Álbum">
               <ItemTemplate>
                    <asp:LinkButton ID="lnkAlbum" runat="server" CausesValidation="False" 
                        CommandName="Select" 
                        Text='<% # DataBinder.Eval(Container.Dataitem, "tAlbum") %>'></asp:LinkButton>
                    <asp:Label ID="lblCodigo" runat="server" Visible="false"  
                        Text='<%# DataBinder.Eval(Container.DataItem, "cAlbum") %>'></asp:Label>
                    <asp:Label ID="lblCodigoCategoria" runat="server" Visible="false" 
                        Text='<%# DataBinder.Eval(Container.DataItem, "cCategoriaFoto") %>'></asp:Label>
               </ItemTemplate>
              <HeaderStyle HorizontalAlign="Left" />
          </asp:TemplateField>
                 <asp:TemplateField HeaderText="Categoria">
    <ItemTemplate>
        <asp:LinkButton ID="lnkCategoria" runat="server" CausesValidation="False" 
                        CommandName="Select" 
                        
            Text='<% # DataBinder.Eval(Container.Dataitem, "tCategoriaFoto") %>'></asp:LinkButton>
    </ItemTemplate>
        <HeaderStyle HorizontalAlign="Left" />
    </asp:TemplateField>
      <asp:TemplateField HeaderText="Quantidade de Fotos">
          <ItemTemplate>
            <asp:Label ID="lblQuantidade" runat="server" 
                  Text='<%# DataBinder.Eval(Container.DataItem, "qFotos") %>'></asp:Label>
          </ItemTemplate>
              <HeaderStyle HorizontalAlign="Left" />
          </asp:TemplateField>
          </Columns>
      <FooterStyle BackColor="#B5C7DE" ForeColor="#838383" />
      <PagerStyle BackColor="#f1f1f1" ForeColor="#838383" HorizontalAlign="LEFT" />
      <SelectedRowStyle BackColor="#738A9C" Font-Bold="True" ForeColor="#F7F7F7" />
      <HeaderStyle BackColor="#838383" Font-Bold="True" ForeColor="#F7F7F7" 
          Height="30px" />
      <AlternatingRowStyle BackColor="#F7F7F7" />
    </asp:GridView> 
                </asp:Panel>
    
                <br>
            </td>
    </tr>
        <tr>
            <td>
                <asp:Panel ID="pnlCategorias" runat="server">
                <asp:GridView runat=server ID="gvCategorias" AllowPaging="True" 
                AutoGenerateColumns="False" BorderWidth="1px" Width="946px" BackColor="White" 
                        BorderColor="#f1f1f1" BorderStyle="None" CellPadding="3" 
                        GridLines="Horizontal">
                    <RowStyle BackColor="#f1f1f1" ForeColor="#838383" />
                  <Columns>
                <asp:TemplateField HeaderText="Categorias">
                <ItemTemplate>
                    <asp:LinkButton ID="lnkCategoria" runat="server" CausesValidation="False" 
                    CommandName="Select" 
                    Text='<% # DataBinder.Eval(Container.Dataitem, "tCategoriaFoto") %>'></asp:LinkButton>
                </ItemTemplate>
                    <HeaderStyle HorizontalAlign="Left" />
                </asp:TemplateField>
                      <asp:TemplateField HeaderText="Quantidade de Fotos">
                      <ItemTemplate>
                            <asp:Label ID="lblQuantidade" runat="server" Text='<%# DataBinder.Eval(Container.DataItem, "qFotos") %>'></asp:Label>
                            <asp:Label ID="lblCodigo" runat="server" Visible="false" Text='<%# DataBinder.Eval(Container.DataItem, "cCategoriaFoto") %>'></asp:Label>
                      </ItemTemplate>
                          <HeaderStyle HorizontalAlign="Left" />
                      </asp:TemplateField>
                </Columns>
                     <FooterStyle BackColor="#B5C7DE" ForeColor="#838383" />
                    <PagerStyle BackColor="#f1f1f1" ForeColor="#838383" HorizontalAlign="LEFT" />
                    <SelectedRowStyle BackColor="#738A9C" Font-Bold="True" ForeColor="#F7F7F7" />
                    <HeaderStyle BackColor="#838383" Font-Bold="True" ForeColor="#F7F7F7" 
                        Height="30px" />
                    <AlternatingRowStyle BackColor="#F7F7F7" />
                     </asp:GridView>
                </asp:Panel>
                <asp:Panel ID="pnlGalerias" runat="server">
                    <asp:GridView ID="gvGalerias" runat="server" AllowPaging="True" 
                        AutoGenerateColumns="False" BorderWidth="1px" Width="946px" 
                        BackColor="White" BorderColor="#f1f1f1" BorderStyle="None" CellPadding="3" 
                        GridLines="Horizontal">
                        <RowStyle BackColor="#f1f1f1" ForeColor="#838383"  HorizontalAlign="Left" Height=30PX />
                        <Columns>
                                               <asp:TemplateField HeaderText="  Álbum" >
                                               <ItemTemplate>
                                                      <asp:LinkButton ID="lnkAlbum" runat="server" CausesValidation="False" 
                                                        CommandName="Select" 
                                                        Text='<% # DataBinder.Eval(Container.Dataitem, "tAlbum") %>'></asp:LinkButton>
                                                    <asp:Label ID="lblCodigo" runat="server" Visible="false"  Text='<%# DataBinder.Eval(Container.DataItem, "cAlbum") %>'></asp:Label>
                                                    <asp:Label ID="lblCodigoCategoria" runat="server" Visible="false" Text='<%# DataBinder.Eval(Container.DataItem, "cCategoriaFoto") %>'></asp:Label>
                                               </ItemTemplate>
                                              <HeaderStyle HorizontalAlign="Left" />
                                          </asp:TemplateField>
                            <asp:TemplateField HeaderText="Quant. Imagem">
                                <ItemTemplate>
                                    <asp:Label ID="lblFotos" runat="server" Text='<%# DataBinder.Eval(Container.DataItem, "qFotos") %>'></asp:Label>
                                </ItemTemplate>
                                <HeaderStyle HorizontalAlign="Left" />
                            </asp:TemplateField>
                            <asp:TemplateField HeaderText="Data do Cadastro">
                                <ItemTemplate>
                                    <asp:Label ID="lblData" runat="server" Text='<%# DataBinder.Eval(Container.DataItem, "dCadastro", "{0:dd/MM/yyyy}") %>'></asp:Label>
                                </ItemTemplate>
                                <HeaderStyle HorizontalAlign="Left" />
                            </asp:TemplateField>
                        </Columns>
                        <FooterStyle BackColor="#B5C7DE" ForeColor="#838383" />
                        <PagerStyle BackColor="#f1f1f1" ForeColor="#838383" HorizontalAlign="LEFT" />
                        <SelectedRowStyle BackColor="#738A9C" Font-Bold="True" ForeColor="#F7F7F7" />
                        <HeaderStyle BackColor="#838383" Font-Bold="True" ForeColor="#F7F7F7" 
                            Height="30px" />
                        <AlternatingRowStyle BackColor="#F7F7F7" />
                    </asp:GridView>
                </asp:Panel>
              </td>
    </tr>
</table>
<center>
<table cellpadding="0" width=946 >
    <tr>
        <td valign="top" align=left>
            <asp:Panel runat="server" ID="pnlFotos">
            <asp:DataList ID="dlFotos" runat="server" RepeatColumns="5" 
                    RepeatDirection=Horizontal >
                <ItemTemplate>
                    <table   width="120">
                        <tr>
                            <td rowspan="2" align=left  style=" padding:5px;"">
         
            <a href='<%# fRetornaImagem( DataBinder.Eval(Container.DataItem, "tFoto"), DataBinder.Eval(Container.DataItem, "cAlbum") ) %>' class="pirobox_gall" title='<%#DataBinder.Eval(Container.DataItem, "tLegenda")%>'>
            <img src='<%# fRetornaImagem( DataBinder.Eval(Container.DataItem, "tFoto"), DataBinder.Eval(Container.DataItem, "cAlbum") ) %>' width="120px" height=90px px>
            </a></td>
                           
                        </tr>
                        </table>
                </ItemTemplate>
            </asp:DataList>
        </asp:Panel>
        </td>
    </tr>
</table>
</center>
</center>