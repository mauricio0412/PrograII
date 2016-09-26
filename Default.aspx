<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Default.aspx.cs" Inherits="_Default" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
    <style type="text/css">
        .auto-style1 {
            width: 43%;
            height: 52px;
        }
        .auto-style2 {
            width: 242px;
            height: 4px;
        }
        .auto-style3 {
            width: 386px;
        }
        .auto-style4 {
            width: 235px;
        }
        .auto-style5 {
            height: 4px;
        }
        .auto-style6 {
            width: 51%;
        }
        .auto-style7 {
            width: 320px;
        }
        .auto-style8 {
            width: 135%;
        }
        .auto-style9 {
            width: 126px;
        }
        .auto-style10 {
            width: 126px;
            height: 26px;
        }
        .auto-style11 {
            height: 26px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <asp:Label ID="Label1" runat="server" Text="Buscar Cunta Bancaria"></asp:Label>
        <table class="auto-style1">
            <tr>
                <td class="auto-style2">
                    <asp:TextBox ID="TextBox1" runat="server" Width="220px"></asp:TextBox>
                    <br />
                </td>
                <td class="auto-style5">&nbsp;&nbsp;
                    <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="Buscar" />
                    <br />
                </td>
            </tr>
        </table>
        <table class="auto-style3">
            <tr>
                <td class="auto-style4">Agregar Cuenta Bancaria<br />
                    <table class="auto-style8">
                        <tr>
                            <td class="auto-style10">
                                <asp:Label ID="Label2" runat="server" Text="Numero de cuenta :"></asp:Label>
&nbsp;&nbsp; </td>
                            <td class="auto-style11">&nbsp;
                                <asp:TextBox ID="TextBox2" runat="server" OnTextChanged="TextBox2_TextChanged"></asp:TextBox>
                            </td>
                        </tr>
                        <tr>
                            <td class="auto-style9">
                                <asp:Label ID="Label3" runat="server" Text="numero de Banco :"></asp:Label>
                            </td>
                            <td>&nbsp;<asp:TextBox ID="TextBox3" runat="server"></asp:TextBox>
                            </td>
                        </tr>
                        <tr>
                            <td class="auto-style9">
                                <asp:Label ID="Label4" runat="server" Text="nombre del Banco :"></asp:Label>
                            </td>
                            <td>
                                <asp:TextBox ID="TextBox4" runat="server"></asp:TextBox>
                            </td>
                        </tr>
                        <tr>
                            <td class="auto-style9">
                                <asp:Label ID="Label5" runat="server" Text="Sucursal :"></asp:Label>
                            </td>
                            <td>
                                <asp:TextBox ID="TextBox5" runat="server"></asp:TextBox>
                            </td>
                        </tr>
                        <tr>
                            <td class="auto-style9">
                                <asp:Label ID="Label6" runat="server" Text="numero de la cuenta de usuario : "></asp:Label>
                            </td>
                            <td>
                                <asp:TextBox ID="TextBox6" runat="server"></asp:TextBox>
                            </td>
                        </tr>
                    </table>
                    <asp:Button ID="Button3" runat="server" OnClick="Button3_Click" Text="Agregar Cuenta Bancaria" Width="237px" />
                    <br />
                    <br />
                    <br />
                    <br />
                    <asp:Label ID="lblMensaje" runat="server" Text="lblMensaje"></asp:Label>
                </td>
            </tr>
            <tr>
                <td class="auto-style4">
                    <br />
                    Modificar Cuenta Bancaria<br />
                    <table class="auto-style8">
                        <tr>
                            <td class="auto-style10">
                                <asp:Label ID="Label7" runat="server" Text="Numero de cuenta :"></asp:Label>
&nbsp;&nbsp; </td>
                            <td class="auto-style11">&nbsp;
                                <asp:TextBox ID="TextBox7" runat="server" OnTextChanged="TextBox2_TextChanged"></asp:TextBox>
                            </td>
                        </tr>
                        <tr>
                            <td class="auto-style9">
                                <asp:Label ID="Label8" runat="server" Text="numero de Banco :"></asp:Label>
                            </td>
                            <td>&nbsp;<asp:TextBox ID="TextBox8" runat="server"></asp:TextBox>
                            </td>
                        </tr>
                        <tr>
                            <td class="auto-style9">
                                <asp:Label ID="Label9" runat="server" Text="nombre del Banco :"></asp:Label>
                            </td>
                            <td>
                                <asp:TextBox ID="TextBox9" runat="server"></asp:TextBox>
                            </td>
                        </tr>
                        <tr>
                            <td class="auto-style9">
                                <asp:Label ID="Label10" runat="server" Text="Sucursal :"></asp:Label>
                            </td>
                            <td>
                                <asp:TextBox ID="TextBox10" runat="server"></asp:TextBox>
                            </td>
                        </tr>
                        <tr>
                            <td class="auto-style9">
                                <asp:Label ID="Label11" runat="server" Text="numero de la cuenta de usuario : "></asp:Label>
                            </td>
                            <td>
                                <asp:TextBox ID="TextBox11" runat="server"></asp:TextBox>
                            </td>
                        </tr>
                    </table>
                    <asp:Button ID="Button2" runat="server" OnClick="Button2_Click" Text="modificar Cuenta Bancaria" Width="236px" />
                    <br />
                    <br />
                    <br />
                </td>
            </tr>
            <tr>
                <td class="auto-style4">
                    <br />
                    <asp:Label ID="Label12" runat="server" Text="numero de cuenta :"></asp:Label>
                    <asp:TextBox ID="TextBox12" runat="server"></asp:TextBox>
                    <br />
                    <br />
                    <asp:Button ID="Button4" runat="server" Text="Eliminar Cuenta Bancaria" Width="235px" />
                    <br />
                    <br />
                    <br />
                    <br />
                </td>
            </tr>
        </table>
&nbsp;<table class="auto-style6">
            <tr>
                <td class="auto-style7">
                    <asp:GridView ID="GridView1" runat="server" CellPadding="4" ForeColor="#333333" GridLines="None" Width="276px">
                        <AlternatingRowStyle BackColor="White" ForeColor="#284775" />
                        <EditRowStyle BackColor="#999999" />
                        <FooterStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
                        <HeaderStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
                        <PagerStyle BackColor="#284775" ForeColor="White" HorizontalAlign="Center" />
                        <RowStyle BackColor="#F7F6F3" ForeColor="#333333" />
                        <SelectedRowStyle BackColor="#E2DED6" Font-Bold="True" ForeColor="#333333" />
                        <SortedAscendingCellStyle BackColor="#E9E7E2" />
                        <SortedAscendingHeaderStyle BackColor="#506C8C" />
                        <SortedDescendingCellStyle BackColor="#FFFDF8" />
                        <SortedDescendingHeaderStyle BackColor="#6F8DAE" />
                    </asp:GridView>
                </td>
            </tr>
        </table>
        <br />
    <div>
    
        <br />
        <br />
        <br />
        <br />
    
    </div>
    </form>
</body>
</html>
