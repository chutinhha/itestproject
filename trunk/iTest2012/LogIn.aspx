<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.Master" AutoEventWireup="true"
    CodeBehind="LogIn.aspx.cs" Inherits="iTest2012.LogIn" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
    <style type="text/css">
        .style6
        {
            font-size: x-large;
            color: #003300;
        }
        .style7
        {
            font-weight: 700;
            text-align: left;
            color: #003300;
        }
        
        .style8
        {
            color: #003300;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <div style="text-align: center; background-color: #FFFFFF;">
        <br />
        <asp:Image ID="Image_Login_Icon" runat="server" ImageUrl="~/image/icon/login-icon.jpg" />
        <br />
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<table align="center">
            <tr>
                <td colspan="2" style="font-weight: 700; text-align: center;" class="style6">
                    Đăng Nhập
                </td>
            </tr>
            <tr>
                <td class="style7" style="width: 200px">
                    Tên Đăng nhập
                </td>
                <td style="text-align: right; width: 250px;">
                    <asp:TextBox ID="txtUsername" runat="server" Width="200px" Style="background-color: White"
                        BackColor="White"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="style7" style="width: 100px">
                    Mật khẩu
                </td>
                <td style="text-align: right; width: 250px;">
                    <asp:TextBox ID="txtPass" runat="server" Width="200px" TextMode="Password" Style="background-color: White"
                        BackColor="White"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td colspan="2" style="text-align: center">
                    &nbsp;<asp:Button ID="btnLogin" runat="server" OnClick="btnLogin_Click" Style="text-align: center;
                        font-weight: 700; color: #FFFFFF; background-color: #003300;" Text="Đăng nhập" />
                    <br />
                    <span class="style8">
                        <asp:HyperLink ID="HyperLink1" runat="server">Quên mật khẩu !</asp:HyperLink>
                    </span>&nbsp;
                    <br />
                    <span class="style8">
                        <asp:HyperLink ID="hplCreateUser" runat="server" NavigateUrl="~/SignUp1.aspx">Đăng ký!</asp:HyperLink></span>
                </td>
            </tr>
        </table>
        <br />
        <br />
        <br />
    </div>
</asp:Content>
