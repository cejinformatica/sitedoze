<%@ Control Language="VB" AutoEventWireup="false" CodeFile="ucForm_TrabalheConosco.ascx.vb" Inherits="ucForm_TrabalheConosco" %>
<asp:Panel ID="pnlFormulario" runat="server">
<table   width="100%" style="border:1px solid #cccccc; background:#eeeeee">
    <tr>
        <td align="left" style="padding-left:8px; padding-top:8px;font-family:Arial; font-size:12px"  >
<fieldset>
<legend><b>Departamento Pretendido</b></legend>
<br>
<table cellpadding="1" cellspacing="0">
      <tr>
        <td style="width: 100px">
              <asp:DropDownList ID="DepartamentoPretendido" runat="server">
                  <asp:ListItem>Vendas</asp:ListItem>
                  <asp:ListItem>Financeiro</asp:ListItem>
                  <asp:ListItem>Compras</asp:ListItem>
                  <asp:ListItem>RH</asp:ListItem>
                  <asp:ListItem>Marketing</asp:ListItem>
                  <asp:ListItem>Administração</asp:ListItem>
              </asp:DropDownList>
        </td>
    </tr>
</table>
</fieldset>
<br>
            <br >
            <fieldset>
                <legend><b>Dados Pessoais</b></legend><br>
                <table cellpadding="1" cellspacing="0">
                    <tr>
                        <td width="270">
                            Nome</td>
                        <td nowrap="nowrap">
                            Data de Nascimento</td>
                    </tr>
                    <tr>
                        <td style="width: 100px">
                            <asp:TextBox ID="Nome" runat="server" Width="250px"></asp:TextBox>
                        </td>
                        <td style="width: 100px">
                            <asp:TextBox ID="Nascimento" runat="server" Width="100px"></asp:TextBox>
                        </td>
                    </tr>
                </table>
                <table cellpadding="1" cellspacing="0">
                    <tr>
                        <td width="140">
                            Telefone</td>
                        <td nowrap="nowrap" width="140">
                            Celular</td>
                        <td nowrap="nowrap">
                            E-mail</td>
                    </tr>
                    <tr>
                        <td style="width: 100px">
                            <asp:TextBox ID="Telefone" runat="server" Width="120px"></asp:TextBox>
                        </td>
                        <td style="width: 100px">
                            <asp:TextBox ID="Celular" runat="server" Width="120px"></asp:TextBox>
                        </td>
                        <td style="width: 100px">
                            <asp:TextBox ID="Email" runat="server" Width="220px"></asp:TextBox>
                        </td>
                    </tr>
                </table>
                <table cellpadding="1" cellspacing="0">
                    <tr>
                        <td width="270">
                            Endereço</td>
                        <td nowrap="nowrap" width="140">
                            Complemento</td>
                        <td nowrap="nowrap">
                            Bairro</td>
                    </tr>
                    <tr>
                        <td style="width: 100px">
                            <asp:TextBox ID="Endereco" runat="server" Width="250px"></asp:TextBox>
                        </td>
                        <td style="width: 100px">
                            <asp:TextBox ID="Complemento" runat="server" Width="120px"></asp:TextBox>
                        </td>
                        <td style="width: 100px">
                            <asp:TextBox ID="Bairro" runat="server" Width="150px"></asp:TextBox>
                        </td>
                    </tr>
                </table>
                <table cellpadding="1" cellspacing="0">
                    <tr>
                        <td width="270">
                            CEP</td>
                    </tr>
                    <tr>
                        <td style="width: 100px">
                            <asp:TextBox ID="CEP" runat="server" Width="80px"></asp:TextBox>
                        </td>
                    </tr>
                </table>
            </fieldset>
            <br>
                        <fieldset>
                <legend><b>Formação Acadêmica</b></legend><br>
                <table cellpadding="1" cellspacing="0">
                    <tr>
                        <td width="270">
                            Curso</td>
                        <td nowrap="nowrap" width="270">
                            Instituição</td>
                        <td nowrap="nowrap">
                            Ano de Conclusão</td>
                    </tr>
                    <tr>
                        <td style="width: 100px">
                            <asp:TextBox ID="Curso" runat="server" Width="250px"></asp:TextBox>
                        </td>
                        <td style="width: 100px">
                            <asp:TextBox ID="Instituicao" runat="server" Width="250px"></asp:TextBox>
                        </td>
                        <td style="width: 100px">
                            <asp:TextBox ID="Conclusao" runat="server" Width="100px"></asp:TextBox>
                        </td>
                    </tr>
                </table>
                            <table cellpadding="1" cellspacing="0">
                                <tr>
                                    <td width="270">
                                        Cursos Extra Curriculares</td>
                                    <td nowrap="nowrap" width="270">
                                        Instituição</td>
                                    <td nowrap="nowrap">
                                        Ano de Conclusão</td>
                                </tr>
                                <tr>
                                    <td style="width: 100px">
                                        <asp:TextBox ID="ExtraCurso" runat="server" Width="250px"></asp:TextBox>
                                    </td>
                                    <td style="width: 100px">
                                        <asp:TextBox ID="ExtraInstituicao" runat="server" Width="250px"></asp:TextBox>
                                    </td>
                                    <td style="width: 100px">
                                        <asp:TextBox ID="ExtraConclusao" runat="server" Width="100px"></asp:TextBox>
                                    </td>
                                </tr>
                            </table>
            </fieldset><br>
                               <fieldset>
                <legend><b>Experiências Profissionais (03 Últimos)</b></legend><br>
                <table cellpadding="1" cellspacing="0">
                    <tr>
                        <td width="270">
                            Cargo</td>
                        <td nowrap="nowrap" width="270">
                            Empresa</td>
                        <td nowrap="nowrap">
                            Ano</td>
                    </tr>
                    <tr>
                        <td style="width: 100px">
                            <asp:TextBox ID="ExperienciaCargo" runat="server" Width="250px"></asp:TextBox>
                        </td>
                        <td style="width: 100px">
                            <asp:TextBox ID="ExperienciaEmpresa" runat="server" Width="250px"></asp:TextBox>
                        </td>
                        <td style="width: 100px">
                            <asp:TextBox ID="ExperienciaAno" runat="server" Width="100px"></asp:TextBox>
                        </td>
                    </tr>
                </table>
                                   <table cellpadding="1" cellspacing="0">
                                       <tr>
                                           <td width="270">
                                               Cargo</td>
                                           <td nowrap="nowrap" width="270">
                                               Empresa</td>
                                           <td nowrap="nowrap">
                                               Ano</td>
                                       </tr>
                                       <tr>
                                           <td style="width: 100px">
                                               <asp:TextBox ID="ExperienciaCargo0" runat="server" Width="250px"></asp:TextBox>
                                           </td>
                                           <td style="width: 100px">
                                               <asp:TextBox ID="ExperienciaEmpresa0" runat="server" Width="250px"></asp:TextBox>
                                           </td>
                                           <td style="width: 100px">
                                               <asp:TextBox ID="ExperienciaAno0" runat="server" Width="100px"></asp:TextBox>
                                           </td>
                                       </tr>
                                   </table>
                                   <table cellpadding="1" cellspacing="0">
                                       <tr>
                                           <td width="270">
                                               Cargo</td>
                                           <td nowrap="nowrap" width="270">
                                               Empresa</td>
                                           <td nowrap="nowrap">
                                               Ano</td>
                                       </tr>
                                       <tr>
                                           <td style="width: 100px">
                                               <asp:TextBox ID="ExperienciaCargo1" runat="server" Width="250px"></asp:TextBox>
                                           </td>
                                           <td style="width: 100px">
                                               <asp:TextBox ID="ExperienciaEmpresa1" runat="server" Width="250px"></asp:TextBox>
                                           </td>
                                           <td style="width: 100px">
                                               <asp:TextBox ID="ExperienciaAno1" runat="server" Width="100px"></asp:TextBox>
                                           </td>
                                       </tr>
                                   </table>
                                   <table cellpadding="1" cellspacing="0">
                                       <tr>
                                           <td nowrap="nowrap" width="150">
                                               Pretensão Salarial</td>
                                           <td nowrap="nowrap" width="270">
                                               Último Salário</td>
                                       </tr>
                                       <tr>
                                           <td style="width: 100px">
                                               <asp:TextBox ID="PretensaoSalarial" runat="server" Width="100px"></asp:TextBox>
                                           </td>
                                           <td style="width: 100px">
                                               <asp:TextBox ID="UltimoSalario" runat="server" Width="100px"></asp:TextBox>
                                           </td>
                                       </tr>
                                   </table>
            </fieldset>
               <br />
            <table   width="99%" >
                <tr>
                    <td align="right">
                        <asp:Button ID="cmdEnviar" runat="server" CssClass="btComum" Text="Enviar" />
                    </td>
                </tr>
            </table>
            <br />
         </td>
    </tr>
</table>
</asp:Panel>
<br />