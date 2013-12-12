<%@ Control Language="VB" AutoEventWireup="false" CodeFile="ucFormAutomovel.ascx.vb" Inherits="ucFormAutomovel" %>
<asp:Panel ID="pnlFormulario" runat="server">
    <table width="100%">
        <tr>
            <td width="14%" bgcolor="#F2F2F2">
                <img src="images/logo.jpg" width="166" height="67" /></td>
            <td width="86%" align="center" bgcolor="#F2F2F2"><span class="style1">Autom&oacute;vel - Cota&ccedil;&atilde;o</span></td>
        </tr>
    </table>

    <table width="100%">
        <tr>
            <td bgcolor="#F2F2F2">
                <table width="500" class="txttit">
                    <tr>
                        <td>
                            <asp:TextBox runat="server" type="checkbox" name="01_Seguro_novo" ID="Seguro_novo" />
                        </td>
                        <td class="txtnormal">Seguro Novo ( 1&#176; Ano, ainda n&atilde;o tenho seguro )</td>
                    </tr>
                </table>
            </td>
        </tr>
        <tr bgcolor="#F2F2F2">
            <td>
                <table width="760">
                    <tr class="txttit">
                        <td width="36">
                            <asp:TextBox runat="server" type="checkbox" name="02_Tenho_seguro" ID="Tenho_seguro" />
                        </td>
                        <td width="180">Atualmente tenho seguro na</td>
                        <td width="148">
                            <asp:DropDownList runat="server" size="1" name="03_Atual" ID="Atual">
                                <asp:ListItem></asp:ListItem>
                                <asp:ListItem Value="GF Seguros">AGF Seguros</asp:ListItem>
                                <asp:ListItem Value="Allianz Seguros">Allianz Seguros</asp:ListItem>
                                <asp:ListItem Value="Azul Seguros">Azul Seguros</asp:ListItem>
                                <asp:ListItem Value="Bradesco Seguros">Bradesco Seguros</asp:ListItem>
                                <asp:ListItem Value="Banco do Brasil">Banco do Brasil</asp:ListItem>
                                <asp:ListItem Value="HDI Seguros">HDI Seguros</asp:ListItem>
                                <asp:ListItem Value="Indiana Seguros">Indiana Seguros</asp:ListItem>
                                <asp:ListItem Value="Ita&uacute; Seguros">Ita&uacute; Seguros</asp:ListItem>
                                <asp:ListItem Value="Liberty Seguros">Liberty Seguros</asp:ListItem>
                                <asp:ListItem Value="Mafre Seguros">Mafre Seguros</asp:ListItem>
                                <asp:ListItem Value="Maritma Seguros">Maritma Seguros</asp:ListItem>
                                <asp:ListItem Value="Porto Seguro">Porto Seguro</asp:ListItem>
                                <asp:ListItem Value="Real Seguros">Real Seguros</asp:ListItem>
                                <asp:ListItem Value="Sulamerica">Sulamerica</asp:ListItem>
                                <asp:ListItem Value="Tokio Marine">Tokio Marine</asp:ListItem>
                                <asp:ListItem Value="Unibanco Seguros">Unibanco Seguros</asp:ListItem>
                                <asp:ListItem Value="Outros...">Outros...</asp:ListItem>
                            </asp:DropDownList>
                        </td>
                        <td width="73">com bonus</td>
                        <td width="62">
                            <asp:DropDownList runat="server" size="1" name="04_Bonus" ID="Bonus">
                                <asp:ListItem></asp:ListItem>
                                <asp:ListItem Value="00">00</asp:ListItem>
                                <asp:ListItem Value="01">01</asp:ListItem>
                                <asp:ListItem Value="02">02</asp:ListItem>
                                <asp:ListItem Value="03">03</asp:ListItem>
                                <asp:ListItem Value="04">04</asp:ListItem>
                                <asp:ListItem Value="05">05</asp:ListItem>
                                <asp:ListItem Value="06">06</asp:ListItem>
                                <asp:ListItem Value="07">07</asp:ListItem>
                                <asp:ListItem Value="08">08</asp:ListItem>
                                <asp:ListItem Value="09">09</asp:ListItem>
                                <asp:ListItem Value="10">10</asp:ListItem>
                                <asp:ListItem Value="11">11</asp:ListItem>
                                <asp:ListItem Value="12">12</asp:ListItem>
                                <asp:ListItem Value="13">13</asp:ListItem>
                                <asp:ListItem Value="14">14</asp:ListItem>
                                <asp:ListItem Value="15">15</asp:ListItem>
                                <asp:ListItem Value="16">16</asp:ListItem>
                                <asp:ListItem Value="17">17</asp:ListItem>
                                <asp:ListItem Value="18">18</asp:ListItem>
                                <asp:ListItem Value="19">19</asp:ListItem>
                                <asp:ListItem Value="20">20</asp:ListItem>
                            </asp:DropDownList>
                        </td>
                        <td width="90">e t&eacute;rmino em </td>
                        <td width="171">
                            <asp:TextBox runat="server" size="10" name="05_Termino" ID="Termino" />
                            </asp:TextBox></td>
                    </tr>
                </table>
            </td>
        </tr>
    </table>

    <table width="100%" class="txtnormal">
        <tr>
            <td width="27%">Principal Condutor:</td>
            <td width="20%">
                <asp:TextBox ID="Principal_condutor" runat="server"></asp:TextBox></td>
            <td width="7%">Estado Civil:</td>
            <td width="21%">
                <asp:DropDownList runat="server" size="1" name="06_Estado_civil" ID="Estado_civil">

                    <asp:ListItem></asp:ListItem>
                    <asp:ListItem Value="Solteiro">Solteiro</asp:ListItem>
                    <asp:ListItem Value="Casado">Casado</asp:ListItem>
                    <asp:ListItem Value="Separado">Separado</asp:ListItem>
                    <asp:ListItem Value="Viuvo">Vi&uacute;vo</asp:ListItem>
                    <asp:ListItem Value="Divorciado">Divorciado</asp:ListItem>
                    <asp:ListItem Value="Desquitado">Desquitado</asp:ListItem>
                    <asp:ListItem Value="Estavel">Uni&atilde;o Est&aacute;vel</asp:ListItem>
                    <asp:ListItem Value="Outros">Outros...</asp:ListItem>
                </asp:DropDownList></td>
            <td width="5%">Nascimento:</td>
            <td width="20%">
                <asp:TextBox runat="server" type="text" size="15" name="07_Nascimento" ID="Nascimento"></asp:TextBox></td>
        </tr>
        <tr>
            <td>Telefone:</td>
            <td>
                <asp:TextBox runat="server" type="text" name="08_Telefone" ID="Telefone"></asp:TextBox></td>
            <td>E-mail:</td>
            <td>
                <asp:TextBox runat="server" type="text" name="09_Email" ID="Email"></asp:TextBox></td>
            <td>CEP:</td>
            <td>
                <asp:TextBox runat="server" type="text" name="10_CEP" ID="CEP"></asp:TextBox></td>
        </tr>
        <tr>
            <td>Veiculo Completo:</td>
            <td>
                <asp:TextBox runat="server" name="11_Veiculo_completo" type="text" ID="Veiculo_completo" size="30"></asp:TextBox></td>
            <td colspan="4">
                <table width="350" class="txtnormal">
                    <tr>
                        <td width="20">
                            <asp:CheckBox ID="ZeroKM" runat="server" Text="" /></td>
                        <td width="30">0 KM</td>
                        <td width="16">&nbsp;</td>
                        <td width="40">Portas:</td>
                        <td width="57">
                            <asp:DropDownList runat="server" size="1" name="13_Portas" ID="Portas">
                                <asp:ListItem></asp:ListItem>
                                <asp:ListItem Value="2">2</asp:ListItem>
                                <asp:ListItem Value="4">4</asp:ListItem>

                            </asp:DropDownList></td>
                        <td width="81">Ano / Modelo:</td>
                        <td width="106">
                            <asp:TextBox runat="server" name="14_Ano_Modelo" type="text" ID="Ano_Modelo" size="10"></asp:TextBox></td>
                    </tr>
                </table>
            </td>
        </tr>
        <tr>
            <td>Combust&iacute;vel:</td>
            <td>
                <asp:DropDownList runat="server" size="1" name="15_Combustivel" ID="Combustivel">
                    <asp:ListItem></asp:ListItem>
                    <asp:ListItem Value="Gasolina">Gasolina</asp:ListItem>
                    <asp:ListItem Value="Alcool">Alcool</asp:ListItem>
                    <asp:ListItem Value="Diesel">Diesel</asp:ListItem>
                    <asp:ListItem Value="GNV">GNV</asp:ListItem>
                    <asp:ListItem Value="Flex">Flex</asp:ListItem>
                    <asp:ListItem Value="Gasolina/GNV">Gasolina/GNV</asp:ListItem>
                    <asp:ListItem Value="Alcool/GNV">Alcool/GNV</asp:ListItem>
                </asp:DropDownList></td>
            <td>Utiliza&ccedil;&atilde;o:</td>
            <td>
                <asp:DropDownList runat="server" size="1" name="16_Tipo_de_utilizacao" ID="Tipo_de_utilizacao">
                    <asp:ListItem></asp:ListItem>
                    <asp:ListItem Value="Passeio">Passeio</asp:ListItem>
                    <asp:ListItem Value="Taxi">Taxi</asp:ListItem>
                    <asp:ListItem Value="Transporte Diario">Transporte Di&aacute;rio</asp:ListItem>
                    <asp:ListItem Value="Visita_a_Cliente">Visita a Cliente</asp:ListItem>
                    <asp:ListItem Value="Outros">Outros...</asp:ListItem>
                </asp:DropDownList></td>
            <td>Anti-Furto:</td>
            <td>
                <asp:DropDownList runat="server" size="1" name="17_Antifurto" ID="Antifurto">
                    <asp:ListItem></asp:ListItem>
                    <asp:ListItem Value="Nenhum">Nenhum</asp:ListItem>
                    <asp:ListItem Value="Alarme Sonoro">Alarme Sonoro</asp:ListItem>
                    <asp:ListItem Value="Bloqueador">Bloqueador</asp:ListItem>
                    <asp:ListItem Value="Corta Combustivel">Corta Combust&iacute;vel</asp:ListItem>
                    <asp:ListItem Value="Identificacao Chassi">Identifica&ccedil;&atilde;o Chassi</asp:ListItem>
                    <asp:ListItem Value="Mult-Lock">Mult-Lock</asp:ListItem>
                    <asp:ListItem Value="Rastreador">Rastreador</asp:ListItem>
                    <asp:ListItem Value="Trava Carneiro">Trava Carneiro</asp:ListItem>
                    <asp:ListItem Value="Outros">Outros</asp:ListItem>

                </asp:DropDownList></td>
        </tr>
        <tr>
            <td>Profiss&atilde;o:</td>
            <td>
                <asp:TextBox runat="server" name="18_Profissao" type="text" ID="Profissao" size="30"></asp:TextBox></td>
            <td>KM / M&ecirc;s</td>
            <td>
                <asp:DropDownList runat="server" size="1" name="19_Km_Medio" ID="Km_Medio">
                    <asp:ListItem></asp:ListItem>
                    <asp:ListItem Value="Menos de 500km">Menos de 500km</asp:ListItem>
                    <asp:ListItem Value="Entre 500km e 1500km">Entre 500km e 1500km</asp:ListItem>
                    <asp:ListItem Value="Mais de 1500km">Mais de 1500km</asp:ListItem>
                </asp:DropDownList></td>
            <td>Resido:</td>
            <td>
                <asp:DropDownList runat="server" size="1" name="20_Resido_em">
                    <asp:ListItem></asp:ListItem>
                    <asp:ListItem Value="Casa">Casa</asp:ListItem>
                    <asp:ListItem Value="Casa Condominio Fechado">Casa Condom&iacute;nio Fechado</asp:ListItem>
                    <asp:ListItem Value="Apartamento com Porteiro">Apartamento com Porteiro</asp:ListItem>
                </asp:DropDownList></td>
        </tr>
        <tr>
            <td>Estuda:</td>
            <td>
                <asp:DropDownList runat="server" size="1" name="21_Estuda">
                    <asp:ListItem></asp:ListItem>
                    <asp:ListItem Value="Nao">N&atilde;o</asp:ListItem>
                    <asp:ListItem Value="Sim _ mas nao uso para ir ao estudo">Sim, mas n&atilde;o uso para ir ao estudo</asp:ListItem>
                    <asp:ListItem Value="Sim e nao deixo em estacionamento">Sim e n&atilde;o deixo em estacionamento</asp:ListItem>
                    <asp:ListItem Value="Sim e deixo no estacionamento">Sim e deixo no estacionamento</asp:ListItem>
                </asp:DropDownList></td>
            <td>Trabalha:</td>
            <td>
                <asp:DropDownList runat="server" size="1" name="22_Trabalha">
                    <asp:ListItem></asp:ListItem>
                    <asp:ListItem Value="Nao">N&atilde;o</asp:ListItem>
                    <asp:ListItem Value="Sim, mas nao uso para ir ao trabalho">Sim, mas n&atilde;o uso para ir ao trabalho</asp:ListItem>
                    <asp:ListItem Value="Sim e nao deixo em estacionamento">Sim e n&atilde;o deixo em estacionamento</asp:ListItem>
                    <asp:ListItem Value="Sim e deixo no estacionamento">Sim e deixo no estacionamento</asp:ListItem>
                </asp:DropDownList></td>
            <td>;</td>
            <td></td>
        </tr>
    </table>

    <table width="100%" style="border: 1px solid #333333" cellspacing="5" cellpadding="0" class="txtnormal">
        <tr>
            <td colspan="8" class="txttit">Informa&ccedil;&otilde;es importantes para obter descontos ap&oacute;s consulta das seguradoras no Serasa e Detran</td>
        </tr>
        <tr bgcolor="#F2F2F2">
            <td width="5%">Chassis:</td>
            <td width="26%">
                <asp:TextBox runat="server" name="23_Chassis" type="text" ID="Chassis" size="25"></asp:TextBox></td>
            <td width="3%">Placa:</td>
            <td width="14%">
                <asp:TextBox runat="server" name="24_Placa" type="text" ID="Placa" size="13"></asp:TextBox></td>
            <td width="3%">CPF:</td>
            <td width="21%">
                <asp:TextBox runat="server" name="25_CPF" type="text" ID="CPF" size="20"></asp:TextBox></td>
            <td width="6%">Conta no:</td>
            <td width="22%">
                <asp:DropDownList runat="server" size="1" name="26_Conta_no">
                    <asp:ListItem>Selecione aqui...</asp:ListItem>
                    <asp:ListItem Value="Banco do Brasil">Banco do Brasil</asp:ListItem>
                    <asp:ListItem Value="Bradesco">Bradesco</asp:ListItem>
                    <asp:ListItem Value="Caixa Economica">Caixa Economica</asp:ListItem>
                    <asp:ListItem Value="Citibank">Citibank</asp:ListItem>
                    <asp:ListItem Value="HSBC">HSBC</asp:ListItem>
                    <asp:ListItem Value="Itau">Ita&uacute;</asp:ListItem>
                    <asp:ListItem Value="Nossa Caixa">Nossa Caixa</asp:ListItem>
                    <asp:ListItem Value="Real">Real</asp:ListItem>
                    <asp:ListItem Value="Sudameris">Sudameris</asp:ListItem>
                    <asp:ListItem Value="Unibanco">Unibanco</asp:ListItem>
                    <asp:ListItem Value="Outros">Outros...</asp:ListItem>
                </asp:DropDownList></td>
        </tr>
    </table>

    <table width="100%" class="txtnormal">
        <tr>
            <td colspan="6" class="txttit">Garantias a serem contratadas</td>
        </tr>
        <tr>
            <td width="26%">Danos Morais a Terceiros ( DMT ):</td>
            <td width="20%">
                <asp:DropDownList runat="server" size="1" name="27_DCT" ID="DMT">
                    <asp:ListItem></asp:ListItem>
                    <asp:ListItem Value="R$ 25.000,00">R$ 25.000,00</asp:ListItem>
                    <asp:ListItem Value="R$ 30.000,00">R$ 30.000,00</asp:ListItem>
                    <asp:ListItem Value="R$ 35.000,00">R$ 35.000,00</asp:ListItem>
                    <asp:ListItem Value="R$ 40.000,00">R$ 40.000,00</asp:ListItem>
                    <asp:ListItem Value="R$ 50.000,00">R$ 50.000,00</asp:ListItem>
                    <asp:ListItem Value="R$ 60.000,00">R$ 60.000,00</asp:ListItem>
                    <asp:ListItem Value="R$ 70.000,00">R$ 70.000,00</asp:ListItem>
                    <asp:ListItem Value="R$ 80.000,00">R$ 80.000,00</asp:ListItem>
                    <asp:ListItem Value="R$ 90.000,00">R$ 90.000,00</asp:ListItem>
                    <asp:ListItem Value="R$ 100.000,00">R$ 100.000,00</asp:ListItem>
                    <asp:ListItem Value="R$ 120.000,00">R$ 120.000,00</asp:ListItem>
                    <asp:ListItem Value="R$ 140.000,00">R$ 140.000,00</asp:ListItem>
                    <asp:ListItem Value="R$ 160.000,00">R$ 160.000,00</asp:ListItem>
                    <asp:ListItem Value="R$ 180.000,00">R$ 180.000,00</asp:ListItem>
                    <asp:ListItem Value="R$ 200.000,00">R$ 200.000,00</asp:ListItem>
                    <asp:ListItem Value="Mais">Mais ...</asp:ListItem>
                </asp:DropDownList>
            </td>
            <td width="8%">Franquia:</td>
            <td width="20%">
                <asp:DropDownList runat="server" size="1" name="28_Franquia" ID="Franquia">
                    <asp:ListItem></asp:ListItem>
                    <asp:ListItem Value="Normal">Normal</asp:ListItem>
                    <asp:ListItem Value="Reduzida">Reduzida</asp:ListItem>
                    <asp:ListItem Value="Agravada">Agravada</asp:ListItem>
                </asp:DropDownList></td>
            <td width="4%">Fipe:</td>
            <td width="22%">
                <asp:DropDownList runat="server" size="1" name="29_FIPE" ID="FIPE">
                    <asp:ListItem></asp:ListItem>
                    <asp:ListItem Value="100%">100%</asp:ListItem>
                    <asp:ListItem Value="110%">110%</asp:ListItem>
                    <asp:ListItem Value="105%">105%</asp:ListItem>
                    <asp:ListItem Value="95%">95%</asp:ListItem>
                    <asp:ListItem Value="90%">90%</asp:ListItem>
                </asp:DropDownList></td>
        </tr>
        <tr>
            <td>Danos Corporativos a Terceiros ( DCT)</td>
            <td>
                <asp:DropDownList runat="server" size="1" name="30_DCT" ID="DCT">
                    <asp:ListItem></asp:ListItem>
                    <asp:ListItem Value="R$ 25.000,00">R$ 25.000,00</asp:ListItem>
                    <asp:ListItem Value="R$ 30.000,00">R$ 30.000,00</asp:ListItem>
                    <asp:ListItem Value="R$ 35.000,00">R$ 35.000,00</asp:ListItem>
                    <asp:ListItem Value="R$ 40.000,00">R$ 40.000,00</asp:ListItem>
                    <asp:ListItem Value="R$ 50.000,00">R$ 50.000,00</asp:ListItem>
                    <asp:ListItem Value="R$ 60.000,00">R$ 60.000,00</asp:ListItem>
                    <asp:ListItem Value="R$ 70.000,00">R$ 70.000,00</asp:ListItem>
                    <asp:ListItem Value="R$ 80.000,00">R$ 80.000,00</asp:ListItem>
                    <asp:ListItem Value="R$ 90.000,00">R$ 90.000,00</asp:ListItem>
                    <asp:ListItem Value="R$ 100.000,00">R$ 100.000,00</asp:ListItem>
                    <asp:ListItem Value="R$ 120.000,00">R$ 120.000,00</asp:ListItem>
                    <asp:ListItem Value="R$ 140.000,00">R$ 140.000,00</asp:ListItem>
                    <asp:ListItem Value="R$ 160.000,00">R$ 160.000,00</asp:ListItem>
                    <asp:ListItem Value="R$ 180.000,00">R$ 180.000,00</asp:ListItem>
                    <asp:ListItem Value="R$ 200.000,00">R$ 200.000,00</asp:ListItem>
                    <asp:ListItem Value="Mais">Mais ...</asp:ListItem>
                </asp:DropDownList>
            </td>
            <td colspan="4">
                <table width="200" class="txtnormal">
                    <tr>
                        <td width="84">Carro reserva:</td>
                        <td width="23">
                            <asp:TextBox runat="server" type="checkbox" name="31_Carro_reserva" ID="Carro_reserva"></asp:TextBox></td>
                        <td width="22"></td>
                        <td width="47">Vidros:</td>
                        <td width="24">
                            <asp:TextBox runat="server" type="checkbox" name="32_Vidros" ID="Vidros"></asp:TextBox></td>
                    </tr>
                </table>
            </td>
        </tr>
        <tr>
            <td>APP Morte acidental / Invalidez:</td>
            <td>
                <asp:DropDownList runat="server" size="1" name="33_APP" ID="APP">
                    <asp:ListItem></asp:ListItem>
                    <asp:ListItem Value="Sem APP">Sem APP</asp:ListItem>
                    <asp:ListItem Value="R$ 2.000,00">R$ 2.000,00</asp:ListItem>
                    <asp:ListItem Value="R$ 5.000,00">R$ 5.000,00</asp:ListItem>
                    <asp:ListItem Value="R$ 10.000,00">R$ 10.000,00</asp:ListItem>
                    <asp:ListItem Value="R$ 15.000,00">R$ 15.000,00</asp:ListItem>
                    <asp:ListItem Value="R$ 20.000,00">R$ 20.000,00</asp:ListItem>
                    <asp:ListItem Value="R$ 25.000,00">R$ 25.000,00</asp:ListItem>
                    <asp:ListItem Value="R$ 30.000,00">R$ 30.000,00</asp:ListItem>
                    <asp:ListItem Value="R$ 35.000,00">R$ 35.000,00</asp:ListItem>
                    <asp:ListItem Value="R$ 40.000,00">R$ 40.000,00</asp:ListItem>
                    <asp:ListItem Value="R$ 50.000,00">R$ 50.000,00</asp:ListItem>
                    <asp:ListItem Value="R$ 60.000,00">R$ 60.000,00</asp:ListItem>
                    <asp:ListItem Value="R$ 70.000,00">R$ 70.000,00</asp:ListItem>
                    <asp:ListItem Value="R$ 80.000,00">R$ 80.000,00</asp:ListItem>
                    <asp:ListItem Value="R$ 90.000,00">R$ 90.000,00</asp:ListItem>
                    <asp:ListItem Value="R$ 100.000,00">R$ 100.000,00</asp:ListItem>
                    <asp:ListItem Value="Mais ">Mais ... </asp:ListItem>
                </asp:DropDownList></td>
            <td colspan="4">
                <table width="220" class="txtnormal">
                    <tr>
                        <td width="86">Func.Publico:</td>
                        <td width="21">
                            <asp:TextBox runat="server" type="checkbox" name="34_Func_public" ID="Func_public"></asp:TextBox></td>
                        <td width="15">&nbsp;</td>
                        <td width="77">Aposentado:</td>
                        <td width="21">
                            <asp:TextBox runat="server" type="checkbox" name="35_Aposentado" ID="Aposentado"></asp:TextBox></td>
                    </tr>
                </table>
            </td>
        </tr>
    </table>

    <table width="100%" class="txtnormal">
        <tr>
            <td colspan="8" class="txttit">Demais condutores</td>
        </tr>
        <tr>
            <td width="4%">Nome:</td>
            <td width="21%">
                <asp:TextBox runat="server" name="36_Nome_condutor" type="text" ID="Nome_condutor" size="28"></asp:TextBox></td>
            <td width="8%" align="right">Nascimento:</td>
            <td width="18%">
                <asp:TextBox runat="server" name="37_Nascimento" type="text" ID="Nascimento_condutor" size="20"></asp:TextBox></td>
            <td width="7%">Habilitado:</td>
            <td width="11%">
                <asp:DropDownList runat="server" size="1" name="38_Habilitacao">
                    <asp:ListItem></asp:ListItem>
                    <asp:ListItem Value="2008">2008</asp:ListItem>
                    <asp:ListItem Value="2007">2007</asp:ListItem>
                    <asp:ListItem Value="2006">2006</asp:ListItem>
                    <asp:ListItem Value="2005">2005</asp:ListItem>
                    <asp:ListItem Value="2004">2004</asp:ListItem>
                    <asp:ListItem Value="2003">2003</asp:ListItem>
                    <asp:ListItem Value="2002">2002</asp:ListItem>
                    <asp:ListItem Value="2001">2001</asp:ListItem>
                    <asp:ListItem Value="2000">2000</asp:ListItem>
                    <asp:ListItem Value="1999">1999</asp:ListItem>
                    <asp:ListItem Value="1998">1998</asp:ListItem>
                    <asp:ListItem Value="1997">1997</asp:ListItem>
                    <asp:ListItem Value="1996">1996</asp:ListItem>
                    <asp:ListItem Value="1995">1995</asp:ListItem>
                    <asp:ListItem Value="1994">1994</asp:ListItem>
                    <asp:ListItem Value="1993">1993</asp:ListItem>
                    <asp:ListItem Value="1992">1992</asp:ListItem>
                    <asp:ListItem Value="1991">1991</asp:ListItem>
                    <asp:ListItem Value="1990">1990</asp:ListItem>
                    <asp:ListItem Value="1989">1989</asp:ListItem>
                    <asp:ListItem Value="1988">1988</asp:ListItem>
                    <asp:ListItem Value="1987">1987</asp:ListItem>
                    <asp:ListItem Value="1986">1986</asp:ListItem>
                    <asp:ListItem Value="1985">1985</asp:ListItem>
                    <asp:ListItem Value="1984">1984</asp:ListItem>
                    <asp:ListItem Value="1983">1983</asp:ListItem>
                    <asp:ListItem Value="1982">1982</asp:ListItem>
                    <asp:ListItem Value="1981">1981</asp:ListItem>
                    <asp:ListItem Value="1980">1980</asp:ListItem>
                    <asp:ListItem Value="1979">1979</asp:ListItem>
                    <asp:ListItem Value="1978">1978</asp:ListItem>
                    <asp:ListItem Value="1977">1977</asp:ListItem>
                    <asp:ListItem Value="1976">1976</asp:ListItem>
                    <asp:ListItem Value="1975">1975</asp:ListItem>
                    <asp:ListItem Value="1974">1974</asp:ListItem>
                    <asp:ListItem Value="1973">1973</asp:ListItem>
                    <asp:ListItem Value="1972">1972</asp:ListItem>
                    <asp:ListItem Value="1971">1971</asp:ListItem>
                    <asp:ListItem Value="1970">1970</asp:ListItem>
                    <asp:ListItem Value="1969">1969</asp:ListItem>
                    <asp:ListItem Value="1968">1968</asp:ListItem>
                    <asp:ListItem Value="1967">1967</asp:ListItem>
                    <asp:ListItem Value="1966">1966</asp:ListItem>
                    <asp:ListItem Value="1965">1965</asp:ListItem>
                    <asp:ListItem Value="1964">1964</asp:ListItem>
                    <asp:ListItem Value="1963">1963</asp:ListItem>
                    <asp:ListItem Value="1962">1962</asp:ListItem>
                    <asp:ListItem Value="1961">1961</asp:ListItem>
                    <asp:ListItem Value="1960">1960</asp:ListItem>
                    <asp:ListItem Value="1959">1959</asp:ListItem>
                    <asp:ListItem Value="1958">1958</asp:ListItem>
                    <asp:ListItem Value="1957">1957</asp:ListItem>
                    <asp:ListItem Value="1956">1956</asp:ListItem>
                    <asp:ListItem Value="1955">1955</asp:ListItem>
                    <asp:ListItem Value="1954">1954</asp:ListItem>
                    <asp:ListItem Value="1953">1953</asp:ListItem>
                    <asp:ListItem Value="1952">1952</asp:ListItem>
                    <asp:ListItem Value="1951">1951</asp:ListItem>
                    <asp:ListItem Value="1950">1950</asp:ListItem>
                    <asp:ListItem Value="1949">1949</asp:ListItem>
                    <asp:ListItem Value="1948">1948</asp:ListItem>
                    <asp:ListItem Value="1947">1947</asp:ListItem>
                    <asp:ListItem Value="1946">1946</asp:ListItem>
                    <asp:ListItem Value="1945">1945</asp:ListItem>
                    <asp:ListItem Value="1944">1944</asp:ListItem>
                    <asp:ListItem Value="1943">1943</asp:ListItem>
                    <asp:ListItem Value="1942">1942</asp:ListItem>
                    <asp:ListItem Value="1941">1941</asp:ListItem>
                    <asp:ListItem Value="1940">1940</asp:ListItem>
                </asp:DropDownList></td>
            <td width="8%">Parentesco:</td>
            <td width="23%">
                <asp:DropDownList runat="server" size="1" name="39_Parentesco" ID="Parentesco">
                    <asp:ListItem></asp:ListItem>
                    <asp:ListItem Value="Filho(a)">Filho(a)</asp:ListItem>
                    <asp:ListItem Value="Pais">Pais</asp:ListItem>
                    <asp:ListItem Value="Irmao(a)">Irm&atilde;o(&atilde; )</asp:ListItem>
                    <asp:ListItem Value="Empregado">Empregado</asp:ListItem>
                    <asp:ListItem Value="Outros">Outros...</asp:ListItem>
                </asp:DropDownList></td>
        </tr>
        <tr>
            <td>Nome:</td>
            <td>
                <asp:TextBox runat="server" name="40_Nome" type="text" ID="Nome_condutor02" size="28"></asp:TextBox></td>
            <td width="8%" align="right">Nascimento:&nbsp;</td>
            <td>
                <asp:TextBox runat="server" name="41_Nascimento" type="text" ID="Nascimento_condutor02" size="20"></asp:TextBox></td>
            <td width="7%">Habilitado:</td>
            <td>
                <asp:DropDownList runat="server" size="1" name="42_Habilitacao" ID="Habilitacao">
                    <asp:ListItem></asp:ListItem>
                    <asp:ListItem Value="2008">2008</asp:ListItem>
                    <asp:ListItem Value="2007">2007</asp:ListItem>
                    <asp:ListItem Value="2006">2006</asp:ListItem>
                    <asp:ListItem Value="2005">2005</asp:ListItem>
                    <asp:ListItem Value="2004">2004</asp:ListItem>
                    <asp:ListItem Value="2003">2003</asp:ListItem>
                    <asp:ListItem Value="2002">2002</asp:ListItem>
                    <asp:ListItem Value="2001">2001</asp:ListItem>
                    <asp:ListItem Value="2000">2000</asp:ListItem>
                    <asp:ListItem Value="1999">1999</asp:ListItem>
                    <asp:ListItem Value="1998">1998</asp:ListItem>
                    <asp:ListItem Value="1997">1997</asp:ListItem>
                    <asp:ListItem Value="1996">1996</asp:ListItem>
                    <asp:ListItem Value="1995">1995</asp:ListItem>
                    <asp:ListItem Value="1994">1994</asp:ListItem>
                    <asp:ListItem Value="1993">1993</asp:ListItem>
                    <asp:ListItem Value="1992">1992</asp:ListItem>
                    <asp:ListItem Value="1991">1991</asp:ListItem>
                    <asp:ListItem Value="1990">1990</asp:ListItem>
                    <asp:ListItem Value="1989">1989</asp:ListItem>
                    <asp:ListItem Value="1988">1988</asp:ListItem>
                    <asp:ListItem Value="1987">1987</asp:ListItem>
                    <asp:ListItem Value="1986">1986</asp:ListItem>
                    <asp:ListItem Value="1985">1985</asp:ListItem>
                    <asp:ListItem Value="1984">1984</asp:ListItem>
                    <asp:ListItem Value="1983">1983</asp:ListItem>
                    <asp:ListItem Value="1982">1982</asp:ListItem>
                    <asp:ListItem Value="1981">1981</asp:ListItem>
                    <asp:ListItem Value="1980">1980</asp:ListItem>
                    <asp:ListItem Value="1979">1979</asp:ListItem>
                    <asp:ListItem Value="1978">1978</asp:ListItem>
                    <asp:ListItem Value="1977">1977</asp:ListItem>
                    <asp:ListItem Value="1976">1976</asp:ListItem>
                    <asp:ListItem Value="1975">1975</asp:ListItem>
                    <asp:ListItem Value="1974">1974</asp:ListItem>
                    <asp:ListItem Value="1973">1973</asp:ListItem>
                    <asp:ListItem Value="1972">1972</asp:ListItem>
                    <asp:ListItem Value="1971">1971</asp:ListItem>
                    <asp:ListItem Value="1970">1970</asp:ListItem>
                    <asp:ListItem Value="1969">1969</asp:ListItem>
                    <asp:ListItem Value="1968">1968</asp:ListItem>
                    <asp:ListItem Value="1967">1967</asp:ListItem>
                    <asp:ListItem Value="1966">1966</asp:ListItem>
                    <asp:ListItem Value="1965">1965</asp:ListItem>
                    <asp:ListItem Value="1964">1964</asp:ListItem>
                    <asp:ListItem Value="1963">1963</asp:ListItem>
                    <asp:ListItem Value="1962">1962</asp:ListItem>
                    <asp:ListItem Value="1961">1961</asp:ListItem>
                    <asp:ListItem Value="1960">1960</asp:ListItem>
                    <asp:ListItem Value="1959">1959</asp:ListItem>
                    <asp:ListItem Value="1958">1958</asp:ListItem>
                    <asp:ListItem Value="1957">1957</asp:ListItem>
                    <asp:ListItem Value="1956">1956</asp:ListItem>
                    <asp:ListItem Value="1955">1955</asp:ListItem>
                    <asp:ListItem Value="1954">1954</asp:ListItem>
                    <asp:ListItem Value="1953">1953</asp:ListItem>
                    <asp:ListItem Value="1952">1952</asp:ListItem>
                    <asp:ListItem Value="1951">1951</asp:ListItem>
                    <asp:ListItem Value="1950">1950</asp:ListItem>
                    <asp:ListItem Value="1949">1949</asp:ListItem>
                    <asp:ListItem Value="1948">1948</asp:ListItem>
                    <asp:ListItem Value="1947">1947</asp:ListItem>
                    <asp:ListItem Value="1946">1946</asp:ListItem>
                    <asp:ListItem Value="1945">1945</asp:ListItem>
                    <asp:ListItem Value="1944">1944</asp:ListItem>
                    <asp:ListItem Value="1943">1943</asp:ListItem>
                    <asp:ListItem Value="1942">1942</asp:ListItem>
                    <asp:ListItem Value="1941">1941</asp:ListItem>
                    <asp:ListItem Value="1940">1940</asp:ListItem>
                </asp:DropDownList></td>
            <td width="8%">Parentesco:</td>
            <td>
                <asp:DropDownList runat="server" size="1" name="43_Parentesco" ID="Parentesco_condutor02">
                    <asp:ListItem></asp:ListItem>
                    <asp:ListItem Value="Filho(a)">Filho(a)</asp:ListItem>
                    <asp:ListItem Value="Pais">Pais</asp:ListItem>
                    <asp:ListItem Value="Irmao(a)">Irm&atilde;o(&atilde; )</asp:ListItem>
                    <asp:ListItem Value="Empregado">Empregado</asp:ListItem>
                    <asp:ListItem Value="Outros">Outros...</asp:ListItem>
                </asp:DropDownList></td>
        </tr>
    </table>
    <table width="100%" class="txtnormal">
        <tr>
            <td colspan="2">Observa&ccedil;&otilde;es</td>
        </tr>
        <tr>
            <td width="34%">
                <textarea name="44_Observacao" cols="70" rows="5" id="Observacao"></textarea></td>
            <td width="66%" align="left" valign="bottom">&nbsp;
     <asp:TextBox runat="server" type="submit" name="Submit" ID="Submit" value="Enviar" /></asp:TextBox></td>
        </tr>
    </table>
</asp:Panel>
